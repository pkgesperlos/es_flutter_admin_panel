import 'package:es_flutter_component/constants.dart';
import 'package:es_flutter_component/es_button/es_icon_button.dart';
import 'package:es_flutter_component/es_button/es_loading_button.dart';
import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
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

class PanelButtonSample extends StatelessWidget {
  const PanelButtonSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _data = AppLocalizations.of(context)!.samplButton;
    List list = [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
            5,
            (index) => Column(
                  children: [
                    EsOrdinaryButton(
                      text: _data, onPressed: () {  },
                      buttonSizeX: Constants.buttonSizeX*5-index*50,
                    ),
                    SizedBox(
                      height: PanelConstants.paddingDimension,
                    )
                  ],
                )),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
            5,
            (index) => Column(
                  children: [
                    EsIconButton(icon: Icons.save_alt,onPressed: (){},
                      buttonIconSize: Constants.buttonIconSize-index*2,
                      buttonSizeX: Constants.buttonSizeX*5-index*50,
                      buttonSizeY: Constants.buttonSizeY*1.5-index*5,
                    ),
                    SizedBox(
                      height: PanelConstants.paddingDimension *2),
                    
                  ],
                )),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
            5,
                (index) => Column(
              children: [
                EsLoadingButton(onPressed: (){},
                  buttonSizeX: Constants.buttonSizeX*5-index*50,
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
                child: EsOrdinaryText(data: "Hello World:)",),
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
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6',
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
