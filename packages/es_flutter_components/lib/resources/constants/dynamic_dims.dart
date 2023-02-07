import 'package:es_flutter_components/resources/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

class DynamicDims {

  static  double drawerWidth(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.6);
  }

  static double textFieldHight(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.15);
  }

  static double   h0Padding(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.10);
  }


  static  double h1Padding(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.04);
  }
  // static const double h1Padding =10.5;

  static double h2Padding(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.02);
  }

  static double h3Padding(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.01);
  }



  static double bordertickness(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.015);
  }

  static double h0BorderRadius(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.06);
  }

  static double h1BorderRadius(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.04);
  }

  static double h2BorderRadius(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.02);
  }

  static double h3BorderRadius(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.01);
  }

  static double h0IconSize(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.5);
  }

  static double h1IconSize(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.35);
  }

  static double h2IconSize(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.15);
  }

  static double h3IconSize(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.1);
  }


  static double h0FontSize(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.09);
  }

  static double h1FontSize(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.075);
  }

  static double h2FontSize(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.065);
  }

  static double h3FontSize(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.05);
  }

  static double h4FontSize(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.04);
  }

  static double h5FontSize(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.025);
  }

  static double h6FontSize(BuildContext context) {
    return responsiveDeviceConstructor(context, 0.02);
  }

  static Size displaySize(BuildContext context) {
    //debugPrint('Size = ' + MediaQuery.of(context).size.toString());
    return MediaQuery.of(context).size;
  }

  static double displayHeight(BuildContext context) {
    // debugPrint('Height = ' + displaySize(context).height.toString());
    return displaySize(context).height;
  }

  static double responsiveDeviceConstructor(BuildContext context, double sizeFactor) {

    if (ResponsiveLayot.isTinyLimit(context) ) {

      return 150 * sizeFactor * 0.62;
    } else if (ResponsiveLayot.isTinyHightLimit(context)) {

      return displaySize(context).width * sizeFactor * 0.6;
    } else if (ResponsiveLayot.isPhone(context)) {

      return 400 * sizeFactor * 0.58;
    } else if (ResponsiveLayot.isLargePhone(context)) {

      return 550 * sizeFactor * 0.58;
    } else if (ResponsiveLayot.isTablet(context)) {

      return 780 * sizeFactor * 0.3;
    } else if (ResponsiveLayot.isLargeTablet(context)) {

      return 950 * sizeFactor * 0.3;
    } else if (ResponsiveLayot.isComputer(context)) {

      return 1100 * sizeFactor * 0.28;
    }else if (ResponsiveLayot.isLargeComputer(context)) {

      return 1400 * sizeFactor * 0.16;
    } else {

      return 1500 * sizeFactor * 0.1;
    }
  }


/*  static double responsiveDeviceConstructor(
      BuildContext context, double sizeFactor) {
    if (ResponsiveLayot.isTinyLimit(context) ) {
      print("0");
      print(displaySize(context).width);
      return displaySize(context).width * sizeFactor * 0.62;
    } else if (ResponsiveLayot.isTinyHightLimit(context)) {
      print("1");
      print(displaySize(context).width);
      return displaySize(context).width * sizeFactor * 0.6;
    } else if (ResponsiveLayot.isPhone(context)) {
      print("2");
      print(displaySize(context).width);
      return displaySize(context).width * sizeFactor * 0.58;
    } else if (ResponsiveLayot.isLargePhone(context)) {
      print("3");
      print(displaySize(context).width);
      return displaySize(context).width * sizeFactor * 0.58;
    } else if (ResponsiveLayot.isTablet(context)) {
      print("4");
      print(displaySize(context).width);
      return displaySize(context).width * sizeFactor * 0.3;
    } else if (ResponsiveLayot.isLargeTablet(context)) {
      print("5");
      print(displaySize(context).width);
      return displaySize(context).width * sizeFactor * 0.3;
    } else if (ResponsiveLayot.isComputer(context)) {
      print("6");
      print(displaySize(context).width);
      return displaySize(context).width * sizeFactor * 0.28;
    }else if (ResponsiveLayot.isLargeComputer(context)) {
      print("7");
      print(displaySize(context).width);
      return displaySize(context).width * sizeFactor * 0.16;
    } else {
      print("8");
      print(displaySize(context).width);
      return displaySize(context).width * sizeFactor * 0.1;
    }
  }*/

  /*static double responsivePlathformConstructor(
      BuildContext context, double sizeFactor) {
    if (Platform.isAndroid || Platform.isIOS) {
      return displaySize(context).width * sizeFactor;
    } else if (kIsWeb ||
        Platform.isLinux ||
        Platform.isWindows ||
        Platform.isMacOS) {
      return displaySize(context).width * sizeFactor * 0.7;
    } else {
      return displaySize(context).width * sizeFactor * 0.7;
    }
  }*/
}

class DynamicButtonSize {

  static double header(BuildContext context) => DynamicDims.h1FontSize(context);

  static double title(BuildContext context) => DynamicDims.h2FontSize(context);

  static double ordinary(BuildContext context) => DynamicDims.h3FontSize(context);
}
