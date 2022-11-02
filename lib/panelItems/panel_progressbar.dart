import 'package:es_flutter_admin_panel/panelItems/widgets/container_items.dart';
import 'package:es_flutter_component/es_button/es_information_button.dart';
import 'package:es_flutter_component/es_progressbar/es_circular_progressbar.dart';
import 'package:es_flutter_component/es_progressbar/es_linear_progressbar.dart';
import 'package:es_flutter_component/es_text/es_dotted_text.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class PanelProgressBar extends StatelessWidget {
  Widget titleBox(int index) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      decoration: BoxDecoration(
          color: StructureBuilder.styles!.primaryDarkColor,
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h0Padding))),
      child: Center(
        child: EsLabelText(
          index.toString(),
          color: StructureBuilder.styles!.primaryDarkColor,
        ),
      ),
    );
  }

  const PanelProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String _data = AppLocalizations.of(context)!.samplButton;
    List<Widget> widgetList = List.generate(
      20,
      (index) => titleBox(index),
    );
    List list = [
      ContainerItems(widget:EsLinearProgressbar(),
          title:AppLocalizations.of(context)!.linearProgressBar,
          information:"It is a linear progress bar located in: \n es_flutter_component>lib>es_progressbar>es_linear_progressbar.dart \n and is used as: \n "
              """EsLinearProgressbar()"""
      ),
      ContainerItems(widget:EsCircularProgressbar(),
          title:AppLocalizations.of(context)!.circularProgressBar,
          information:"It is a circular progress bar located in: \n es_flutter_component>lib>es_progressbar>es_circular_progressbar.dart \n and is used as: \n "
              """EsCircularProgressbar()"""
      )
    ];
    return Material(
        color: StructureBuilder.styles!.primaryLightColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: StructureBuilder.dims!.h0Padding),
                margin: EdgeInsets.all(StructureBuilder.dims!.h0Padding),

                width: double.maxFinite,
                ////////////////////////
                child: EsOrdinaryText(
                   AppLocalizations.of(context)!.progressBarDescription,
                ),
                decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryDarkColor,
                    borderRadius: BorderRadius.all(
                        Radius.circular(StructureBuilder.dims!.h2FontSize))),
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
                  decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  children: List.generate(
                      list.length, (index) => _boxShow(list[index])))
            ],
          ),
        ));
  }

  Widget _boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6',
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: StructureBuilder.dims!.h0Padding,
            vertical: StructureBuilder.dims!.h0Padding,
          ),
          margin: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular(StructureBuilder.dims!.h0Padding)),
              color: StructureBuilder.styles!.primaryDarkColor),
          child: widget,
        ));
  }

  Widget _listItem(Widget widget, String title, String information) {
    return Center(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              EsDottedText(
                 title,
                size: 15,
                color: StructureBuilder.styles!.primaryDarkColor,
              ),
              SizedBox(
                height: StructureBuilder.dims!.h0Padding,
              ),
              EsInformationButton(
                dialogeText: information,
              ),
            ],
          ),
        ),
        widget,
      ],
    ));
  }
}
