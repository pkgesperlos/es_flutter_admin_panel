import 'package:flutter/material.dart';

import 'dims.dart';

class Styles {


  static BoxDecoration cardBoxDecoration= BoxDecoration(
    color: Colors.transparent,
    borderRadius: BorderRadius.all(
      Radius.circular(Dims.h0Padding),
    ),
    boxShadow: [Styles.CardBoxShadow],
  );

  static BoxDecoration dialogBoxDecoration=BoxDecoration(
  color: Styles.t6Color,
  borderRadius: BorderRadius.all(
  Radius.circular(Dims.h1BorderRadius),
  ),
  );

  static const BoxShadow CardBoxShadow = BoxShadow(
      color: t4Color, blurRadius: 3, spreadRadius: 2, offset: Offset(0, 1));

  static const BoxShadow bottomNavigationShadow = BoxShadow(
      color: Color(0xffDCDCDC),
      blurRadius: 3,
      spreadRadius: 3,
      offset: Offset(0, 0));

  static TextStyle inputStyle=
  TextStyle(color: primaryColor,
      fontSize: Dims.h2FontSize);


  static const Color primaryColor = Color(0xffF0F4F9);
  static const Color primaryDarkColor = Color(0xff092640);
  static const Color primaryLightColor = Color(0xFFffffff);

  static const Color secondaryColor = Color(0xFFA1A1A1);
  static const Color secondaryDarkColor = Color(0xff737373);
  static const Color secondaryLightColor = Color(0xffc9c7c7);

  static const Color specificColor = Color(0xFF4238C9);
  static const Color onPrimaryColor = Color(0xff092640);
  static const Color onSecondaryColor = Color(0xFFffffff);

  static const Color t1Color = Colors.black;
  static const Color t2Color = Colors.black38;
  static const Color t3Color = Color(0xFFA1A1A1);
  static const Color t4Color = Color(0xffc9c7c7);
  static const Color t5Color = Color(0xFFFCFCFC);
  static const Color t6Color = Color(0xFFffffff);
  static const Color t7Color = Color(0xffF2F2F2);
  static const Color t8Color = Color(0xffC6CDD7);

  static const Color warningColorRegular = Color(0xFFFF8300);
  static const Color warningColorLight = Color(0xFFFFE6CC);
  static const Color warningColorDark = Color(0xFFBB4504);

  static const Color successColorRegular = Color(0xFF91C716);
  static const Color successColorLight = Color(0xFFCEF5EA);
  static const Color successColorDark = Color(0xFF246434);

  static const Color disabledColorRegular = Color(0xFF8C8E93);
  static const Color disabledColorLight = Color(0xFFD4D5D8);
  static const Color disabledColorDark = Color(0xFF484747);

  static const Color dangerColorRegular = Color(0xFFD32B2B);
  static const Color dangerColorLight = Color(0xFFF8D7DA);
  static const Color dangerColorDark = Color(0xFF5E1313);

  static const Color informationColorRegular = Color(0xFF0F5095);
  static const Color informationColorLight = Color(0xFFE1EFFF);
  static const Color informationColorDark = Color(0xFF032465);

  static const Color facebookColor = Color(0xFF3B5998);
  static const Color googleColor = Color(0xFFDB4437);
  static const Color instagramColor = Color(0xFF517FA4);
  static const Color youtubeColor = Color(0xFFB31217);
  static const Color linkedinColor = Color(0xFF0077B5);
  static const Color tweeterColor = Color(0xFF55ACEE);
  static const Color whatsappColor = Color(0xFF34B521);
///
}




class ColorAsset{

  static Color warning = Styles.warningColorRegular;
  static Color success = Styles.successColorRegular;
  static Color dark = Styles.primaryDarkColor;
  static Color disable = Styles.disabledColorRegular;
  static Color danger = Styles.dangerColorRegular;




/*  static  MaterialColor primary = MaterialColor(
    Styles.primaryColor.value,
    <int, Color>{
      100: Colors.black.withOpacity(.1),
      200: Color(Styles.primaryColor.value),
    },
  );*/


}
