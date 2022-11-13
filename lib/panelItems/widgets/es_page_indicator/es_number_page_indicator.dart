import 'package:es_flutter_admin_panel/panelItems/widgets/es_text/es_header.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart' as intl;

// dependencies:
// smooth_page_indicator: ^1.0.0+2

class EsNumberPageIndicator extends StatelessWidget {
  /// PageView Controller
  final PageController controller;
  final int totalPage;
  final Color? normalColor;
  final Color? selectedColor;
  final Color? disabledColor;
   Color? fillColor;
  final double? size;
  final double? margin;
  Color? textColor;
  bool hasButton;
  JumperIndicatorType? jumperIndicatorType;




  EsNumberPageIndicator.simple({
    required this.controller,
    required this.totalPage,
    this.normalColor,
    this.selectedColor,
    this.disabledColor,
    this.textColor,
    this.fillColor,
    this.size,
    this.margin,
    this.hasButton=false,
    this.jumperIndicatorType=JumperIndicatorType.simple,
  }) : assert(controller != null);

  EsNumberPageIndicator.limited({
    required this.controller,
    required this.totalPage,
    this.normalColor,
    this.selectedColor,
    this.disabledColor,
    this.textColor,
    this.fillColor,
    this.size,
    this.margin,
    this.hasButton=true,
    this.jumperIndicatorType=JumperIndicatorType.limited,
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
        jumperIndicatorType==JumperIndicatorType.simple?
        _indicatorBuilderSimple():Container(),
        jumperIndicatorType==JumperIndicatorType.limited?
        _indicatorBuilderLimited():Container(),
        hasButton?_preJumpIndicator(_rtl):Container(),


      ],
    );
  }


Widget _indicatorBuilderSimple(){
 return Wrap(
    // mainAxisAlignment: MainAxisAlignment.center,
    children: new List<Widget>.generate(totalPage, (int index) {
      return _simpleBuildIndicator(index);
    }),
  );
}

Widget _indicatorBuilderLimited(

    ){

int _index=(controller.page != null ? controller.page!.round() % totalPage : 0);
 return Row(
   children: [
     _index==totalPage-1?_simpleBuildIndicator(_index-2):Container(),
     _index==0?Container():_simpleBuildIndicator(_index-1),
     _simpleBuildIndicator(_index),
     _index==totalPage-1?Container():_simpleBuildIndicator(_index+1),
     _index==0?_simpleBuildIndicator(_index+2):Container(),

   ],
 );

}
  Widget _nextJumpIndicator( bool rtl) {
    double _size = size ?? StructureBuilder.dims!.h0Padding * 1.5;
    double _margin = _size * 1.2;
    Color _normalColor = normalColor ?? StructureBuilder.styles!.primaryColor;
    Color _fillColor = fillColor ?? StructureBuilder.styles!.primaryLightColor;
    Color _textColor = textColor ?? StructureBuilder.styles!.primaryColor;

    return InkWell(
      child: new Container(
        height: _margin,
        width: _margin,
        child: new Center(
          child: new Material(
            child: new Container(
                decoration: BoxDecoration(
                    color: _fillColor,
                    borderRadius: BorderRadius.all(Radius.circular(_size)),
                    border: Border.all(
                        color:
                        // index == 1 ? _disabledColor :
                        _normalColor,
                        width: 1)),
                width: _size,
                height: _size,
                child: Center(
                  child: EsSvgIcon(

                   rtl? "assets/svgs/CaretRight.svg"
                    :"assets/svgs/CaretLeft.svg",

                    color: _textColor,
                    size: _size / 2,
                  ),
                )),
          ),
        ),
      ),
      onTap: () {

        controller.previousPage(
            duration: Duration(milliseconds: 500), curve: Curves.ease);
      },
    );
  }

  Widget _preJumpIndicator( bool rtl) {
    double _size = size ?? StructureBuilder.dims!.h0Padding * 1.5;
    double _margin = _size * .2;
    Color _normalColor = normalColor ?? StructureBuilder.styles!.primaryColor;
    Color _textColor = textColor ?? StructureBuilder.styles!.primaryColor;
    Color _fillColor = fillColor ?? StructureBuilder.styles!.primaryLightColor;

    return InkWell(
      child: new Container(
        height: _size+_margin,
        width:_size+ _margin,
        child: new Center(
          child: new Material(
            child: new Container(
                decoration: BoxDecoration(
                    color: _fillColor,
                    borderRadius: BorderRadius.all(Radius.circular(_size)),
                    border: Border.all(
                        color: _normalColor,
                        width: 1.2)),
                width: _size,
                height: _size,
                child: Center(
                  child: EsSvgIcon(
                   rtl? "assets/svgs/CaretLeft.svg":
                   "assets/svgs/CaretRight.svg",
                    color:
                    // index == totalPage-1 ? _disabledColor :
                    _textColor,
                    size: _size / 2,
                  ),
                )),
          ),
        ),
      ),
      onTap: () {
        // _disabledIndexes.contains(index+1) ? null:
        controller.nextPage(
            duration: Duration(milliseconds: 500), curve: Curves.ease);
      },
    );
  }

  Widget _simpleBuildIndicator(int index,) {
    double _size = size ?? StructureBuilder.dims!.h0Padding * 1.5;
    double _margin = _size * 1.2;
    Color _normalColor = normalColor ?? StructureBuilder.styles!.primaryColor;
    Color _textColor = textColor ?? StructureBuilder.styles!.primaryColor;
    Color _selectedColor =
        selectedColor ?? StructureBuilder.styles!.tritiaryColor;
    Color _fillColor = fillColor ?? StructureBuilder.styles!.primaryLightColor;
    bool isCurrentPageSelected = index ==
        (controller.page != null ? controller.page!.round() % totalPage : 0);

    return InkWell(
      child: new Container(
        height: _margin,
        width: _margin,
        child: new Center(
          child: new Material(
            child: new Container(
                decoration: BoxDecoration(
                    color: _fillColor,
                    borderRadius: BorderRadius.all(Radius.circular(_size)),
                    border: Border.all(
                        color:  isCurrentPageSelected
                            ? _selectedColor
                            : _normalColor,
                        width: 1.2)),
                width: _size,
                height: _size,
                child: Center(
                  child: EsHeader(
                    "${index + 1}",
                    color: _textColor,
                    size: _size/2,
                  ),
                )),
          ),
        ),
      ),
      onTap: () {
        controller.jumpToPage(index);
      },
    );
  }

}

enum JumperIndicatorType{
  simple,limited
}
