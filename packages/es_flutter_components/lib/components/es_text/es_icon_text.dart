import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

//
// import '../resources/Constants/dims.dart';
// import '../resources/Constants/styles.dart';
import 'es_ordinary_height_text.dart';

class EsIconText extends StatelessWidget {
  String data;
  Widget? icon;
  TextAlign? align;
  double? size;
  Color? color;
  bool isBold;
  bool? overFlowTag;
  int? maxLine;

  EsIconText(this.data,
      {Key? key,
      this.icon,
      this.align,
      this.size,
      this.color,
      this.overFlowTag,
      this.maxLine,
      this.isBold = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDirectionRTL(BuildContext context) {
      return intl.Bidi.isRtlLanguage(
          Localizations.localeOf(context).languageCode);
    }

    bool _rtl = isDirectionRTL(context);

    return IntrinsicWidth(
      child: RichText(
        textAlign: align ?? TextAlign.start,
        text: TextSpan(
          children: [
            _rtl
                ? WidgetSpan(child: Container())
                : WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: icon ?? Container()),
            _rtl
                ? WidgetSpan(child: Container())
                : WidgetSpan(
                child: icon == null
                    ? Container()
                    : EsHSpacer(
                  big: true,
                )),
            WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: EsOrdinaryHeightText(
                  data,
                  size: size ?? StructureBuilder.dims!.h3FontSize,
                  color: color ?? StructureBuilder.styles!.textColor().primary,
                  isBold: isBold,
                  overFlowTag: overFlowTag??false,
                  maxLine: maxLine??2,
                )),
            _rtl
                ? WidgetSpan(
                child: icon == null
                    ? Container()
                    : EsHSpacer(
                  big: true,
                ))
                : WidgetSpan(child: Container()),
            _rtl
                ? WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: icon ?? Container())
                : WidgetSpan(child: Container()),
          ],
        ),
      ),
    );
  }
}
