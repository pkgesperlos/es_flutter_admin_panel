import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:es_flutter_component/resources/Constants/styles.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../language_change_provider.dart';
import 'package:intl/intl.dart' as intl;

class EsDottedText extends StatelessWidget {
  String data;
  TextAlign? align;
  double? size;
  Color? color;
  bool isBold;

  EsDottedText(this.data,
      {Key? key, this.align, this.size, this.color, this.isBold = false})
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
                    child: Icon(
                      Icons.circle,
                      size: size ?? StructureBuilder.dims!.h3FontSize / 2,
                      color:
                          color ?? StructureBuilder.styles!.textColor().primary,
                    )),
            _rtl
                ? WidgetSpan(child: Container())
                : WidgetSpan(
                    child: EsHSpacer(
                    big: true,
                  )),
            WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: EsOrdinaryText(
                  data,
                  size: size ?? StructureBuilder.dims!.h2FontSize,
                  color: color ?? StructureBuilder.styles!.textColor().primary,
                  isBold: isBold,
                )),
            _rtl
                ? WidgetSpan(
                    child: EsHSpacer(
                    big: true,
                  ))
                : WidgetSpan(child: Container()),
            _rtl
                ? WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Icon(
                      Icons.circle,
                      size: size ?? StructureBuilder.dims!.h3FontSize / 2,
                      color:
                          color ?? StructureBuilder.styles!.textColor().primary,
                    ))
                : WidgetSpan(child: Container())
          ],
        ),
      ),
    );
  }
}
