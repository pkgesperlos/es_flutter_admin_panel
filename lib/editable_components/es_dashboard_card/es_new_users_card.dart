import 'package:es_flutter_components/components/es_button/es_button.dart';
import 'package:es_flutter_components/components/es_image/es_avatar_image.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_divider.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../main.dart';

class EsNewUsersCard extends StatelessWidget {
  List<String>? nameList;
  List<String>? descriptionList;
  List<String>? imagePathList;

  EsNewUsersCard({
    Key? key,
    this.nameList,
    this.descriptionList,
    this.imagePathList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _nameList = nameList ?? [];
    List<String> _descriptionList = descriptionList ??
        List.generate(
          _nameList.length,
          (index) => AppLocalizations.of(context)!.lormshort,
        );
    List<String> _imagePathList = imagePathList ??
        List.generate(
          _nameList.length,
          (index) => "assets/images/img4.jpg",
        );

    return Container(
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.symmetric(
        horizontal: StructureBuilder.dims!.h0Padding,
        vertical: StructureBuilder.dims!.h0Padding,
      ),
      decoration: MyStyle.dashboardCardDecoration,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EsHeader(
              AppLocalizations.of(context)!.newusers,
            ),
            EsVSpacer(
              big: true,
              factor: 4,
            ),
            ...List.generate(
                _nameList.length,
                (index) => newUsersCards(index, _nameList, _descriptionList,
                    _imagePathList, context))
          ],
        ),
      ),
    );
  }

  Widget newUsersCards(
      int index,
      List<String> widgetNameList,
      List<String> widgetDescriptionList,
      List<String> widgetImagePathList,
      BuildContext context) {
    return Container(
      padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: EsAvatarImage(
                  path: widgetImagePathList[index],
                  radius: StructureBuilder.dims!.h0Padding,
                ),
              ),
              EsHSpacer(),
              Expanded(
                  flex: 7,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        EsHeader(
                          widgetNameList[index],
                          color: StructureBuilder.styles!.primaryDarkColor,
                        ),
                        EsVSpacer(),
                        EsOrdinaryText(
                          widgetDescriptionList[index],
                          color: StructureBuilder.styles!.t4Color,
                          align: TextAlign.start,
                        ),
                        EsVSpacer(
                          big: true,
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: EsButton(
                      text: AppLocalizations.of(context)!.show,
                      size: StructureBuilder.dims!.h1Padding,
                      fillColor: StructureBuilder.styles!.primaryDarkColor))
            ],
          ),
          EsVSpacer(),
          index != (widgetNameList.length - 1) ? EsHDivider() : Container(),
        ],
      ),
    );
  }
}
