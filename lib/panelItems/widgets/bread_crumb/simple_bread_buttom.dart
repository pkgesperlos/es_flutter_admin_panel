
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';

import 'package:intl/intl.dart' as intl;

class SimpleBreadButton extends StatelessWidget {
  final String text;
   Widget? suffix;
  final bool isFirstButton;

  SimpleBreadButton(
      this.text,
      this.suffix,
      this.isFirstButton);

  @override
  Widget build(BuildContext context) {
    bool isDirectionRTL(BuildContext context) {
      return intl.Bidi.isRtlLanguage(
          Localizations.localeOf(context).languageCode);
    }

    bool _rtl = isDirectionRTL(context);
    return Row(
      children: [
        EsOrdinaryText(
          text ,
          color: StructureBuilder.styles!.primaryColor,
        ),
        suffix??EsOrdinaryText(" / ",
          color: StructureBuilder.styles!.primaryColor,

        )
      ],
    );
  }
}
