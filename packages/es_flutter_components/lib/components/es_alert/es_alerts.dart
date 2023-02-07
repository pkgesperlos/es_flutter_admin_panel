

import 'package:es_flutter_components/components/es_alert/toast/toast_alert.dart';
import 'package:es_flutter_components/components/es_dialog/es_awesome_dialog/es_alert_dialog.dart';

import 'package:es_flutter_components/resources/Constants/styles.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class EsAlerts {

  EsAlerts.error(BuildContext context, String message,
      {Decoration? decoration,
      bool? hasClose,
      Widget? closeIcon,
      Widget? icon,
      Widget? myContent,
      Color? textColor}){
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ToastAlert.show(
        context,
        decoration: decoration,
        hasClose: hasClose,
        closeIcon: closeIcon,
        icon: icon,
        myContent: myContent,
        text: message,
        textColor: textColor ?? StructureBuilder.styles!.t6Color,
        backgroundColor: Styles.dangerColorRegular,
      );
    });
  }

  EsAlerts.success(BuildContext context, String message,
      {Decoration? decoration,
      bool? hasClose,
      Widget? closeIcon,
      Widget? icon,
      Widget? myContent,
      Color? textColor})
  {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ToastAlert.show(context,
          decoration: decoration,
          hasClose: hasClose,
          closeIcon: closeIcon,
          icon: icon,
          myContent: myContent,
          text: message,
        textColor: textColor ?? StructureBuilder.styles!.t6Color,
        backgroundColor: StructureBuilder.styles!.successColor().successRegular,);
    });
  }

  EsAlerts.warning(BuildContext context, String message,
      {Decoration? decoration,
      bool? hasClose,
      Widget? closeIcon,
      Widget? icon,
      Widget? myContent,
      Color? textColor})
  {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

      ToastAlert.show(
        context,
        decoration: decoration,
        hasClose: hasClose,
        closeIcon: closeIcon,
        icon: icon,
        myContent: myContent,
        text: message,
        textColor: textColor ?? StructureBuilder.styles!.t6Color,
        backgroundColor: StructureBuilder.styles!.warningColor().warningRegular,
      );
    });
  }

  EsAlerts.information(BuildContext context, String message,
      {Decoration? decoration,
        bool? hasClose,
        Widget? closeIcon,
        Widget? icon,
        Widget? myContent,
        Color? textColor}) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ToastAlert.show(
        context,
        decoration: decoration,
        hasClose: hasClose,
        closeIcon: closeIcon,
        icon: icon,
        myContent: myContent,
        text: message,
        textColor: textColor ?? Styles.t6Color,
        backgroundColor: StructureBuilder.styles!.informationColor().informationRegular, );
    });
  }

  EsAlerts.confidence(BuildContext context,
      {String? title, String? content, Function? onConfirmPress}) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showDialog(
          context: context,
          builder: (context) => EsAlertDialog(
                title: title,
                content: content,
                onConfirmPress: onConfirmPress,
              ));
    });
  }
}
