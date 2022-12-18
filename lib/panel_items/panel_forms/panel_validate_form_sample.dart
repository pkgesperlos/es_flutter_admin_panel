import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/components/es_form/es_checkbox/es_custom_checkbox_form.dart';
import 'package:es_flutter_component/components/es_form/es_checkbox/es_custom_checkbox_group_form.dart';
import 'package:es_flutter_component/components/es_form/es_color_picker/es_color_picker_form.dart';
import 'package:es_flutter_component/components/es_form/es_color_picker/es_ring_color_picker_form.dart';
import 'package:es_flutter_component/components/es_form/es_date_time_picker/es_android_time_picker_form.dart';
import 'package:es_flutter_component/components/es_form/es_date_time_picker/es_cupertino_time_picker_form.dart';
import 'package:es_flutter_component/components/es_form/es_date_time_picker/es_english_date_picker_form.dart';
import 'package:es_flutter_component/components/es_form/es_date_time_picker/es_persian_date_picker_form.dart';
import 'package:es_flutter_component/components/es_form/es_drop_down/es_drop_down_form.dart';
import 'package:es_flutter_component/components/es_form/es_file_picker/es_file_picker.dart';
import 'package:es_flutter_component/components/es_form/es_file_picker/es_file_picker_form.dart';
import 'package:es_flutter_component/components/es_form/es_label_input/es_label_input_form.dart';
import 'package:es_flutter_component/components/es_form/es_radio_button/es_radio_button_group_form.dart';
import 'package:es_flutter_component/components/es_form/es_slider/es_slider_form.dart';
import 'package:es_flutter_component/components/es_form/es_text_field/es_text_field_form.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelValidateFormSample extends StatefulWidget {

  static const routeName = '/panelValidateFormSample';

  PanelValidateFormSample({Key? key}) : super(key: key);

  @override
  State<PanelValidateFormSample> createState() =>
      _PanelValidateFormSampleState();
}

class _PanelValidateFormSampleState extends State<PanelValidateFormSample> {
  final _formkey = GlobalKey<FormState>();

  bool _value1 = false;
  List _labelList2 = [
    {"title": "item1", "_id": "1"},
    {"title": "item2", "_id": "2"},
    {"title": "item3", "_id": "3"},
    {"title": "item4", "_id": "4"},
    {"title": "item5", "_id": "5"},
  ];
  String _value3 = "";
  TextEditingController _controller = TextEditingController();
  EsFilePickerController _controller2 = EsFilePickerController();
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
            // height: _height,
            child: Wrap(
              direction: Axis.horizontal,
              spacing: StructureBuilder.dims!.h0Padding,
              runSpacing: StructureBuilder.dims!.h0Padding,
              children: [
                Form(
                  key: _formkey,
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
                          EsTextFieldForm(
                            hint: "",
                            label:
                                AppLocalizations.of(context)!.pleaseenteremail,
                            validator: (value) {
                              if (value!.length < 4) {
                                return AppLocalizations.of(context)!
                                    .theinputlengthistooshort;
                              }
                            },
                          ),
                          EsVSpacer(),
                          EsOrdinaryText(
                            AppLocalizations.of(context)!.pleaseenteremail,
                            color: StructureBuilder.styles!.secondaryColor,
                          ),
                        ],
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
                            child: EsDropDownForm(
                              initialTitle:
                                  AppLocalizations.of(context)!.select,
                              list: [
                                {"title": "item1", "_id": "1"},
                                {"title": "item2", "_id": "2"},
                                {"title": "item3", "_id": "3"},
                              ],
                              value: _value3,
                              validator: (value) {
                                if (value == "") {
                                  return AppLocalizations.of(context)!
                                      .pleaseselectoneitem;
                                }
                              },
                            ),
                          ),
                        ],
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
                          EsCustomCheckBoxGroupForm(
                            titleList: List.generate(
                                9,
                                (index) =>
                                    AppLocalizations.of(context)!.item +
                                    "${index + 1}"),
                            controller: _controller,
                            controllerList: _controllerList,
                            axis: Axis.vertical,
                            valueList: List.generate(9, (index) => false),
                            validator: (value) {
                              if (value == null) {
                                return AppLocalizations.of(context)!
                                    .pleaseselectatleastoneitem;
                              }
                            },
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
                          EsRadioButtonGroupForm(
                            titleList: List.generate(
                                9,
                                (index) =>
                                    AppLocalizations.of(context)!.item +
                                    "${index + 1}"),
                            controller: TextEditingController(),
                            axis: Axis.vertical,
                            validator: (value) {
                              if (value == null) {
                                return AppLocalizations.of(context)!
                                    .pleaseselectoneitem;
                              }
                            },
                          ),
                        ],
                      ),
                      EsCustomCheckBoxForm(
                        titleWidget: EsTitle(
                          AppLocalizations.of(context)!.pleaseselectme,
                        ),
                        value: _value1,
                        validator: (value) {
                          if (value == false) {
                            return AppLocalizations.of(context)!
                                .youshouldacceptthetermsandconditionsbeforeregister;
                          }
                        },
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          EsOrdinaryText(
                              AppLocalizations.of(context)!.filePicker),
                          EsVSpacer(),
                          EsFilePickerForm(
                            onSaved: (String? newValue) {},
                            validator: (String? value) {
                              if (value == "")
                                return AppLocalizations.of(context)!
                                    .pleaseselectoneitem;
                            },
                            controller: _controller2,
                          ),
                        ],
                      ),
                      EsColorPickerForm(
                        title: AppLocalizations.of(context)!.selectcolor,
                        onSaved: (Color? newValue) {},
                        validator: (Color? value) {
                          if (value != "")
                            return AppLocalizations.of(context)!
                                .pleaseselectoneitem;
                        },
                      ),
                      EsRingColorPickerForm(
                        title: AppLocalizations.of(context)!.selectcolor,
                        onSaved: (Color? newValue) {},
                        validator: (Color? value) {
                          if (value != "")
                            return AppLocalizations.of(context)!
                                .pleaseselectoneitem;
                        },
                      ),
                      EsPersianDatePickerForm(
                        title: AppLocalizations.of(context)!.select,
                        onSaved: (String? newValue) {},
                        validator: (String? value) {
                          if (value == "")
                            return AppLocalizations.of(context)!
                                .pleaseselectoneitem;
                        },
                      ),
                      EsEnglishDatePickerForm(
                        title: AppLocalizations.of(context)!.select,
                        onSaved: (String? newValue) {},
                        validator: (String? value) {
                          if (value == "")
                            return AppLocalizations.of(context)!
                                .pleaseselectoneitem;
                        },
                      ),
                      EsCupertinoTimePickerForm(
                        title: AppLocalizations.of(context)!.select,
                        onSaved: (String? newValue) {},
                        validator: (String? value) {
                          if (value == "")
                            return AppLocalizations.of(context)!
                                .pleaseselectoneitem;
                        },
                      ),
                      EsAndroidTimePickerForm(
                        title: AppLocalizations.of(context)!.select,
                        onSaved: (String? newValue) {},
                        validator: (String? value) {
                          if (value == "")
                            return AppLocalizations.of(context)!
                                .pleaseselectoneitem;
                        },
                      ),
                      EsSliderForm(
                        validator: (value) {
                          if (value == 0) {
                            return AppLocalizations.of(context)!
                                .pleaseselectavalue;
                          }
                        },
                      ),
                      Column(
                        children: [
                          EsOrdinaryText(
                            AppLocalizations.of(context)!.labelinput,
                          ),
                          EsVSpacer(),
                          EsLabelInputForm(
                            labelList: _labelList2,
                            validator: (value) {
                              if (value == null) {
                                return AppLocalizations.of(context)!
                                    .pleaseselectatleastoneitem;
                              }
                            },
                            value: '',
                          ),
                          EsVSpacer()
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
                          EsTextFieldForm(
                            hint: AppLocalizations.of(context)!.textArea,
                            label: AppLocalizations.of(context)!.textArea,
                            maxLines: 7,
                            validator: (value) {
                              if (value!.length < 4) {
                                return AppLocalizations.of(context)!
                                    .theinputlengthistooshort;
                              }
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                EsButton(
                  text: AppLocalizations.of(context)!.login,
                  // child: Text(Translations.of(context).text("login")),
                  onTap: () {
                    if (_formkey.currentState?.validate() == true) {
                      // print("okkkkkkkkkkkkkkkkkkkkkkkkkkk");
                    }
                    // {Navigator.pushNamed(context, '/tree');}
                  },
                )
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.validationforms,
          information:
              "It is form controls located in: \n es_flutter_component>lib/es_form \n and is used as: \n "
              """Wrap(
              direction: Axis.horizontal,
              spacing: StructureBuilder.dims!.h0Padding,
              runSpacing: StructureBuilder.dims!.h0Padding,
              children: [
                Form(
                  key: _formkey,
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
                          EsTextFieldForm(
                            hint: "",
                            label:
                                AppLocalizations.of(context)!.pleaseenteremail,
                            validator: (value) {
                              if (value!.length < 4) {
                                return AppLocalizations.of(context)!
                                    .theinputlengthistooshort;
                              }
                            },
                          ),
                          EsVSpacer(),
                          EsOrdinaryText(
                            AppLocalizations.of(context)!.pleaseenteremail,
                            color: StructureBuilder.styles!.secondaryColor,
                          ),
                        ],
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
                            child: EsDropDownForm(
                              initialTitle:
                                  AppLocalizations.of(context)!.select,
                              list: [
                                {"title": "item1", "_id": "1"},
                                {"title": "item2", "_id": "2"},
                                {"title": "item3", "_id": "3"},
                              ],
                              value: _value3,
                              validator: (value) {
                                if (value == "") {
                                  return AppLocalizations.of(context)!
                                      .pleaseselectoneitem;
                                }
                              },
                            ),
                          ),
                        ],
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
                          EsCustomCheckBoxGroupForm(
                            titleList: List.generate(
                                9,
                                (index) =>
                                    AppLocalizations.of(context)!.item +
                                    "index"),
                            controller: _controller,
                            controllerList: _controllerList,
                            axis: Axis.vertical,
                            valueList: List.generate(9, (index) => false),
                            validator: (value) {
                              if (value == null) {
                                return AppLocalizations.of(context)!
                                    .pleaseselectatleastoneitem;
                              }
                            },
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
                          EsRadioButtonGroupForm(
                            titleList: List.generate(
                                9,
                                (index) =>
                                    AppLocalizations.of(context)!.item +
                                    "index"),
                            controller: TextEditingController(),
                            axis: Axis.vertical,
                            validator: (value) {
                              if (value == null) {
                                return AppLocalizations.of(context)!
                                    .pleaseselectoneitem;
                              }
                            },
                          ),
                        ],
                      ),

                      EsCustomCheckBoxForm(
                        titleWidget: EsTitle(
                          AppLocalizations.of(context)!.pleaseselectme,
                        ),
                        value: _value1,
                        validator: (value) {
                          if (value == false) {
                            return AppLocalizations.of(context)!
                                .youshouldacceptthetermsandconditionsbeforeregister;
                          }
                        },
                      ),
                      Column(
                        children: [
                          EsOrdinaryText(AppLocalizations.of(context)!.labelinput,),
                          EsVSpacer(),
                          EsLabelInputForm(
                            labelList: labelList2,
                            validator: (value) {
                              if (value == null) {
                                return AppLocalizations.of(context)!
                                    .pleaseselectatleastoneitem;
                              }
                            },
                            value: '',
                          ),
                          EsVSpacer()
                        ],
                      ),
                      EsSliderForm(
                        validator: (value) {
                          if (value == 0) {
                            return AppLocalizations.of(context)!
                                .pleaseselectavalue;
                          }
                        },
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

                          EsTextFieldForm(
                            hint: AppLocalizations.of(context)!.textArea,
                            label: AppLocalizations.of(context)!.textArea,
                            maxLines: 7,
                            validator: (value) {
                              if (value!.length < 4) {
                                return AppLocalizations.of(context)!
                                    .theinputlengthistooshort;
                              }
                            },
                          ),


                        ],
                      ),
                    ],
                  ),
                ),
                EsButton(
                  text: AppLocalizations.of(context)!.login,
                  // child: Text(Translations.of(context).text("login")),
                  onTap: () {
                    if (_formkey.currentState?.validate() == true) {
                      // print("okkkkkkkkkkkkkkkkkkkkkkkkkkk");
                    }
                    // {Navigator.pushNamed(context, '/tree');}
                  },
                )
              ],
            ), \n
            where \n 
            final _formkey = GlobalKey<FormState>(); \n
            String _value3 = "";\n
            TextEditingController _controller = TextEditingController();\n
            EsFilePickerController _controller2 = EsFilePickerController();\n
            List<TextEditingController> _controllerList =\n
            List.generate(9, (index) => TextEditingController());\n
            bool _value1 = false;"""),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: Scaffold(
          backgroundColor: StructureBuilder.styles!.primaryDarkColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.validationformstitle,
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
