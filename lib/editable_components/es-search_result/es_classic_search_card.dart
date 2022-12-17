import 'package:es_flutter_component/components/es_label/es_content_label.dart';
import 'package:es_flutter_component/components/es_text/es_header.dart';
import 'package:es_flutter_component/components/es_text/es_label_text.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_spacer/es_h_divider.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EsClassicSearchCard extends StatelessWidget {
  String? title;
  String? content;
  Widget? label;
  String? date;


   EsClassicSearchCard({Key? key,
   this.title,
   this.content,
   this.label,
   this.date,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EsVSpacer(big: true,),
            EsHeader(title??AppLocalizations.of(context)!.lormmid,
            align: TextAlign.start,
            ),
            EsVSpacer(),
            EsOrdinaryText(content??AppLocalizations.of(context)!.lorm,
              align: TextAlign.start,
            ),
            EsVSpacer(big: true),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                label??EsContentLabel(
                  isUnique: true,
                  size: StructureBuilder.dims!.h3IconSize,
                  text: AppLocalizations.of(context)!.error,
                ),
                EsHSpacer(big: true,),
                Icon(Icons.circle,
                  size: StructureBuilder.dims!.h3IconSize/4,
                  color: StructureBuilder.styles!.secondaryColor,
                ),
                EsHSpacer(),
                EsOrdinaryText(date??"20.10.2018 ",
                  color: StructureBuilder.styles!.secondaryColor,)
              ],
            ),
            EsVSpacer(big: true,factor: 3,),
            EsHDivider()

          ],
        )
    );
  }
}
