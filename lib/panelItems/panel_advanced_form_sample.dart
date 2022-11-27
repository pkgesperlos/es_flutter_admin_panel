import 'package:es_flutter_admin_panel/panelItems/widgets/container_items.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_checkbox/es_custom_chechbox_group.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_checkbox/es_custom_check_box.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_checkbox/es_custom_checkbox_form.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_drop_down/es_drop_down.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_drop_down/es_label_input.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_drop_down/es_label_input_seprated_drop_down.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_radio_button/es_radio_button_group.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_radio_button/es_radio_button_group_form.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_slider/es_slider.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_text_field/es_text_field.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_text/es_ordinary_text.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/page_title_container.dart';
import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelAdvancedFormSample extends StatefulWidget {
  PanelAdvancedFormSample({Key? key}) : super(key: key);

  @override
  State<PanelAdvancedFormSample> createState() =>
      _PanelAdvancedFormSampleState();
}





class _PanelAdvancedFormSampleState extends State<PanelAdvancedFormSample> {

  List labelList = [
    {"title": "item1", "_id": "1"},
    {"title": "item2", "_id": "2"},
    {"title": "item3", "_id": "3"},
    {"title": "item4", "_id": "4"},
    {"title": "item5", "_id": "5"},
  ];
  List labelList2 = [
    {"title": "item1", "_id": "1"},
    {"title": "item2", "_id": "2"},
    {"title": "item3", "_id": "3"},
    {"title": "item4", "_id": "4"},
    {"title": "item5", "_id": "5"},
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _height = 700;
    List list = [
      ContainerItems(
          widget: Container(
            child: Wrap(
              spacing: StructureBuilder.dims!.h0Padding,
              direction: Axis.vertical,
              children: [

                EsLabelInput(labelList: labelList2),
                EsLabelInputSepratedDropDown(labelList: labelList),
              ],
            ),
          ),
          title: "Label input",
          information:
              "They are disabled items in this panel by flutter code.  "
              "Some of the components are located in: \n es_flutter_component>lib/es_form \n  ."),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.customformtitle,
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
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
