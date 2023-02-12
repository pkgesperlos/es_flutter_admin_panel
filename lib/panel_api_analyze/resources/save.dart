
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:async';

import 'dart:convert';


///shared preferences based class and use for save dummy_data
class Save<T> {

  setter() async {
    // SharedPreferences.setMockInitialValues({});
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    return sharedPreferences;
  }

  getter() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences;
  }





  Future<Null> setAuth(String value) async {
    var sharedPreferences = await setter();

    sharedPreferences.setString("auth", value);
  }

  Future<String> getAuth() async {
    var sharedPreferences = await getter();
    return sharedPreferences.getString("auth");
  }







}
