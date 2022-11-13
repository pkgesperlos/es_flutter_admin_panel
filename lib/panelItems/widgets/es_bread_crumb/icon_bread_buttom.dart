import 'package:es_flutter_admin_panel/panelItems/widgets/es_text/es_header.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';

import 'package:intl/intl.dart' as intl;

import '../es_text/es_ordinary_text.dart';

class IconBreadButton extends StatelessWidget {
  final String text;
   Widget? ltrSuffix;
   Widget? rtlSuffix;
  final bool isFirstButton;

  IconBreadButton(
      this.text,
  this.isFirstButton,
  { this.ltrSuffix,
  this.rtlSuffix,}
      );

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
        _rtl
            ?rtlSuffix??EsOrdinaryText(" / ",
          color: StructureBuilder.styles!.primaryColor,
        )
            :ltrSuffix??EsOrdinaryText(" / ",
          color: StructureBuilder.styles!.primaryColor,
        )
      ],
    );
  }
}
