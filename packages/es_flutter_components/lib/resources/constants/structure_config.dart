


import 'dart:ui';

import 'package:es_flutter_components/resources/constants/config.dart';
import 'package:es_flutter_components/resources/constants/validations.dart';


class StructureConfig{

    final String fontFamily;
  // final String AppName;
  final String lorm;
  final String lormTitle;
  final String cedarMapToken;
  final int resendSmsTime;
  final int requestTimeOut;
  final String imageDir;
  final String moneyUnit;
  final String sampleWebImage;
  final String sampleAvatarImage;
  final String supportPhone;
  final String aboutUsUrl;
  final String host;
  final String siteUrl;
  final String baseFileUrl;
  final String baseImage;
  final String apiUrl;
  final String apiUrlNeedAuth;
  final String apiMapMarker;
  final String emptyFormValidationError;
  final String repeatFormValidationError;
  final String emptyTextField;
  final String notSelectedDropDown;
  StructureConfig(
      this.fontFamily,
      this.lorm,
      this.lormTitle,
      this.cedarMapToken,
      this.resendSmsTime,
      this.requestTimeOut,
      this.imageDir,
      this.moneyUnit,
      this.sampleWebImage,
      this.sampleAvatarImage,
      this.supportPhone,
      this.aboutUsUrl,
      this.host,
      this.siteUrl,
      this.baseFileUrl,
      this.baseImage,
      this.apiUrl,
      this.apiUrlNeedAuth,
      this.apiMapMarker,
      this.emptyFormValidationError,
      this.repeatFormValidationError,
      this.emptyTextField,
      this.notSelectedDropDown,
      );

    AdditionalConfigModel additional() {
      return AdditionalConfigModel();
    }

}




class InitialConfig extends StructureConfig{

  InitialConfig({

    fontFamily = Config.fontFamily,
    lorm = Config.lorm,
    lormTitle = Config.lormTitle,
    cedarMapToken = Config.cedarMapToken,
    resendSmsTime = Config.resendSmsTime,
    requestTimeOut = Config.requestTimeOut,
    imageDir = Config.imageDir,
    moneyUnit = Config.moneyUnit,
    sampleWebImage = Config.sampleWebImage,
    sampleAvatarImage = Config.sampleAvatarImage,
    supportPhone = Config.supportPhone,
    aboutUsUrl = Config.aboutUsUrl,
    host = Config.host,
    siteUrl = Config.siteUrl,
    baseFileUrl = Config.baseFileUrl,
    baseImage = Config.baseImage,
    apiUrl = Config.apiUrl,
    apiUrlNeedAuth = Config.apiUrlNeedAuth,
    apiMapMarker = Config.apiMapMarker,
    emptyFormValidationError = Config.emptyFormValidationError,
    repeatFormValidationError = Config.repeatFormValidationError,
    emptyTextField = Validations.emptyTextField,
    notSelectedDropDown = Validations.notSelectedDropDown

  }) : super(

    fontFamily,
    lorm,
    lormTitle,
    cedarMapToken,
    resendSmsTime,
    requestTimeOut,
    imageDir,
    moneyUnit,
    sampleWebImage,
    sampleAvatarImage,
    supportPhone,
    aboutUsUrl,
    host,
    siteUrl,
    baseFileUrl,
    baseImage,
    apiUrl,
    apiUrlNeedAuth,
    apiMapMarker,
    emptyFormValidationError,
    repeatFormValidationError,
    emptyTextField,
    notSelectedDropDown
  );

}



class AdditionalConfigModel{

  String primary2 = "";


}





