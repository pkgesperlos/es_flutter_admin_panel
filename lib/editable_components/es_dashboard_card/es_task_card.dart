import 'package:es_flutter_components/components/es_form/es_checkbox/es_custom_check_box.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../main.dart';

class EsTasksCard extends StatefulWidget {
  List<bool>? valueList;
  List<String> descriptionList;
  List<String>? dateList;

  EsTasksCard({
    Key? key,
    this.valueList,
    required this.descriptionList,
    this.dateList,
  }) : super(key: key);

  @override
  State<EsTasksCard> createState() => _EsTasksCardState();
}

class _EsTasksCardState extends State<EsTasksCard> {
  @override
  Widget build(BuildContext context) {
    List<bool> _valueList = widget.valueList ??
        List.generate(
          widget.descriptionList.length,
          (index) => false,
        );
    List<String> _dateList = widget.dateList ??
        List.generate(
          widget.descriptionList.length,
          (index) => "11/12/2222",
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
              AppLocalizations.of(context)!.taskslist,
            ),
            EsVSpacer(
              big: true,
              factor: 4,
            ),
            ...List.generate(
                widget.descriptionList.length,
                (index) => newUsersCards(index, _dateList,
                    widget.descriptionList, _valueList, context))
          ],
        ),
      ),
    );
  }

  Widget newUsersCards(
      int index,
      List<String> widgetDateList,
      List<String> widgetDescriptionList,
      List<bool> widgetValueList,
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
                child: EsCustomCheckBox(
                  titleWidget: Container(),
                  value: widgetValueList[index],
                  onChanged: (value) {
                    setState(() {
                      widgetValueList[index] = value;
                    });
                  },
                ),
              ),
              EsHSpacer(),
              Expanded(
                flex: 7,
                child: EsOrdinaryText(
                  widgetDescriptionList[index],
                  color: StructureBuilder.styles!.primaryDarkColor,
                  align: TextAlign.start,
                  decoration: widgetValueList[index]
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
              EsHSpacer(),
              Expanded(
                flex: 2,
                child: EsOrdinaryText(
                  widgetDateList[index],
                  color: StructureBuilder.styles!.t4Color,
                  size: StructureBuilder.dims!.h3FontSize*0.8,
                  align: TextAlign.start,
                  decoration: widgetValueList[index]
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
