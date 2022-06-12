import 'package:es_flutter_component/es_text/es_dotted_text.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_crm/images/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelTextSample extends StatelessWidget {
  const PanelTextSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _data=AppLocalizations.of(context)!.sampleText;
    List list=[EsTitle(data: _data),
      EsOrdinaryText(data: _data),
      EsDottedText(data: _data),
      EsLableText(data: _data),
    ];
    return Container(
        padding: EdgeInsets.all(Constants.kPadding),
        color:Constants.grayMid,
      child:GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: List.generate(list.length, (index) => boxShow(list[index])),
    )

      // GridView(
      //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      //       maxCrossAxisExtent: 200,
      //       childAspectRatio: 1.4,
      //       crossAxisSpacing: 5,
      //       mainAxisSpacing: 10),
      //   children: [...List.generate(10, (index) => boxShow())],
      //   //scrollDirection: Axis.vertical,
      // ),

    );
  }


  Widget boxShow(Widget widget){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Constants.grayLight
      ),
      child:widget ,
    );
  }
}
