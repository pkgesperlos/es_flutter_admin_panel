import 'dart:ui';

import 'package:es_flutter_components/resources/constants/styles.dart';
import 'package:flutter/material.dart';

class StructureStyles {
  final Color primaryColor;
  final Color secondaryColor;
  final Color secondaryDarkColor;
  final Color secondaryLightColor;
  final Color onPrimaryColor;
  final Color onSecondaryColor;
  final Color specificColor;
  final Color primaryDarkColor;
  final Color primaryLightColor;
  final Color t1Color;
  final Color t2Color;
  final Color t3Color;
  final Color t4Color;
  final Color t5Color;
  final Color t6Color;
  final Color t7Color;
  final Color t8Color;
  final Color t9Color;
  final Color t10Color;
  final Color t11Color;
  final Color t12Color;

  StructureStyles(
    this.primaryColor,
    this.secondaryColor,
    this.specificColor,
    this.primaryDarkColor,
    this.primaryLightColor,
    this.secondaryDarkColor,
    this.secondaryLightColor,
    this.onPrimaryColor,
    this.onSecondaryColor,
    this.t1Color,
    this.t2Color,
    this.t3Color,
    this.t4Color,
    this.t5Color,
    this.t6Color,
    this.t7Color,
    this.t8Color,
    this.t9Color,
    this.t10Color,
    this.t11Color,
    this.t12Color,
  );

  AdditionalStyleModel additionalStyle() {
    return AdditionalStyleModel();
  }

  AlertColor alertColor() {
    return AlertColor();
  }

  ButtonColor buttonColor() {
    return ButtonColor();
  }

  TextColor textColor() {
    return TextColor();
  }

  SuccessColor successColor() {
    return SuccessColor();
  }

  WarningColor warningColor() {
    return WarningColor();
  }

  DangerColor dangerColor() {
    return DangerColor();
  }

  InformationColor informationColor() {
    return InformationColor();
  }

  DisableColor disableColor() {
    return DisableColor();
  }
  SocialNetworkColor socialNetworkColor() {
    return SocialNetworkColor();
  }
  DecorationColor decorationColor() {
    return DecorationColor();
  }
  IconColor iconColor() {
    return IconColor();
  }
}

class InitialStyle extends StructureStyles {
  InitialStyle({
    primaryColor = Styles.primaryColor,
    secondaryColor = Styles.secondaryColor,
    specificColor = Styles.specificColor,
    primaryDarkColor = Styles.primaryDarkColor,
    primaryLightColor = Styles.primaryLightColor,
    secondaryDarkColor= Styles.secondaryDarkColor,
    secondaryLightColor= Styles.secondaryLightColor,
    onPrimaryColor= Styles.onPrimaryColor,
    onSecondaryColor= Styles.onSecondaryColor,
    t1Color = Styles.t1Color,
    t2Color = Styles.t2Color,
    t3Color = Styles.t3Color,
    t4Color = Styles.t4Color,
    t5Color = Styles.t5Color,
    t6Color = Styles.t6Color,
    t7Color = Styles.t7Color,
    t8Color = Styles.t8Color,
    t9Color = Styles.t6Color,
    t10Color = Styles.t6Color,
    t11Color = Styles.t6Color,
    t12Color = Styles.t6Color,
  }) : super(
          primaryColor,
          secondaryColor,
          specificColor,
          primaryDarkColor,
          primaryLightColor,
          secondaryDarkColor,
          secondaryLightColor,
          onPrimaryColor,
          onSecondaryColor,
          t1Color,
          t2Color,
          t3Color,
          t4Color,
          t5Color,
          t6Color,
          t7Color,
          t8Color,
          t9Color,
          t10Color,
          t11Color,
          t12Color,
        );
}

class AdditionalStyleModel {
  Color primary2 = Colors.black;
}

class AlertColor {
  Color warning = Styles.warningColorLight;
  Color success = Styles.successColorLight;
  Color danger = Styles.dangerColorLight;
  Color information = Styles.informationColorLight;
}

class ButtonColor {

  Color primary = Styles.primaryDarkColor;
  Color secondary = Styles.secondaryColor;
  Color tritiary = Styles.specificColor;
  Color warning = Styles.warningColorRegular;
  Color success = Styles.successColorRegular;
  Color disable = Styles.disabledColorRegular;
  Color danger = Styles.dangerColorRegular;
  Color information = Styles.informationColorRegular;
}

class TextColor {
  Color primary = Styles.t1Color;
  Color secondary = Styles.t6Color;
  Color titleText = Styles.t3Color;
  Color secondaryTitleText = Styles.t6Color;
  Color warning = Styles.warningColorDark;
  Color success = Styles.successColorDark;
  Color disable = Styles.disabledColorDark;
  Color danger = Styles.dangerColorDark;
  Color information = Styles.informationColorDark;
}
class IconColor {
  Color primary = Styles.primaryDarkColor;

}

class DecorationColor{
  Color background = Styles.primaryColor;
  Color card = Styles.t7Color;
  Color shadow = Styles.t7Color;
  Color border = Styles.primaryDarkColor;
  Color hover = Styles.t2Color;
  Color buttonHover = Colors.white.withOpacity(.2);
  Color buttontextHover = Styles.primaryLightColor;
  Color textHover = Styles.primaryLightColor;
  Color icon = Styles.primaryDarkColor;
  Color divider = Styles.primaryDarkColor;
  Color menu = Styles.primaryColor;

}
class SocialNetworkColor {
  Color facebook = Styles.facebookColor;
  Color google = Styles.googleColor;
  Color whatsapp = Styles.whatsappColor;
  Color tweeter = Styles.tweeterColor;
  Color youtube = Styles.youtubeColor;
  Color linkedin = Styles.linkedinColor;
  Color instagram = Styles.instagramColor;
}

class WarningColor {
  Color warningRegular = Styles.warningColorRegular;
  Color warningLight = Styles.warningColorLight;
  Color warningDark = Styles.warningColorDark;
}

class InformationColor {
  Color informationRegular = Styles.informationColorRegular;
  Color informationLight = Styles.informationColorLight;
  Color informationDark = Styles.informationColorDark;
}

class DangerColor {
  Color dangerRegular = Styles.dangerColorRegular;
  Color dangerLight = Styles.dangerColorLight;
  Color dangerDark = Styles.dangerColorDark;}


class SuccessColor {
  Color successRegular = Styles.successColorRegular;
  Color successLight = Styles.successColorLight;
  Color successDark = Styles.successColorDark;
}

class DisableColor {
  Color disableRegular = Styles.disabledColorRegular;
  Color disableLight = Styles.disabledColorLight;
  Color disableDark = Styles.disabledColorDark;
}
