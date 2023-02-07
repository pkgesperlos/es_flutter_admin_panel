import 'package:es_flutter_admin_panel/main.dart';
import 'package:es_flutter_components/components/es_text/es_label_text.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EsImageCard2 extends StatelessWidget {
  String? imagePath;
  String? title;
  String? content;
  String? lastUpdateDate;
   EsImageCard2({Key? key,
   this.imagePath,
   this.title,
   this.content,
   this.lastUpdateDate,
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
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: StructureBuilder.dims!.h0Padding,
              vertical: StructureBuilder.dims!.h0Padding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EsTitle(
                  title??AppLocalizations.of(context)!.title,
                ),
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
                EsLabelText(
                  "last update was"+(lastUpdateDate??" 3min ago "),
                  color: StructureBuilder.styles!.t3Color,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Image.asset(
              imagePath??"assets/images/img2.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
