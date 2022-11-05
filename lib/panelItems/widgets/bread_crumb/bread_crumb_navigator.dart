import 'package:es_flutter_admin_panel/panelItems/widgets/bread_crumb/simple_bread_buttom.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../es_text/es_header.dart';
import 'app_navigator_observer.dart';
import 'icon_bread_buttom.dart';
import 'shaped_bread_buttom.dart';

class BreadCrumbNavigator extends StatelessWidget {
  String? currentRoute ;
  Widget? suffix;
  Widget? ltrSuffixIcon;
  Widget? rtlSuffixIcon;
  Color? backgroundColor;
  Color? textColor;
  double? padding;
  double? depth;
  final List<Route> currentRouteStack;

  BreadButtonType breadButtonType;

  BreadCrumbNavigator(
      { this.currentRoute,
      this.breadButtonType = BreadButtonType.simple})
      : this.currentRouteStack = routeStack.toList();

  BreadCrumbNavigator.simple(
      { this.currentRoute,
      this.suffix,
      this.breadButtonType = BreadButtonType.simple})
      : this.currentRouteStack = routeStack.toList();

  BreadCrumbNavigator.icon(
      { this.currentRoute,
      this.suffix,
      required this.ltrSuffixIcon,
      required this.rtlSuffixIcon,
      this.breadButtonType = BreadButtonType.icon})
      : this.currentRouteStack = routeStack.toList();

  BreadCrumbNavigator.shaped(
      { this.currentRoute,
      this.suffix,
      this.backgroundColor,
      this.textColor,
      this.padding,
      this.depth,
      this.breadButtonType = BreadButtonType.shaped})
      : this.currentRouteStack = routeStack.toList();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List<Widget>.from(currentRouteStack
          .asMap()
          .map(
            (index, value) => MapEntry(
                index,
                GestureDetector(
                    onTap: () {
                      Navigator.popUntil(context,
                          (route) => route == currentRouteStack[index]);
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
              : currentRouteStack[index].settings.name ?? "",
          suffix ??
              EsHeader(
                " / ",
                color: StructureBuilder.styles!.primaryColor,
              ),
          index == 0);
    }
    if (breadButtonType == BreadButtonType.shaped) {
      return ShapedBreadButton(
        index == 0
            ? currentRoute??"home"
            : currentRouteStack[index].settings.name ?? "",
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
            : currentRouteStack[index].settings.name ?? "",
        index == 0,
        rtlSuffix: rtlSuffixIcon,
        ltrSuffix: ltrSuffixIcon,
      );
    } else {
      return SimpleBreadButton(
          index == 0
              ? currentRoute??"home"
              : currentRouteStack[index].settings.name ?? "",
          suffix ??
              EsHeader(
                " / ",
                color: StructureBuilder.styles!.primaryColor,
              ),
          index == 0);
    }
  }
}

enum BreadButtonType {
  simple,
  shaped,
  icon,
}
