import 'dart:async';
import 'dart:convert';

import 'package:es_flutter_admin_panel/panel_api_analyze/resources/save.dart';
import 'package:es_flutter_admin_panel/panel_api_analyze/resources/status_checker.dart';
import 'package:es_flutter_components/resources/Constants/enums.dart';
import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' show Client, MultipartRequest, Response;
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

import '../constants/strings.dart';


class ApiProvider<T> {
  Client client = Client();


  Future fetchDataPOST(
      String apiAddress,
      Map<String, String> body,
      Function(String data) returnType,
      Function(Response)? fullResponse) async {
    Response response;
    debugPrint(Strings.apiUrl + apiAddress);
    debugPrint(body.toString());

    try {
      response = await client.post(Uri.parse(Strings.apiUrl + apiAddress),
          body: json.encode(body),
          headers: {
            "accept": "application/json",
            "content-type": "application/json"
          }).timeout(const Duration(seconds: Strings.requestTimeOut));
    } on TimeoutException catch (e) {
      debugPrint(e.toString());
      return returnType(getError(RequestError.timeOut));
    } on Exception catch (e) {
      //(e.toString());
      return returnType(getError(RequestError.noNet));
    }

    print(fullResponse != null);
    if (fullResponse != null) fullResponse(response);

    String data = utf8.decode(response.bodyBytes).toString();
    debugPrint(response.statusCode.toString());
    debugPrint(response.body);
    // stderr.writeln(data);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return returnType(data);
    } else {
      return Future(() => returnType(getError(RequestError.unknown)));
    }
  }

  Future fetchDataPOSTAuth(
      String apiAddress,
      Map<String, dynamic> body,
      Function(String data) returnType,
      Function(Response)? fullResponse) async {

    String authJwt = await Save().getAuth();
    debugPrint(Strings.apiUrlNeedAuth + apiAddress);
    Response response;

    try {


      response = await client.post(
          Uri.parse(Strings.apiUrlNeedAuth + apiAddress),
          body: json.encode(body),
          headers: {
            "accept": "application/json",
            "content-type": "application/json",
            "Authorization": "Bearer $authJwt",
          }).timeout(const Duration(seconds: Strings.requestTimeOut));
    } on TimeoutException catch (e) {
      debugPrint(e.toString());
      return returnType(getError(RequestError.timeOut));
    }
    on Exception catch (e) {
      //(e.toString());
      debugPrint(e.toString());
      return returnType(getError(RequestError.noNet));
    }

    if (fullResponse != null) fullResponse(response);


    print(fullResponse != null);

    String data = utf8.decode(response.bodyBytes).toString();

    debugPrint(response.statusCode.toString());
    debugPrint(response.body);
    // stderr.writeln(data);

    if (response.statusCode == 200 || response.statusCode == 201) {


      return returnType(data);
    } else if (response.statusCode == 407) {
      return Future(() => returnType(getError(RequestError.wrongApiToken)));
    } else if (response.statusCode == 401) {
      return Future(() => returnType(getError(RequestError.unauthorized)));
    } else {
      return Future(() => returnType(getError(RequestError.unknown)));
    }
  }

  Future<T> fetchDataGET(
      String apiAddress,
      @required T Function(dynamic) returnType,
      Function(Response) fullResponse) async {
    Response response;
    try {
      response = await client
          .get(
            Uri.parse(Strings.apiUrl + apiAddress),
          )
          .timeout(const Duration(seconds: 10));
    } on TimeoutException catch (e) {
      //(e.toString());
      return returnType("to");
    } on Exception catch (e) {
      //(e.toString());
      return returnType("nc");
    }

    if (fullResponse != null) fullResponse(response);

    if (response.statusCode == 200 || response.statusCode == 201) {
      String data =
          StatusChecker(json.decode(response.body)).getData().toString();

      if (StatusChecker(json.decode(response.body)).isOK()) {
        return returnType(data);
      } else {
        return returnType("error");
      }
    } else {
      return returnType("error");
    }
  }
}
