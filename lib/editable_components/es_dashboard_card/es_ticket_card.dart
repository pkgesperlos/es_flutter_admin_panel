import 'package:es_flutter_components/components/es_image/es_avatar_widget.dart';
import 'package:es_flutter_components/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_components/components/es_label/es_content_label.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_divider.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../main.dart';

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
    // print(MediaQuery.of(context).size.width);
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
      decoration: MyStyle.dashboardCardDecoration,
      child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: StructureBuilder.dims!.h0Padding,
            vertical: StructureBuilder.dims!.h0Padding,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EsHeader(
                  AppLocalizations.of(context)!.tickets,
                ),
                EsVSpacer(
                  big: true,
                ),
                MediaQuery.of(context).size.width >= 660
                    ? Container(
                        padding:
                            EdgeInsets.all(StructureBuilder.dims!.h0Padding),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color:
                                    StructureBuilder.styles!.primaryDarkColor,
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
                                  flex: 3,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      EsHeader(
                                        AppLocalizations.of(context)!
                                            .description,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      EsHeader(
                                        AppLocalizations.of(context)!.status,
                                        color: StructureBuilder.styles!.t4Color,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: EsSvgIcon(
                                          "assets/svgs/refresh.svg",
                                          color:
                                              StructureBuilder.styles!.t4Color,
                                          size:
                                              StructureBuilder.dims!.h3IconSize,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            EsVSpacer(),
                          ],
                        ),
                      )
                    : Container(),
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
    List<Widget> _list = [
      Expanded(
        flex: 2,
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
        flex: 4,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
        child: Wrap(
          // mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.start,
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
        flex: 3,
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
          flex: 3,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              widgetLabelList[index],
            ],
          ))
    ];
    List<Widget> _list2 = [
      Row(
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
      EsVSpacer(),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
      EsVSpacer(),
      Row(
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
      EsVSpacer(),
      Row(
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
      EsVSpacer(),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          widgetLabelList[index],
        ],
      )
    ];
    return Container(
      padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MediaQuery.of(context).size.width >= 660
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: _list)
              : Column(children: _list2),
          EsVSpacer(),
          index != (widgetNameList.length - 1) ? EsHDivider() : Container(),
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
