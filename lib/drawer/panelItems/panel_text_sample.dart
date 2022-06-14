import 'package:es_flutter_component/constants.dart';
import 'package:es_flutter_component/es_text/es_dotted_text.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/es_text/es_marked_text.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_crm/images/panelConstants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../images/panelConstants.dart';

class PanelTextSample extends StatelessWidget {
  const PanelTextSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _data = AppLocalizations.of(context)!.sampleText;
    List list = [
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: EsDottedText(
              data: AppLocalizations.of(context)!.titleText,
              size: 20,
              color: PanelConstants.itemColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
                5,
                (index) => Column(
                      children: [
                        EsTitle(
                          data: _data,
                          size: Constants.titleFontSize - index * 3,
                        ),
                        SizedBox(
                          height: PanelConstants.paddingDimension,
                        )
                      ],
                    )),
          ),
        ],
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: EsDottedText(
              data: AppLocalizations.of(context)!.ordinaryText,
              size: 20,
              color: PanelConstants.itemColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
                5,
                (index) => Column(
                      children: [
                        EsOrdinaryText(
                          data: _data,
                          size: Constants.ordinaryFontSize - index * 2,
                        ),
                        SizedBox(
                          height: PanelConstants.paddingDimension *
                              (Constants.titleFontSize *
                                  2.5 /
                                  Constants.ordinaryFontSize),
                        )
                      ],
                    )),
          ),
        ],
      ),
      Column(

        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: EsDottedText(
              data: AppLocalizations.of(context)!.dottedText,
              size: 20,
              color: PanelConstants.itemColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
                5,
                (index) => Column(
                      children: [
                        EsDottedText(
                          data: _data,
                          size: Constants.markedFontSize - index * 3,
                        ),
                        SizedBox(height: PanelConstants.paddingDimension)
                      ],
                    )),
          ),
        ],
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: EsDottedText(
              data: AppLocalizations.of(context)!.markedText,
              size: 20,
              color: PanelConstants.itemColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
                5,
                (index) => Column(
                      children: [
                        EsMarkedText(
                          data: _data,
                          size: Constants.markedFontSize - index * 3,
                        ),
                        SizedBox(height: PanelConstants.paddingDimension)
                      ],
                    )),
          ),
        ],
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: EsDottedText(
              data: AppLocalizations.of(context)!.labledText,
              size: 20,
              color: PanelConstants.itemColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
                4,
                (index) => Column(
                      children: [
                        EsLableText(
                          data: _data,
                          size: Constants.lableFontSize - index * 3,
                        ),
                        SizedBox(
                          height: PanelConstants.paddingDimension *
                              (Constants.titleFontSize *
                                  3 /
                                  Constants.ordinaryFontSize),
                        )
                      ],
                    )),
          ),
        ],
      ),
    ];
    return Material(
        color: PanelConstants.backGround,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical:PanelConstants.paddingDimension),
                margin: EdgeInsets.all(PanelConstants.paddingDimension * 2),

                width: double.maxFinite,
                ////////////////////////
                child: EsOrdinaryText(data:AppLocalizations.of(context)!.textSampleDescription ,),
                decoration: BoxDecoration(
                    color: PanelConstants.forGround,
                    borderRadius: BorderRadius.all(
                        Radius.circular(Constants.paddingDimension))),
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.all(PanelConstants.paddingDimension),
                  decoration: BoxDecoration(
                    color: PanelConstants.backGround,
                  ),
                  children: List.generate(
                      list.length, (index) => boxShow(list[index])))
            ],
          ),
        ));
  }

  Widget boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-4',
        child: Container(
          padding: EdgeInsets.all(PanelConstants.paddingDimension),
          margin: EdgeInsets.all(PanelConstants.paddingDimension),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: PanelConstants.forGround),
          child: widget,
        ));
  }
}
