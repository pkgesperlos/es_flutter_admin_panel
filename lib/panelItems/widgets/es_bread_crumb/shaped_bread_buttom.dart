import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';

import '../es_text/es_ordinary_text.dart';
import 'package:intl/intl.dart' as intl;

class ShapedBreadButton extends StatelessWidget {
  final String text;
  final bool isFirstButton;
   double? depth;
   double? padding;
   Color? backgroundColor;
   Color? textColor;

  ShapedBreadButton(
      this.text,
      this.isFirstButton,
      {

    this.depth,
    this.padding,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {

    double _depth=depth??10;
    double _padding=padding??StructureBuilder.dims!.h1Padding;

    bool isDirectionRTL(BuildContext context) {
      return intl.Bidi.isRtlLanguage(
          Localizations.localeOf(context).languageCode);
    }

    bool _rtl = isDirectionRTL(context);

    return ClipPath(
      clipper: _TriangleClipper(!isFirstButton, rtl: _rtl,depth: _depth),
      child: Container(
        color:
        backgroundColor??StructureBuilder.styles!.primaryColor,
        child: Padding(
            padding: EdgeInsetsDirectional.only(
                start: isFirstButton ? _padding : _depth, end: _depth+_padding, top: _padding, bottom: _padding),
            child: EsOrdinaryText(
              text,
              color:
                textColor??StructureBuilder.styles!.primaryLightColor,
            )
        ),
      ),
    );
  }
}

class _TriangleClipper extends CustomClipper<Path> {


  final bool twoSideClip;
  final bool rtl;
  final double depth;

  _TriangleClipper(this.twoSideClip,{
    required this.rtl,
    required this.depth,
  });

  @override
  Path getClip(Size size) {
    final Path path = new Path();

    if(rtl){
      if (twoSideClip) {
        path.moveTo(size.width - depth, 0.0);
        path.lineTo(size.width, size.height / 2);
        path.lineTo(size.width - depth, size.height);
      } else {
        path.moveTo(size.width, size.height);
      }
      path.lineTo(0, size.height);
      path.lineTo( depth, size.height / 2);

      path.lineTo(0, 0);
      path.lineTo(size.width, 0);

      return path;

    }else{

      if (twoSideClip) {
        path.moveTo(depth, 0.0);
        path.lineTo(0.0, size.height / 2);
        path.lineTo(depth, size.height);
      } else {
        path.lineTo(0, size.height);
      }
      path.lineTo(size.width, size.height);
      path.lineTo(size.width - depth, size.height / 2);
      path.lineTo(size.width, 0);
      return path;
    }

  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}