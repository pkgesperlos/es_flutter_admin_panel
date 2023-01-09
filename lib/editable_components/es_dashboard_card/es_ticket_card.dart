import 'package:es_flutter_component/components/es_button/es_button.dart';
import 'package:es_flutter_component/components/es_image/es_avatar_widget.dart';
import 'package:es_flutter_component/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/components/es_label/es_content_label.dart';
import 'package:es_flutter_component/components/es_spacer/es_h_divider.dart';
import 'package:es_flutter_component/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/components/es_table/es_simple_table.dart';
import 'package:es_flutter_component/components/es_text/es_header.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EsTicketCard extends StatelessWidget {
  List<String>? avatarLetter;
  List<Color>? avatarColor;
  List<String>? nameList;
  List<String>? categoryList;
  List<String>? dateList;
  List<String>? descriptionList;
  List<TicketStatus>? statusList;

  EsTicketCard({
    Key? key,
    this.nameList,
    this.categoryList,
    this.avatarColor,
    this.dateList,
    this.descriptionList,
    this.avatarLetter,
    this.statusList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _nameList = nameList ?? [];
    List<String> _descriptionList = descriptionList ??
        List.generate(
          _nameList.length,
          (index) => AppLocalizations.of(context)!.lormmid,
        );
    List<String> _categoryList = categoryList ??
        List.generate(
          _nameList.length,
          (index) => AppLocalizations.of(context)!.lormshort,
        );
    List<String> _dateList = descriptionList ??
        List.generate(
          _nameList.length,
          (index) => "11/12/2005",
        );
    List<String> _avatarLetter = avatarLetter ??
        List.generate(
          _nameList.length,
          (index) => _nameList[index][0],
        );
    List<Color> _avatarColor = avatarColor ??
        List.generate(_nameList.length,
            (index) => StructureBuilder.styles!.specificColor);
    List<TicketStatus> _statusList = statusList ??
        List.generate(_nameList.length, (index) => TicketStatus.pending);
    List<Widget> _labelList = List.generate(_nameList.length, (index) {
      if (_statusList[index] == TicketStatus.successfull) {
        return EsContentLabel(
          isUnique: true,
          color: StructureBuilder.styles!.successColor().successRegular,
          size: StructureBuilder.dims!.h3IconSize,
          text: AppLocalizations.of(context)!.successful,
        );
      }
      if (_statusList[index] == TicketStatus.unSuccessful) {
        return EsContentLabel(
          isUnique: true,
          size: StructureBuilder.dims!.h3IconSize,
          text: AppLocalizations.of(context)!.unsuccessful,
        );
      }

      return EsContentLabel(
        isUnique: true,
        color: StructureBuilder.styles!.warningColor().warningRegular,
        size: StructureBuilder.dims!.h3IconSize,
        text: AppLocalizations.of(context)!.pending,
      );
    });

    return Container(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(
        vertical: StructureBuilder.dims!.h1Padding,
      ),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: StructureBuilder.styles!.primaryDarkColor,
              offset: Offset(1.5, 0),
            ),
          ],
          color: StructureBuilder.styles!.decorationColor().card,
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h0BorderRadius))),
      child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: StructureBuilder.dims!.h0Padding,
            vertical: StructureBuilder.dims!.h0Padding,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: StructureBuilder.styles!.primaryDarkColor,
                          offset: Offset(1.5, 0),
                        ),
                      ],
                      color: StructureBuilder.styles!.primaryDarkColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                            StructureBuilder.dims!.h0BorderRadius),
                        topRight: Radius.circular(
                            StructureBuilder.dims!.h0BorderRadius),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                EsHeader(
                                  AppLocalizations.of(context)!.name,
                                  color: StructureBuilder.styles!.t4Color,
                                ),
                              ],
                            ),
                          ),
                          EsHSpacer(),
                          Expanded(
                            flex: 5,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                EsHeader(
                                  AppLocalizations.of(context)!.description,
                                  color: StructureBuilder.styles!.t4Color,
                                  align: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                          EsHSpacer(),
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                EsHeader(
                                  AppLocalizations.of(context)!.date,
                                  color: StructureBuilder.styles!.t4Color,
                                ),
                              ],
                            ),
                          ),
                          EsHSpacer(),
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                EsHeader(
                                  AppLocalizations.of(context)!.status,
                                  color: StructureBuilder.styles!.t4Color,
                                ),
                                EsSvgIcon(
                                  "assets/svgs/refresh.svg",
                                  color: StructureBuilder.styles!.t4Color,
                                  size: StructureBuilder.dims!.h3IconSize,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      EsVSpacer(),
                    ],
                  ),
                ),
                ...List.generate(
                    _nameList.length,
                    (index) => ticketinfo(
                        index,
                        _avatarLetter,
                        _nameList,
                        _categoryList,
                        _descriptionList,
                        _dateList,
                        _labelList,
                        _avatarColor,
                        context))
              ],
            ),
          )),
    );
  }

  Widget ticketinfo(
      int index,
      List<String> avatarLetter,
      List<String> widgetNameList,
      List<String> widgetCategoryList,
      List<String> widgetDescriptionList,
      List<String> widgetDateList,
      List<Widget> widgetLabelList,
      List<Color> widgetColorList,
      BuildContext context) {
    return Container(
      padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    EsAvatarWidget(
                        backGroundColor: widgetColorList[index],
                        widget: EsTitle(
                          avatarLetter[index],
                          color: StructureBuilder.styles!.primaryLightColor,
                        )),
                  ],
                ),
              ),
              EsHSpacer(),
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        EsHeader(
                          widgetNameList[index],
                          color: StructureBuilder.styles!.primaryDarkColor,
                        ),
                        EsVSpacer(),
                        EsOrdinaryText(
                          widgetCategoryList[index],
                          color: StructureBuilder.styles!.t3Color,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              EsHSpacer(),
              Expanded(
                flex: 5,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      widgetDescriptionList[index],
                      color: StructureBuilder.styles!.t4Color,
                      align: TextAlign.start,
                    ),
                  ],
                ),
              ),
              EsHSpacer(),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      widgetDateList[index],
                      color: StructureBuilder.styles!.t1Color,
                      align: TextAlign.start,
                    ),
                  ],
                ),
              ),
              EsHSpacer(),
              Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      widgetLabelList[index],
                    ],
                  ))
            ],
          ),
          EsVSpacer(),
          EsHDivider(),
        ],
      ),
    );
  }
}

enum TicketStatus {
  successfull,
  unSuccessful,
  pending,
}
