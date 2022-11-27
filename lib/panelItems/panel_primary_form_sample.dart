import 'package:es_flutter_admin_panel/panelItems/widgets/container_items.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_checkbox/es_custom_chechbox_group.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_checkbox/es_custom_checkbox_form.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_drop_down/es_drop_down.dart';
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

class PanelPrimaryFormSample extends StatefulWidget {
  PanelPrimaryFormSample({Key? key}) : super(key: key);

  @override
  State<PanelPrimaryFormSample> createState() => _PanelPrimaryFormSampleState();
}

bool _value1 = false;

String _value3 = "";
TextEditingController _controller = TextEditingController();
List<TextEditingController> _controllerList =
    List.generate(9, (index) => TextEditingController());

class _PanelPrimaryFormSampleState extends State<PanelPrimaryFormSample> {
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
              "the components are located in: \n es_flutter_component>lib/es_form \n  ."),
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
              "It is Horizontal form located in: \n es_flutter_component>lib/es_form \n and is used as: \n "
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
            ),"""),
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
                      AppLocalizations.of(context)!.multiselectsample,
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
                              color: StructureBuilder.styles!.primaryColor)),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
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
                      ),
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
                    Container(
                      height: 100,
                      padding:
                          EdgeInsets.all(StructureBuilder.dims!.h1BorderRadius),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(
                              StructureBuilder.dims!.h1BorderRadius)),
                          border: Border.all(
                              color: StructureBuilder.styles!.primaryColor)),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            EsRadioButtonGroup(
                              titleList: List.generate(
                                  9, (index) => AppLocalizations.of(context)!.item+"${index + 1}"),
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
                      AppLocalizations.of(context)!.textareasample,
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                    IntrinsicHeight(
                      child: EsTextField(
                        hint: AppLocalizations.of(context)!.textArea,
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
          "It is form controls located in: \n es_flutter_component>lib/es_form \n and is used as: \n "
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
                    Container(
                      height: 100,
                      padding:
                          EdgeInsets.all(StructureBuilder.dims!.h1BorderRadius),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(
                              StructureBuilder.dims!.h1BorderRadius)),
                          border: Border.all(
                              color: StructureBuilder.styles!.primaryColor)),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
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
                      ),
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
                              color: StructureBuilder.styles!.primaryColor)),
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
                        customController: EditTextController(),
                        maxLines: 7,
                      ),
                    ),
                  ],
                ),
              ],
            ),"""),
      ContainerItems(
          widget: Container(
            height: _height,
            child: Wrap(
              spacing: StructureBuilder.dims!.h0Padding,
              runSpacing: StructureBuilder.dims!.h0Padding,
              children: [
                EsTextField(
                  hint: AppLocalizations.of(context)!.textFieldHint,
                  customController: EditTextController(),
                  textFieldSize: Size(StructureBuilder.dims!.h0Padding * 20,
                      StructureBuilder.dims!.h0Padding * 2),
                ),
                EsTextField(
                  hint: AppLocalizations.of(context)!.textFieldHint,
                  customController: EditTextController(),
                ),
                EsTextField(
                  hint: AppLocalizations.of(context)!.textFieldHint,
                  customController: EditTextController(),
                  textFieldSize: Size(StructureBuilder.dims!.h0Padding * 7,
                      StructureBuilder.dims!.h0Padding * 2),
                ),
                EsTextField(
                  hint: AppLocalizations.of(context)!.textFieldHint,
                  customController: EditTextController(),
                  textFieldSize: Size(StructureBuilder.dims!.h0Padding * 14,
                      StructureBuilder.dims!.h0Padding * 2.5),
                ),
                EsTextField(
                  hint: AppLocalizations.of(context)!.textFieldHint,
                  customController: EditTextController(),
                  // textFieldSize: Size(StructureBuilder.dims!.h0Padding * 14,
                  //     StructureBuilder.dims!.h0Padding *2.5),
                ),
                EsTextField(
                  hint: AppLocalizations.of(context)!.textFieldHint,
                  customController: EditTextController(),
                  textFieldSize: Size(StructureBuilder.dims!.h0Padding * 14,
                      StructureBuilder.dims!.h0Padding * 1.5),
                ),
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.textfieldindifferentwidthandheight,
          information:
              "they are text fields in different widths and heights located in: \n es_flutter_component>lib/es_form/es_text_field/es_text_field.dart \n and is used as: \n "
              """ EsTextField(
                  hint: AppLocalizations.of(context)!.textFieldHint,
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
                IntrinsicWidth(
                  child: EsDropDown(
                    initialTitle: AppLocalizations.of(context)!.select,
                    list: [
                      {"title": "item1", "_id": "1"},
                      {"title": "item2", "_id": "2"},
                      {"title": "item3", "_id": "3"},
                    ],
                    value: _value3,
                    buttonPadding: EdgeInsets.symmetric(
                      vertical: StructureBuilder.dims!.h1Padding * 1.5,
                      horizontal: StructureBuilder.dims!.h1Padding,
                    ),
                    onChanged: (value) {
                      setState(() {
                        _value3 = value;
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
                    value: _value3,
                    buttonPadding: EdgeInsets.symmetric(
                      vertical: StructureBuilder.dims!.h1Padding,
                      horizontal: StructureBuilder.dims!.h0Padding * 2,
                    ),
                    onChanged: (value) {
                      setState(() {
                        _value3 = value;
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
                    value: _value3,
                    buttonPadding: EdgeInsets.symmetric(
                      vertical: StructureBuilder.dims!.h1Padding,
                      horizontal: StructureBuilder.dims!.h0Padding * 3,
                    ),
                    onChanged: (value) {
                      setState(() {
                        _value3 = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.dropdownbuttonsindifferentwidthandheight,
          information:
              "they are Drop down buttons  in different widths and heights located in: \n es_flutter_component>lib/es_form/es_drop_down/es_drop_down.dart \n and is used as: \n "
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
                ),"""),

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
          title: AppLocalizations.of(context)!.onlyreadablefield,
          information:
          "It is only readable field located in: \n es_flutter_component>lib/es_form/es_text_field/es_text_field.dart \n and is used as: \n "
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
              "It is a text field located in: \n es_flutter_component>lib/es_form/es_slider/es_slider.dart \n and is used as: \n "
              """EsSlider()"""),

///////////////////////////////////////////////////////////

      // ContainerItems(widget:EsPhoneNumberField(),
      //     title:AppLocalizations.of(context)!.phoneNumbertextField,
      //     information:"It is a phone number field located in: \n es_flutter_component>lib>es_form>es_phone_number_field.dart \n and is used as: \n "
      //         """ EsPhoneNumberField()"""
      // ),
      // ContainerItems(widget:EsShabaNumberFieldForm(),
      //     title:AppLocalizations.of(context)!.shabaNumbertextField,
      //     information:"It is a shaba number field located in: \n es_flutter_component>lib>es_form>es_shaba_number_field.dart \n and is used as: \n "
      //         """ EsShabaNumberField()"""
      // ),
      // ContainerItems(widget:EsPriceField(),title: AppLocalizations.of(context)!.priceTextField,
      //     information:"It is a price field located in: \n es_flutter_component>lib>es_form>es_price_field.dart \n and is used as: \n "
      //         """ EsPriceField()"""),
      // ContainerItems(
      //     widget:EsPersianDatePicker(
      //       title: AppLocalizations.of(context)!.datePickerTitle,
      //     ),
      //     title:AppLocalizations.of(context)!.datePickerfa,
      //     information:"It is a jalali date picker located in: \n es_flutter_component>lib>es_form>es_date_time_picker>es_persian_date_picker.dart \n and is used as: \n "
      //         """ EsPersianDatePicker()"""),
      // ContainerItems(
      //     widget:EsEnglishDatePicker(
      //       title: AppLocalizations.of(context)!.datePickerTitle,
      //     ),
      //     title:AppLocalizations.of(context)!.datePickeren,
      //     information:"It is a Gregorian date picker located in: \n es_flutter_component>lib>es_form>es_date_time_picker>es_English_date_picker.dart \n and is used as: \n "
      //         """ EsEnglishDatePicker()"""
      // ),
      // ContainerItems(
      //     widget:EsAndroidTimePicker(
      //       title: AppLocalizations.of(context)!.androidTimePickerTitle,
      //     ),
      //     title:AppLocalizations.of(context)!.timePickerHM,
      //     information:"It is a time picker(H/M)  located in: \n es_flutter_component>lib>es_form>es_date_time_picker>es_android_time_picker.dart \n and is used as: \n "
      //         """ EsAndroidTimePicker(
      //       title: AppLocalizations.of(context)!.androidTimePickerTitle,)"""
      // ),
      // ContainerItems(
      //     widget:EsCupertinoTimePicker(
      //       title: AppLocalizations.of(context)!.cupertinoTimePickerTitle,
      //     ),
      //     title:AppLocalizations.of(context)!.timePickerHMS,
      //     information:"It is a time picker(H/M/S) located in: \n es_flutter_component>lib>es_form>es_date_time_picker>es_cupertino_12h_time_picker.dart \n and is used as: \n "
      //         """ EsCupertinoTimePicker(
      //       title: AppLocalizations.of(context)!.cupertinoTimePickerTitle,)"""
      // ),
      // ContainerItems(widget:EsOrdinarySlider(),
      //     title:AppLocalizations.of(context)!.ordinarySlider,
      //     information:"It is an ordinary slider located in: \n es_flutter_component>lib>es_form>es_ordinary_slider.dart \n and is used as: \n "
      //         """EsOrdinarySlider()"""
      // ),
      // ContainerItems(widget:EsRengedSlider(), title:AppLocalizations.of(context)!.rangedSlider,
      //     information:"It is a ranged slider located in: \n es_flutter_component>lib>es_form>es_ranged_slider.dart \n and is used as: \n "
      //         """EsRengedSlider()"""
      // ),
      // ContainerItems(widget:EsRadioButton(), title:AppLocalizations.of(context)!.radioButons,
      //     information:"It is a radio button located in: \n es_flutter_component>lib>es_form>es_radio_button.dart \n and is used as: \n "
      //         """EsRadioButton()"""
      // ),
      //
      // ContainerItems(widget:EsRatingBar(), title:AppLocalizations.of(context)!.starRateBar,
      //     information:"It is a rating bar located in: \n es_flutter_component>lib>es_form>es_rating_bar.dart \n and is used as: \n "
      //         """EsRatingBar()"""
      // ),
      // ContainerItems(
      //   widget:IntrinsicWidth(
      //     child: EsCheckBox(
      //       title: EsOrdinaryText(
      //         AppLocalizations.of(context)!.checkBoxTitle,
      //       ),
      //       onSaved: (bool) {},
      //       validator: (bool) {},
      //     ),
      //   ),
      //   title:AppLocalizations.of(context)!.ordinaryCheckBox,
      //   information:"It is a ordinary check box located in: \n es_flutter_component>lib>es_form>es_checkbox.dart \n and is used as: \n "
      //       """EsCheckBox(
      //         title: EsOrdinaryText(
      //           data: AppLocalizations.of(context)!.checkBoxTitle,
      //         ),
      //         onSaved: (bool) {},
      //         validator: (bool) {},)""",
      // ),
      // ContainerItems(
      //     widget:IntrinsicWidth(
      //       child: EsCheckBoxvalidation(
      //         title: AppLocalizations.of(context)!.checkBoxWithValidator,
      //         errorText: AppLocalizations.of(context)!.checkBoxErrorText,
      //         buttonText: AppLocalizations.of(context)!.checkBoxButtonText,
      //       ),
      //     ),
      //     title:AppLocalizations.of(context)!.validationCheckBox,
      //     information:"It is a check box with validation located in: \n es_flutter_component>lib>es_form>es_checkbox_validation.dart \n and is used as: \n "
      //         """EsCheckBoxvalidation(
      //         title: AppLocalizations.of(context)!.checkBoxWithValidator,
      //         errorText: AppLocalizations.of(context)!.checkBoxErrorText,
      //         buttonText: AppLocalizations.of(context)!.checkBoxButtonText,
      //       )"""
      // ),
      // ContainerItems(
      //     widget:IntrinsicWidth(
      //       child: EsAnimatedCheckBox(
      //           title: AppLocalizations.of(context)!.animatedCheckBoxTitle),
      //     ),
      //     title:AppLocalizations.of(context)!.animationCheckBox,
      //     information:"It is an animated check box located in: \n es_flutter_component>lib>es_form>es_animated_checkbox.dart \n and is used as: \n "
      //         """EsAnimatedCheckBox(
      //           title: AppLocalizations.of(context)!.animatedCheckBoxTitle)"""
      // ),
      // ContainerItems(
      //     widget:EsDropDownButton(
      //       items: [
      //         // "گزینه1","گزینه2","گزینه3",
      //         AppLocalizations.of(context)!.dropDown1,
      //         AppLocalizations.of(context)!.dropDown2,
      //         AppLocalizations.of(context)!.dropDown3,
      //       ],
      //       onTapItems: [() {}, () {}, () {}],
      //     ),
      //     title:AppLocalizations.of(context)!.dropDownButton,
      //     information:"It is dropp down button located in: \n es_flutter_component>lib>es_form>es_drop_down_button.dart \n and is used as: \n "
      //         """EsDropDownButton(
      //       items: [
      //         AppLocalizations.of(context)!.dropDown1,
      //         AppLocalizations.of(context)!.dropDown2,
      //         AppLocalizations.of(context)!.dropDown3,
      //       ],
      //       onTapItems: [() {}, () {}, () {}],
      //     )"""
      // ),
      // ContainerItems(widget:ESToggleButton(), title:AppLocalizations.of(context)!.toggleButton,
      //     information:"It is toggle button located in: \n es_flutter_component>lib>es_form>es_toggle_button.dart \n and is used as: \n "
      //         """ESToggleButton()"""
      // ),
      // ContainerItems(
      //     widget:Center(
      //         child:Container()
      //       //     EsFilePicker(
      //       //   openText: AppLocalizations.of(context)!.openText,
      //       //   pickText: AppLocalizations.of(context)!.pickText,
      //       //   clearText: AppLocalizations.of(context)!.clearText,
      //       // )
      //     ),
      //     title:AppLocalizations.of(context)!.filePicker,
      //     information:"It is file picker located in: \n es_flutter_component>lib>es_form>es_file picker.dart \n and is used as: \n "
      //         """EsFilePicker(
      //       openText: AppLocalizations.of(context)!.openText,
      //       pickText: AppLocalizations.of(context)!.pickText,
      //       clearText: AppLocalizations.of(context)!.clearText,
      //     )"""
      // ),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
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
