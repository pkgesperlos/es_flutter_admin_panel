import 'package:es_flutter_components/components/es_label/es_content_label.dart';
import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_components/components/es_text/es_label_text.dart';
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'es_classic_search_card.dart';

class EsSearchResult extends StatefulWidget {
  List<Widget>? cardWidgetList;
  int num;
  String searchWord;

  EsSearchResult({
    Key? key,
    this.cardWidgetList,
    required this.num,
    required this.searchWord,
  }) : super(key: key);

  @override
  _EsSearchResultState createState() => _EsSearchResultState();
}

class _EsSearchResultState extends State<EsSearchResult> {
  @override
  Widget build(BuildContext context) {
    List<Widget> _cardwidgetList = widget.cardWidgetList ??
        List.generate(widget.num, (index) => EsClassicSearchCard());

    return Container(
        child: Column(children: [
      Expanded(
        flex: 1,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            EsTitle(
              widget.num.toString(),
              size: StructureBuilder.dims!.h0FontSize,
            ),
            EsHSpacer(),
            EsHeader(
              AppLocalizations.of(context)!.resultsfindfor,
            ),
            EsTitle(
              "\" " + widget.searchWord + " \"",
              size: StructureBuilder.dims!.h0FontSize,
              color: StructureBuilder.styles!
                  .informationColor()
                  .informationRegular,
            ),
          ],
        ),
      ),
      EsVSpacer(
        big: true,
        factor: 3,
      ),
      Expanded(
          flex: 10,
          child: SingleChildScrollView(
            child: Wrap(
              spacing: StructureBuilder.dims!.h0Padding,
              runSpacing: StructureBuilder.dims!.h1Padding,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
              widget.num,
              (index) {
                return _cardwidgetList [index];
              },
            )),
          )),
    ]));
  }
}
