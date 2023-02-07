import 'package:es_flutter_components/components/es_text/es_icon_text.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_divider.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../main.dart';

class EsPrimaryCard6 extends StatelessWidget {
  String? title;
  String? quotation;
  String? content;

  EsPrimaryCard6({
    Key? key,
    this.title,
    this.quotation,
    this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: MyStyle.cardColor,
          borderRadius: BorderRadius.all(Radius.circular(
              StructureBuilder.dims!.h0BorderRadius))),
      margin: EdgeInsets.symmetric(
        vertical: StructureBuilder.dims!.h1Padding,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: StructureBuilder.dims!.h0Padding,
        vertical: StructureBuilder.dims!.h0Padding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EsTitle(
           title?? AppLocalizations.of(context)!.quotation,
          ),
          EsVSpacer(),
          EsHDivider(),
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
          EsIconText(
            quotation??"Lorm ipsum Lorm ipsum Lorm ..",
            icon: Icon(Icons.minimize),
          ),
          EsVSpacer(
            big: true,
            factor: 2,
          ),
        ],
      ),
    );
  }
}
