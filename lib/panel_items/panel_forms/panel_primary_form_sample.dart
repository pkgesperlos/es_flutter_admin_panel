
import 'package:es_flutter_component/components/es_button/es_button.dart';
import 'package:es_flutter_component/components/es_form/es_checkbox/es_custom_chechbox_group.dart';
import 'package:es_flutter_component/components/es_form/es_checkbox/es_custom_checkbox_form.dart';
import 'package:es_flutter_component/components/es_form/es_drop_down/es_drop_down.dart';
import 'package:es_flutter_component/components/es_form/es_radio_button/es_radio_button_group.dart';
import 'package:es_flutter_component/components/es_form/es_radio_button/es_radio_button_group_form.dart';
import 'package:es_flutter_component/components/es_form/es_slider/es_slider.dart';
import 'package:es_flutter_component/components/es_form/es_text_field/es_text_field.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';

import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelPrimaryFormSample extends StatefulWidget {

  static const routeName = '/panelPrimaryFormSample';

  PanelPrimaryFormSample({Key? key}) : super(key: key);

  @override
  State<PanelPrimaryFormSample> createState() => _PanelPrimaryFormSampleState();
}



class _PanelPrimaryFormSampleState extends State<PanelPrimaryFormSample> {

  bool _value1 = false;
  List<String> _value=List.generate(10, (index) => "");
  TextEditingController _controller = TextEditingController();
  List<TextEditingController> _controllerList =
  List.generate(9, (index) => TextEditingController());

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

    double _height = 650;

    List list = [
      ContainerItems(
          widget: Container(
            height: _height*0.8,
            child: Wrap(
              spacing: StructureBuilder.dims!.h0Padding,
              runSpacing: StructureBuilder.dims!.h0Padding,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.emailadress,
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                    EsTextField(
                      hint: AppLocalizations.of(context)!.emailadress,
                      label: AppLocalizations.of(context)!.emailadress,
                      customController: EditTextController(),
                    ),
                    EsVSpacer(),
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.pleaseenteremail,
                      color: StructureBuilder.styles!.secondaryColor,
                    ),
                  ],
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.password,
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                    EsTextField(
                      hint:AppLocalizations.of(context)!.pleaseenterpassword,
                      label:AppLocalizations.of(context)!.pleaseenterpassword,
                      customController: EditTextController(),
                    ),
                  ],
                ),
                EsHSpacer(
                  big: true,
                  factor: 3,
                ),
                EsCustomCheckBoxForm(
                  titleWidget: EsTitle(AppLocalizations.of(context)!.pleaseselectme,),
                  value: _value1,
                  validator: (bool? value) {},
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                EsButton(text: AppLocalizations.of(context)!.register,)
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.overview,
          information:"It is an overview of forms in this panel by flutter code  "
              "the components are located in: \n es_flutter_component/lib/components/es_form \n"
              " \n   where \n"
              """  bool _value1 = false;
  List<String> _value=List.generate(10, (index) => "");
  TextEditingController _controller = TextEditingController();
  List<TextEditingController> _controllerList =
  List.generate(9, (index) => TextEditingController());"""),
      ContainerItems(
          widget: Container(
            height: _height*0.8,
            child: Wrap(
              spacing: StructureBuilder.dims!.h0Padding,
              runSpacing: StructureBuilder.dims!.h0Padding,
              children: [
                Wrap(
                  spacing: StructureBuilder.dims!.h0Padding * 2,
                  runSpacing: StructureBuilder.dims!.h0Padding,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.emailadress,
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsHSpacer(
                      big: true,
                    ),
                    EsTextField(
                      hint: AppLocalizations.of(context)!.pleaseenteremail,
                      label: AppLocalizations.of(context)!.pleaseenteremail,
                      customController: EditTextController(),
                    ),
                  ],
                ),
                Wrap(
                  spacing: StructureBuilder.dims!.h0Padding * 2,
                  runSpacing: StructureBuilder.dims!.h0Padding,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.password,
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsHSpacer(
                      big: true,
                    ),
                    EsTextField(
                      hint: AppLocalizations.of(context)!.pleaseenterpassword,
                      label: AppLocalizations.of(context)!.pleaseenterpassword,
                      customController: EditTextController(),
                    ),
                  ],
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                Wrap(
                  direction: Axis.horizontal,
                  spacing: StructureBuilder.dims!.h0Padding * 2,
                  runSpacing: StructureBuilder.dims!.h0Padding,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.radiobuttonsgroup,
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsRadioButtonGroupForm(
                      isScrollable: false,
                      titleList: List.generate(
                          3, (index) => AppLocalizations.of(context)!.item+"${index + 1}"),
                      axis: Axis.horizontal,
                      controller: TextEditingController(),
                      validator: (TextEditingController? value) {
                        if (true) {
                          return "It is neccessary!";
                        }
                      },
                    ),
                  ],
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                Wrap(
                  direction: Axis.horizontal,
                  spacing: StructureBuilder.dims!.h0Padding * 2,
                  runSpacing: StructureBuilder.dims!.h0Padding,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.checkboxsample,
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsCustomCheckBoxForm(
                      titleWidget: EsTitle("Please select me!"),
                      value: _value1,
                      validator: (bool? value) {},
                    ),
                  ],
                ),
                EsHSpacer(
                  big: true,
                  factor: 5,
                ),
                EsButton(text:AppLocalizations.of(context)!.register,)
              ]
            ),
          ),
          title: AppLocalizations.of(context)!.horizontalform,
          information:
              "It is Horizontal form located in: \n es_flutter_component/lib/components/es_form \n and is used as: \n "
              """ Wrap(
              spacing: StructureBuilder.dims!.h0Padding,
              runSpacing: StructureBuilder.dims!.h0Padding,
              children: [
                Wrap(
                  spacing: StructureBuilder.dims!.h0Padding * 2,
                  runSpacing: StructureBuilder.dims!.h0Padding,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      "Email Adress :",
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsHSpacer(
                      big: true,
                    ),
                    EsTextField(
                      hint: "Enter Email:",
                      label: "Enter Email:",
                      customController: EditTextController(),
                    ),
                  ],
                ),
                Wrap(
                  spacing: StructureBuilder.dims!.h0Padding * 2,
                  runSpacing: StructureBuilder.dims!.h0Padding,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      "Password :",
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsHSpacer(
                      big: true,
                    ),
                    EsTextField(
                      hint: "Enter password:",
                      label: "Enter password:",
                      customController: EditTextController(),
                    ),
                  ],
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                Wrap(
                  direction: Axis.horizontal,
                  spacing: StructureBuilder.dims!.h0Padding * 2,
                  runSpacing: StructureBuilder.dims!.h0Padding,
                  children: [
                    EsOrdinaryText(
                      "Radio buttons group :",
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsRadioButtonGroupForm(
                    isScrollable: false,
                      titleList: List.generate(
                          3, (index) => "Item number"),
                      axis: Axis.horizontal,
                      controller: TextEditingController(),
                      validator: (TextEditingController? value) {
                        if (true) {
                          return "It is neccessary!";
                        }
                      },
                    ),
                  ],
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                Wrap(
                  direction: Axis.horizontal,
                  spacing: StructureBuilder.dims!.h0Padding * 2,
                  runSpacing: StructureBuilder.dims!.h0Padding,
                  children: [
                    EsOrdinaryText(
                      "Radio buttons group :",
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsCustomCheckBoxForm(
                      titleWidget: EsTitle("Please select me!"),
                      value: _value1,
                      validator: (bool? value) {},
                    ),
                  ],
                ),
                EsHSpacer(
                  big: true,
                  factor: 5,
                ),
                EsButton(text: "Register")
              ],
            ),"""
                  " \n   where \n"
                  """  bool _value1 = false;
  List<String> _value=List.generate(10, (index) => "");
  TextEditingController _controller = TextEditingController();
  List<TextEditingController> _controllerList =
  List.generate(9, (index) => TextEditingController());"""
      ),
      ContainerItems(
          widget: Container(
            height: _height,
            child: Wrap(
              spacing: StructureBuilder.dims!.h0Padding,
              runSpacing: StructureBuilder.dims!.h0Padding,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.emailadress,
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                    EsTextField(
                      hint: AppLocalizations.of(context)!.pleaseenteremail,
                      label: AppLocalizations.of(context)!.pleaseenteremail,
                      customController: EditTextController(),
                    ),
                    EsVSpacer(),
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.pleaseenteremail,
                      color: StructureBuilder.styles!.secondaryColor,
                    ),
                  ],
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.dropdownsample,
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                    IntrinsicWidth(
                      child: EsDropDown(
                        initialTitle: AppLocalizations.of(context)!.select,
                        list: [
                          {"title": "item1", "_id": "1"},
                          {"title": "item2", "_id": "2"},
                          {"title": "item3", "_id": "3"},
                        ],
                        value: _value[0],
                        onChanged: (value) {
                          setState(() {
                            _value[0] = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                EsHSpacer(
                  big: true,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.multiselectsample,
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                    EsCustomCheckboxGroup(
                      titleList: List.generate(
                          9, (index) => AppLocalizations.of(context)!.item+"${index + 1}"),
                      controller: _controller,
                      controllerList: _controllerList,
                      axis: Axis.vertical,
                      valueList: List.generate(9, (index) => false),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.radiobuttonsgroup,
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                    EsRadioButtonGroup(
                      titleList: List.generate(
                          9, (index) => AppLocalizations.of(context)!.item+"${index + 1}"),
                      controller: TextEditingController(),
                      axis: Axis.vertical,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.textareasample,
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                    IntrinsicHeight(
                      child: EsTextField(
                        hint: AppLocalizations.of(context)!.textArea,
                        label: AppLocalizations.of(context)!.textArea,
                        customController: EditTextController(),
                        maxLines: 7,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.formcontrols,
          information:
          "It is form controls located in: \n es_flutter_component/lib/components/es_form \n and is used as: \n "
              """Wrap(
              spacing: StructureBuilder.dims!.h0Padding,
              runSpacing: StructureBuilder.dims!.h0Padding,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      "Email Adress",
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                    EsTextField(
                      hint: "Enter Email:",
                      label: "Enter Email:",
                      customController: EditTextController(),
                    ),
                    EsVSpacer(),
                    EsOrdinaryText(
                      "Please Enter your email.",
                      color: StructureBuilder.styles!.secondaryColor,
                    ),
                  ],
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      "Drop down sample :",
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                    IntrinsicWidth(
                      child: EsDropDown(
                      initialTitle: AppLocalizations.of(context)!.select,
                        list: [
                          {"title": "item1", "_id": "1"},
                          {"title": "item2", "_id": "2"},
                          {"title": "item3", "_id": "3"},
                        ],
                        value: _value3,
                        onChanged: (value) {
                          setState(() {
                            _value3 = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                EsHSpacer(
                  big: true,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      "Multi select sample :",
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                     EsCustomCheckboxGroup(
                              titleList: List.generate(
                                  9, (index) => "Item number"),
                              controller: _controller,
                              controllerList: _controllerList,
                              axis: Axis.vertical,
                              valueList: List.generate(9, (index) => false),
                            ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      "Radio buttons group :",
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                    Container(
                      height: 100,
                      padding:
                          EdgeInsets.all(StructureBuilder.dims!.h1BorderRadius),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(
                              StructureBuilder.dims!.h1BorderRadius)),
                          border: Border.all(
                              color: StructureBuilder.styles!.primaryDarkColor)),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            EsRadioButtonGroup(
                              titleList: List.generate(
                                  9, (index) => "Item number"),
                              controller: TextEditingController(),
                              axis: Axis.vertical,
                            ),
                            EsVSpacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      "ناحیه متنی نمونه",
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                    IntrinsicHeight(
                      child: EsTextField(
                        hint: AppLocalizations.of(context)!.textArea,
                        label: AppLocalizations.of(context)!.textArea,
                        customController: EditTextController(),
                        maxLines: 7,
                      ),
                    ),
                  ],
                ),
              ],
            ),"""  " \n   where \n"
              """  bool _value1 = false;
  List<String> _value=List.generate(10, (index) => "");
  TextEditingController _controller = TextEditingController();
  List<TextEditingController> _controllerList =
  List.generate(9, (index) => TextEditingController());"""),
      ContainerItems(
          widget: Container(
            height: _height,
            child: Wrap(
              spacing: StructureBuilder.dims!.h0Padding,
              runSpacing: StructureBuilder.dims!.h0Padding,
              children: [
                EsTextField(
                  hint: AppLocalizations.of(context)!.textFieldHint,
                  label: AppLocalizations.of(context)!.textFieldHint,
                  customController: EditTextController(),
                  textFieldSize: Size(StructureBuilder.dims!.h0Padding * 20,
                      StructureBuilder.dims!.h0Padding * 2),
                ),
                EsTextField(
                  hint: AppLocalizations.of(context)!.textFieldHint,
                  label: AppLocalizations.of(context)!.textFieldHint,
                  customController: EditTextController(),
                ),
                EsTextField(
                  hint: AppLocalizations.of(context)!.textFieldHint,
                  label: AppLocalizations.of(context)!.textFieldHint,
                  customController: EditTextController(),
                  textFieldSize: Size(StructureBuilder.dims!.h0Padding * 7,
                      StructureBuilder.dims!.h0Padding * 2),
                ),
                EsTextField(
                  hint: AppLocalizations.of(context)!.textFieldHint,
                  label: AppLocalizations.of(context)!.textFieldHint,
                  customController: EditTextController(),
                  textFieldSize: Size(StructureBuilder.dims!.h0Padding * 14,
                      StructureBuilder.dims!.h0Padding * 2.5),
                ),
                EsTextField(
                  hint: AppLocalizations.of(context)!.textFieldHint,
                  label: AppLocalizations.of(context)!.textFieldHint,
                  customController: EditTextController(),
                  // textFieldSize: Size(StructureBuilder.dims!.h0Padding * 14,
                  //     StructureBuilder.dims!.h0Padding *2.5),
                ),
                EsTextField(
                  hint: AppLocalizations.of(context)!.textFieldHint,
                  label: AppLocalizations.of(context)!.textFieldHint,
                  customController: EditTextController(),
                  textFieldSize: Size(StructureBuilder.dims!.h0Padding * 14,
                      StructureBuilder.dims!.h0Padding * 1.5),
                ),
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.textfieldindifferentwidthandheight,
          information:
              "these are text fields in different widths and heights located in: \n es_flutter_component/lib/components/es_form/es_text_field/es_text_field.dart \n and is used as: \n "
              """ EsTextField(
                  hint: AppLocalizations.of(context)!.textFieldHint,
                  label: AppLocalizations.of(context)!.textFieldHint,
                  customController: EditTextController(),
                  textFieldSize: Size(StructureBuilder.dims!.h0Padding * 20,
                      StructureBuilder.dims!.h0Padding * 2),
                ),"""),
      ContainerItems(
          widget: Container(
            height: _height/2,
            child: Wrap(
              spacing: StructureBuilder.dims!.h0Padding,
              runSpacing: StructureBuilder.dims!.h0Padding,
              children: [
                IntrinsicWidth(
                  child: EsDropDown(
                    initialTitle: AppLocalizations.of(context)!.select,
                    list: [
                      {"title": "item1", "_id": "1"},
                      {"title": "item2", "_id": "2"},
                      {"title": "item3", "_id": "3"},
                    ],
                    value: _value[1],
                    buttonPadding: EdgeInsets.symmetric(
                      vertical: StructureBuilder.dims!.h2Padding,
                      horizontal: StructureBuilder.dims!.h1Padding,
                    ),
                    onChanged: (value) {
                      setState(() {
                        _value[1] = value;
                      });
                    },
                  ),
                ),
                IntrinsicWidth(
                  child: EsDropDown(
                    initialTitle: AppLocalizations.of(context)!.select,
                    list: [
                      {"title": "item1", "_id": "1"},
                      {"title": "item2", "_id": "2"},
                      {"title": "item3", "_id": "3"},
                    ],
                    value: _value[2],
                    onChanged: (value) {
                      setState(() {
                        _value[2] = value;
                      });
                    },
                  ),
                ),
                IntrinsicWidth(
                  child: EsDropDown(
                    initialTitle: AppLocalizations.of(context)!.select,
                    list: [
                      {"title": "item1", "_id": "1"},
                      {"title": "item2", "_id": "2"},
                      {"title": "item3", "_id": "3"},
                    ],
                    value: _value[3],
                    buttonPadding: EdgeInsets.symmetric(
                      vertical: StructureBuilder.dims!.h1Padding * 1.5,
                      horizontal: StructureBuilder.dims!.h1Padding,
                    ),
                    onChanged: (value) {
                      setState(() {
                        _value[3] = value;
                      });
                    },
                  ),
                ),
                IntrinsicWidth(
                  child: EsDropDown(
                    initialTitle: AppLocalizations.of(context)!.select,
                    list: [
                      {"title": "item1", "_id": "1"},
                      {"title": "item2", "_id": "2"},
                      {"title": "item3", "_id": "3"},
                    ],
                    value: _value[4],
                    buttonPadding: EdgeInsets.symmetric(
                      vertical: StructureBuilder.dims!.h1Padding,
                      horizontal: StructureBuilder.dims!.h0Padding * 2,
                    ),
                    onChanged: (value) {
                      setState(() {
                        _value[4] = value;
                      });
                    },
                  ),
                ),
                IntrinsicWidth(
                  child: EsDropDown(
                    initialTitle: AppLocalizations.of(context)!.select,
                    list: [
                      {"title": "item1", "_id": "1"},
                      {"title": "item2", "_id": "2"},
                      {"title": "item3", "_id": "3"},
                    ],
                    value: _value[5],
                    buttonPadding: EdgeInsets.symmetric(
                      vertical: StructureBuilder.dims!.h1Padding,
                      horizontal: StructureBuilder.dims!.h0Padding * 3,
                    ),
                    onChanged: (value) {
                      setState(() {
                        _value[5] = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.dropdownbuttonsindifferentwidthandheight,
          information:
              "these are Drop down buttons  in different widths and heights located in: \n es_flutter_component/lib/components/es_form/es_drop_down/es_drop_down.dart \n and is used as: \n "
              """   IntrinsicWidth(
                  child: EsDropDown(
                  initialTitle: AppLocalizations.of(context)!.select,
                    list: [
                      {"title": "item1", "_id": "1"},
                      {"title": "item2", "_id": "2"},
                      {"title": "item3", "_id": "3"},
                    ],
                    value: _value3,
                    buttonPadding: EdgeInsets.symmetric(
                      vertical: StructureBuilder.dims!.h2Padding,
                      horizontal: StructureBuilder.dims!.h1Padding,
                    ),
                    onChanged: (value) {
                      setState(() {
                        _value3 = value;
                      });
                    },
                  ),
                ),"""  " \n   where \n"
                  """  
  List<String> _value=List.generate(10, (index) => "");"""),
      ContainerItems(
          widget: Container(
            height: _height/2,
            child: Wrap(
              spacing: StructureBuilder.dims!.h0Padding,
              runSpacing: StructureBuilder.dims!.h0Padding,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.emailadress,
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                    EsOrdinaryText(
                      "Email@example.com",
                      color: StructureBuilder.styles!.secondaryColor,
                    ),
                  ],
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.password,
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                    EsTextField(
                      hint: "Enter password:",
                      label: "Enter password:",
                      customController: EditTextController(),
                    ),
                  ],
                ),
                EsHSpacer(
                  big: true,
                  factor: 3,
                ),
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.readonlyfield,
          information:
          "It is read only field located in: \n es_flutter_component/lib/components/es_form/es_text_field/es_text_field.dart \n and is used as: \n "
              """Wrap(
              spacing: StructureBuilder.dims!.h0Padding,
              runSpacing: StructureBuilder.dims!.h0Padding,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      "Email Adress",
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                    EsOrdinaryText(
                      "Email@example.com",
                      color: StructureBuilder.styles!.secondaryColor,
                    ),
                  ],
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      "Password",
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                    EsTextField(
                      hint: "Enter password:",
                      label: "Enter password:",
                      customController: EditTextController(),
                    ),
                  ],
                ),
                EsHSpacer(
                  big: true,
                  factor: 3,
                ),
              ],
            ),"""),
      ContainerItems(
          widget: Container(
            height: _height/4,
              child: EsSlider()),
          title: AppLocalizations.of(context)!.sliderinput,
          information:
              "It is a text field located in: \n es_flutter_component/lib/components/es_form/es_slider/es_slider.dart \n and is used as: \n "
              """EsSlider()"""),

    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.decorationColor().background,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.decorationColor().background,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.primaryformtitle,
                ),
                BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.symmetric(
                        horizontal: StructureBuilder.dims!.h0Padding),
                    decoration: BoxDecoration(
                      color: StructureBuilder.styles!.primaryColor,
                    ),
                    children: List.generate(
                        list.length, (index) => boxShow(list[index])))
              ],
            ),
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
