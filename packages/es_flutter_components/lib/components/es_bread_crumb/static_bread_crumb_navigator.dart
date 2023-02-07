import 'package:es_flutter_components/components/es_bread_crumb/bread_crumb_navigator.dart';
import 'package:es_flutter_components/components/es_bread_crumb/simple_bread_buttom.dart';
import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_navigator_observer.dart';
import 'icon_bread_buttom.dart';
import 'shaped_bread_buttom.dart';

class StaticBreadCrumbNavigator extends StatelessWidget {
  String? currentRoute ;
  Widget? suffix;
  Widget? ltrSuffixIcon;
  Widget? rtlSuffixIcon;
  Color? backgroundColor;
  Color? textColor;
  double? padding;
  double? depth;
  final List<String> routNameList;

  BreadButtonType breadButtonType;

  StaticBreadCrumbNavigator(
      { this.currentRoute,
        required this.routNameList,
      this.breadButtonType = BreadButtonType.simple});

  StaticBreadCrumbNavigator.simple(
      { this.currentRoute,
      this.suffix,
        required this.routNameList,
      this.breadButtonType = BreadButtonType.simple});

  StaticBreadCrumbNavigator.icon(
      { this.currentRoute,
      this.suffix,
      required this.ltrSuffixIcon,
      required this.rtlSuffixIcon,
        required this.routNameList,
      this.breadButtonType = BreadButtonType.icon});

  StaticBreadCrumbNavigator.shaped(
      { this.currentRoute,
      this.suffix,
      this.backgroundColor,
      this.textColor,
      this.padding,
      this.depth,
        required this.routNameList,
      this.breadButtonType = BreadButtonType.shaped});



  @override
  Widget build(BuildContext context) {
    return Row(
      children: List<Widget>.from(routNameList
          .asMap()
          .map(
            (index, value) => MapEntry(
                index,
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, routNameList[index]);
                      // Navigator.popUntil(context, ModalRoute.withName( routNameList[index]));
                    },
                    child: breadButton(breadButtonType, index))),
          )
          .values),
      mainAxisSize: MainAxisSize.max,
    );
  }

  Widget breadButton(BreadButtonType type, int index) {
    if (breadButtonType == BreadButtonType.simple) {
      return SimpleBreadButton(
          index == 0
              ? currentRoute??"home"
              : routNameList[index] ?? "",
          suffix ??
              EsHeader(
                " / ",
                color: StructureBuilder.styles!.primaryDarkColor,
              ),
          index == 0);
    }
    if (breadButtonType == BreadButtonType.shaped) {
      return ShapedBreadButton(
        index == 0
            ? currentRoute??"home"
            : routNameList[index] ?? "",
        index == 0,
        backgroundColor: backgroundColor,
        textColor: textColor,
        depth: depth,
        padding: padding,
      );
    }
    if (breadButtonType == BreadButtonType.icon) {
      return IconBreadButton(
        index == 0
            ? currentRoute??"home"
            : routNameList[index] ?? "",
        index == 0,
        rtlSuffix: rtlSuffixIcon,
        ltrSuffix: ltrSuffixIcon,
      );
    } else {
      return SimpleBreadButton(
          index == 0
              ? currentRoute??"home"
              : routNameList[index] ?? "",
          suffix ??
              EsHeader(
                " / ",
                color: StructureBuilder.styles!.primaryDarkColor,
              ),
          index == 0);
    }
  }
}


