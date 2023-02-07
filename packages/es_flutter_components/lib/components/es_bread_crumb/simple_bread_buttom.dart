
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';


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

    return Row(
      children: [
        EsOrdinaryText(
          text ,
          color: StructureBuilder.styles!.primaryDarkColor,
        ),
        suffix??EsOrdinaryText(" / ",
          color: StructureBuilder.styles!.primaryDarkColor,

        )
      ],
    );
  }
}
