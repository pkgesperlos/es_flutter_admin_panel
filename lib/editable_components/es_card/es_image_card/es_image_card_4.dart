import 'package:es_flutter_component/components/es_button/es_button.dart';
import 'package:es_flutter_component/components/es_text/es_label_text.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';
import 'package:es_flutter_component/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../main.dart';

class EsImageCard4 extends StatelessWidget {
  String? imagePath;
  String? content;
  String? buttonText;
   EsImageCard4({Key? key,
   this.imagePath,
   this.content,
   this.buttonText,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(
        vertical: StructureBuilder.dims!.h1Padding,
      ),
      decoration: BoxDecoration(
          color: MyStyle.cardColor,
          borderRadius: BorderRadius.all(Radius.circular(
              StructureBuilder.dims!.h0BorderRadius))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              imagePath??"assets/images/img2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: StructureBuilder.dims!.h0Padding,
              vertical: StructureBuilder.dims!.h0Padding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EsVSpacer(
                  big: true,
                  factor: 2,
                ),
                EsOrdinaryText(
                  content??StructureBuilder.configs!.lorm,
                  align: TextAlign.justify,
                  overFlowTag: true,
                  maxLine: 3,
                ),
                EsVSpacer(
                  big: true,
                  factor: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    EsButton(
                      text: buttonText??AppLocalizations.of(context)!.button,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
