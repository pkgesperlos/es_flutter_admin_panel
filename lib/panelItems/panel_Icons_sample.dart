import 'package:es_flutter_admin_panel/panelItems/widgets/container_items.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/page_title_container.dart';
import 'package:es_flutter_component/es_icon/custom_icons.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:es_flutter_component/es_button/es_information_button.dart';
class PanelIconsSample extends StatefulWidget {
  PanelIconsSample({Key? key}) : super(key: key);

  @override
  State<PanelIconsSample> createState() => _PanelIconsSampleState();
}

class _PanelIconsSampleState extends State<PanelIconsSample> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  // String value = await rootBundle
  //     .loadString('packages/es_flutter_component/assets/images/calender.svg');
  @override
  Widget build(BuildContext context) {

    List list = [
      ContainerItems(
          widget: Container(
            width: double.infinity,
            height: 500,
            child: Wrap(
              spacing: StructureBuilder.dims!.h0Padding,
              runSpacing: StructureBuilder.dims!.h0Padding*2,
              children: [
                Icon(Custom.bookmarks),
                EsSvgIcon("packages/es_flutter_component/assets/images/calender.svg"),
EsInformationButton()
                // Text("data",style: TextStyle(
                //   fontFamily: "Yekan"
                // ),)
              ],
            )

          ),
          title:AppLocalizations.of(context)!.quilltexteditor,
          information:
          "It is a quill Text Editor located in: \n es_flutter_component>lib/es_form/es_text_editor/es_text_editor.dart"
              " \n and is used as: \n "
              """EsTextEditor(),"""),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.quilltexteditortitle,
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h0Padding),
                  decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryDarkColor,
                  ),
                  children: List.generate(
                      list.length, (index) => boxShow(list[index])))
            ],
          ),
        ));
  }

  Widget boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
