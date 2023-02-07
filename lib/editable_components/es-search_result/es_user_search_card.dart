import 'package:es_flutter_components/components/es_image/es_avatar_image.dart';
import 'package:es_flutter_components/components/es_label/es_content_label.dart';
import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_components/components/es_text/es_label_text.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_divider.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EsUserSearchCard extends StatelessWidget {
  String? title;
  String? content;
  Widget? avatar;


   EsUserSearchCard({Key? key,
   this.title,
   this.content,
   this.avatar,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
              child: avatar??EsAvatarImage(
                path: "assets/images/img4.jpg",
                radius: StructureBuilder.dims!.h0Padding,
              ),)
          ,Expanded(
            flex: 10,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsHeader(AppLocalizations.of(context)!.lormshort,),
                    EsVSpacer(),
                    EsOrdinaryText(AppLocalizations.of(context)!.lorm,
                    align: TextAlign.start,
                    ),
                    EsVSpacer(big: true,),
                    EsHDivider()
                  ],
                ),
              ))
        ],
      ),

    );
  }
}
