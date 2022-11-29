import 'package:es_flutter_admin_panel/panelItems/widgets/es_text/es_header.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart' as intl;

class EsPageIndicator extends StatelessWidget {
  final PageController controller;
  final int totalPage;
  final Color? normalColor;
  final Color? selectedColor;
  final double? size;
  final double? margin;
  Color? textColor;
  bool hasButton;

  EsPageIndicator({
    required this.controller,
    required this.totalPage,
    this.normalColor,
    this.selectedColor,
    this.size,
    this.margin,
    this.hasButton=false,
  }) : assert(controller != null);



  @override
  Widget build(BuildContext context) {
    bool isDirectionRTL(BuildContext context) {
      return intl.Bidi.isRtlLanguage(
          Localizations.localeOf(context).languageCode);
    }

    bool _rtl = isDirectionRTL(context);

    return Row(
      children: [
        hasButton?_nextJumpIndicator(_rtl):Container(),

        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: new List<Widget>.generate(totalPage, (int index) {
            return _simpleBuildIndicator( index);
          }),

        ),
        hasButton?_preJumpIndicator(_rtl):Container(),
      ],
    );
  }

  Widget _nextJumpIndicator( bool rtl) {
    double _size = size ?? StructureBuilder.dims!.h1Padding;

    Color _normalColor = normalColor ?? StructureBuilder.styles!.primaryColor;

    return InkWell(
      child: EsSvgIcon(

        rtl? "packages/es_flutter_component/assets/svgs/CaretRight.svg"
            :"packages/es_flutter_component/assets/svgs/CaretLeft.svg",

        color: _normalColor,
        size: _size *3,
      ),
      onTap: () {

        controller.previousPage(
            duration: Duration(milliseconds: 500), curve: Curves.ease);
      },
    );
  }

  Widget _preJumpIndicator( bool rtl) {
    double _size = size ?? StructureBuilder.dims!.h1Padding;
    Color _normalColor = normalColor ?? StructureBuilder.styles!.primaryColor;

    return InkWell(
      child: EsSvgIcon(
        rtl? "packages/es_flutter_component/assets/svgs/CaretLeft.svg":
        "packages/es_flutter_component/assets/svgs/CaretRight.svg",
        color: _normalColor,
        size: _size*3 ,
      ),
      onTap: () {
        // _disabledIndexes.contains(index+1) ? null:
        controller.nextPage(
            duration: Duration(milliseconds: 500), curve: Curves.ease);
      },
    );
  }

  Widget _simpleBuildIndicator(int index,) {
    double _size = size ?? StructureBuilder.dims!.h1Padding;
    double _margin = _size*0.5;
    Color _normalColor = normalColor ?? StructureBuilder.styles!.primaryColor;
    Color _selectedColor =
        selectedColor ?? StructureBuilder.styles!.tritiaryColor;

    bool isCurrentPageSelected = index ==
        (controller.page != null ? controller.page!.round() % totalPage : 0);

    return InkWell(
      child: new Container(
        height: _size,
        width: _size + _margin,
        child: new Center(
          child: new Material(
            child: new Container(
              decoration: BoxDecoration(
                color: isCurrentPageSelected ? _selectedColor : _normalColor,
                borderRadius: BorderRadius.all(Radius.circular(_size)),
              ),
              width: isCurrentPageSelected ? _size * 2.5 : _size,
              height: _size,
            ),
          ),
        ),
      ),
      onTap: () {
        controller.jumpToPage(index);
      },
    );
  }




}

