import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/components/es_form/es_color_picker/es_color_picker.dart';
import 'package:es_flutter_component/components/es_form/es_color_picker/es_ring_color_picker.dart';
import 'package:es_flutter_component/components/es_form/es_date_time_picker/es_android_time_picker.dart';
import 'package:es_flutter_component/components/es_form/es_date_time_picker/es_cupertino_12h_time_picker.dart';
import 'package:es_flutter_component/components/es_form/es_date_time_picker/es_cupertino_time_picker.dart';
import 'package:es_flutter_component/components/es_form/es_date_time_picker/es_english_date_picker.dart';
import 'package:es_flutter_component/components/es_form/es_date_time_picker/es_persian_date_picker.dart';
import 'package:es_flutter_component/components/es_form/es_file_picker/es_file_picker.dart';
import 'package:es_flutter_component/components/es_form/es_label_input/es_label_input.dart';
import 'package:es_flutter_component/components/es_form/es_label_input/es_label_input_seprated_drop_down.dart';
import 'package:es_flutter_component/components/es_form/es_slider/es_range_slider.dart';
import 'package:es_flutter_component/components/es_form/es_slider/es_slider.dart';
import 'package:es_flutter_component/components/es_form/es_text_field/es_masked_input_textfield/es_masked_input_text_field.dart';

import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:pattern_formatter/numeric_formatter.dart';

import 'package:intl/intl.dart' as intl;

class PanelAdvancedFormSample extends StatefulWidget {
  PanelAdvancedFormSample({Key? key}) : super(key: key);

  @override
  State<PanelAdvancedFormSample> createState() =>
      _PanelAdvancedFormSampleState();
}

class _PanelAdvancedFormSampleState extends State<PanelAdvancedFormSample> {
  EsFilePickerController _filePickerController = EsFilePickerController();
  TextEditingController _textController =
      TextEditingController(text: '#2F19DB');
  double _value1 = 0;
  double _value2 = 0;
  double _value6 = 0;
  RangeValues _value3 = RangeValues(2000, 8000);
  Color _value4 = StructureBuilder.styles!.primaryColor;
  Color _value5 = StructureBuilder.styles!.primaryColor;
  List<String> _mounthList = [
    "اسفند",
    "فروردین",
    "اردیبهشت",
    "خرداد",
    "تیر",
    "مرداد",
    "شهریور",
    "مهر",
    "آبان",
    "آذر",
    "دی",
    "بهمن",
  ];
  List _labelList = [
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
    bool isDirectionRTL(BuildContext context) {
      return intl.Bidi.isRtlLanguage(
          Localizations.localeOf(context).languageCode);
    }

    bool _rtl = isDirectionRTL(context);

    double _height = 600;
    double _height2 = 145;
    List list = [
      ContainerItems(
          widget: Container(
            height: _height,
            child: Wrap(
              spacing: StructureBuilder.dims!.h0Padding * 2,
              runSpacing: StructureBuilder.dims!.h0Padding,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.shabaNumbertextField,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsMaskedInputTextField(
                      textAlign: TextAlign.left,
                      hint: "IR",
                      label: AppLocalizations.of(context)!.shabanumberinput,
                      maskTextInputFormatter: MaskTextInputFormatter(
                          mask: 'IR-####-####-####-####-####-####',
                          filter: {"#": RegExp(r'[0-9]')},
                          type: MaskAutoCompletionType.lazy),
                      customController: EditTextController(),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.phonenumberinput,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsMaskedInputTextField(
                      textAlign: TextAlign.left,
                      hint: "",
                      label: AppLocalizations.of(context)!.phonenumberinput,
                      maskTextInputFormatter: MaskTextInputFormatter(
                          mask: '(###)-##-##-####',
                          filter: {"#": RegExp(r'[0-9]')},
                          type: MaskAutoCompletionType.lazy),
                      customController: EditTextController(),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.dateinput,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsMaskedInputTextField(
                      textAlign: TextAlign.left,
                      hint: "",
                      label: AppLocalizations.of(context)!.dateinput,
                      maskTextInputFormatter: MaskTextInputFormatter(
                          mask: '####/##/##',
                          filter: {"#": RegExp(r'[0-9]')},
                          type: MaskAutoCompletionType.lazy),
                      customController: EditTextController(),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.timeinput,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsMaskedInputTextField(
                      textAlign: TextAlign.left,
                      hint: "",
                      label: AppLocalizations.of(context)!.timeinput,
                      maskTextInputFormatter: MaskTextInputFormatter(
                          mask: '##:##:##',
                          filter: {"#": RegExp(r'[0-9]')},
                          type: MaskAutoCompletionType.lazy),
                      customController: EditTextController(),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.currencyinput,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsMaskedInputTextField(
                      textAlign: TextAlign.left,
                      hint: "",
                      label: AppLocalizations.of(context)!.currencyinput,
                      maskTextInputFormatter:
                          ThousandsFormatter(allowFraction: true),
                      customController: EditTextController(),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.ipaddressinput,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsMaskedInputTextField(
                      textAlign: TextAlign.left,
                      hint: "",
                      label: AppLocalizations.of(context)!.ipaddressinput,
                      maskTextInputFormatter: MaskTextInputFormatter(
                          mask: '###.###.###.###',
                          filter: {"#": RegExp(r'[0-9]')},
                          type: MaskAutoCompletionType.lazy),
                      customController: EditTextController(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.maskedinput,
          information:
              "They are masked input text fields  in this panel by flutter code. \n "
              "the mask_text_input_formatter and pattern_formatter packages are added in pubspec.yaml dependencies as each utility\n "
              "  and is used as: \n "
              """EsMaskedInputTextField(
                    textAlign: TextAlign.left,
                    hint: "IR",
                    label: "Shaba number:",
                    maskTextInputFormatter:
                  MaskTextInputFormatter(
                      mask: 'IR-(####)-####-####-####-####-####',
                      filter: {"#": RegExp(r'[0-9]')},
                      type: MaskAutoCompletionType.lazy),
                    customController: EditTextController(),),"""),
      ContainerItems(
          widget: Container(
            height: _height,
            child: Wrap(
              spacing: StructureBuilder.dims!.h0Padding * 2,
              runSpacing: StructureBuilder.dims!.h0Padding,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.sliderwithjustintegerselect,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsSlider(
                      min: 0,
                      max: 10,
                      divisions: 10,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.sliderwithdoubleselect,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsSlider(
                      min: 0,
                      max: 10,
                      divisions: 100,
                      subTitleWidget: EsTitle(
                        _value1.toString(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _value1 = value!;
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.sliderwithcurrencylabel,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsSlider(
                      min: 0,
                      max: 7000,
                      divisions: 100,
                      subTitleWidget: EsTitle(
                        _value2.toString() + "\$",
                      ),
                      onChanged: (value) {
                        setState(() {
                          _value2 = value!;
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.sliderwithstringchoice,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsSlider(
                      min: 0,
                      max: 11,
                      // divisions: 11,
                      subTitleWidget: EsTitle(_mounthList[(_value6.round())]),
                      onChanged: (value) {
                        setState(() {
                          _value6 = value!;
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.sliderwithcurrencylabel,
                    ),
                    EsVSpacer(
                      big: true,
                      factor: 2,
                    ),
                    EsRangeSlider(
                      min: 2000,
                      max: 8000,
                      divisions: 600,
                      subTitleWidget: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          EsTitle(
                            "تومان" + _value3.start.round().toString(),
                          ),
                          EsTitle(
                            "تومان" + _value3.end.round().toString(),
                          ),
                        ],
                      ),
                      onChanged: (values) {
                        setState(() {
                          _value3 = values;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.sliderinput,
          information:
              "They are slider input text fields  in this panel by flutter code. \n"
              "located in: \n es_flutter_component>lib/es_form/es_slider/es_slider.dart \n  "
              "  and is used as: \n "
              """EsRangeSlider(
                    min: 2000,
                    max: 8000,
                    divisions: 600,
                    subTitleWidget: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        EsTitle(
                          "تومان" + _value3.start.round().toString(),
                        ),
                        EsTitle(
                          "تومان" + _value3.end.round().toString(),
                        ),
                      ],
                    ),
                    onChanged: (values) {
                      setState(() {
                        _value3 = values;
                      });
                    },
                  ),"""),
      ContainerItems(
          widget: Container(
            // height: _height2,
            child: Wrap(
              spacing: StructureBuilder.dims!.h0Padding,
              direction: Axis.vertical,
              children: [
                EsLabelInput(labelList: labelList2),
                EsLabelInputSepratedDropDown(labelList: _labelList),
              ],
            ),
          ),
          title: AppLocalizations.of(context)!.labelinput,
          information: "They are label inputs in this panel by flutter code.  "
              "Some of the components are located in: \n es_flutter_component>lib/es_form/es_drop_down \n  and is used as: \n."
              """  EsLabelInput(labelList: labelList2),"""),
      ContainerItems(
          widget: Container(
            height: _height2,
            child: EsPersianDatePicker(
              title: AppLocalizations.of(context)!.select,
            ),
          ),
          title: AppLocalizations.of(context)!.datePickerfa,
          information:
              "It is a jalali date picker located in: \n es_flutter_component/lib/components/es_form>es_date_time_picker>es_persian_date_picker.dart \n and is used as: \n "
              """ EsPersianDatePicker()"""),
      ContainerItems(
          widget: Container(
            height: _height2,
            child: EsEnglishDatePicker(
              title: AppLocalizations.of(context)!.select,
            ),
          ),
          title: AppLocalizations.of(context)!.datePickeren,
          information:
              "It is a Gregorian date picker located in: \n es_flutter_component/lib/components/es_form>es_date_time_picker>es_English_date_picker.dart \n and is used as: \n "
              """ EsEnglishDatePicker()"""),
      ContainerItems(
          widget: Container(
            height: _height2,
            alignment: _rtl ? Alignment.topRight : Alignment.topLeft,
            child: EsAndroidTimePicker(
              title: AppLocalizations.of(context)!.select,
            ),
          ),
          title: AppLocalizations.of(context)!.timePickerHM,
          information:
              "It is a time picker(H/M)  located in: \n es_flutter_component/lib/components/es_form>es_date_time_picker>es_android_time_picker.dart \n and is used as: \n "
              """ EsAndroidTimePicker(
            title: AppLocalizations.of(context)!.androidTimePickerTitle,)"""),
      ContainerItems(
          widget: Container(
            height: _height2,
            child: EsCupertinoTimePicker(
              title: AppLocalizations.of(context)!.select,
            ),
          ),
          title: AppLocalizations.of(context)!.timePickerHMS,
          information:
              "It is a time picker(H/M/S) located in: \n es_flutter_component/lib/components/es_form>es_date_time_picker>es_cupertino_time_picker.dart \n and is used as: \n "
              """ EsCupertinoTimePicker(
            title: AppLocalizations.of(context)!.cupertinoTimePickerTitle,)"""),
      ContainerItems(
          widget: Container(
            height: _height2,
            alignment: _rtl ? Alignment.topRight : Alignment.topLeft,
            child: EsCupertino12HTimePicker(
              title: AppLocalizations.of(context)!.select,
            ),
          ),
          title:AppLocalizations.of(context)!.timePickerHM+AppLocalizations.of(context)!.ampm,
          information:
              "It is a time picker 12h located in: \n es_flutter_component/lib/components/es_form>es_date_time_picker>es_cupertino_12h_time_picker.dart "
                  "\n and is used as: \n "
              """EsCupertino12HTimePicker(
              title: AppLocalizations.of(context)!.select,
            ),"""),
      ContainerItems(
          widget: Container(
            height: _height2,
            alignment: _rtl ? Alignment.topRight : Alignment.topLeft,
            child:  EsFilePicker(
              controller: _filePickerController,
            ),
          ),
          title: AppLocalizations.of(context)!.filePicker,
          information:
              "It is a file picker located in: \n es_flutter_component/lib/components/es_form/es_file_picker/es_file_picker.dart \n and is used as: \n "
              """ EsFilePicker(
              controller: _filePickerController,
            ),"""),
      ContainerItems(
        widget: Container(
            height: _height2,
            alignment:_rtl?Alignment.topRight:Alignment.topLeft ,
            child: EsColorPicker(title:  AppLocalizations.of(context)!.selectcolor,)),

          title: AppLocalizations.of(context)!.colorpicker,
          information:
              "It is a color picker that the flutter_colorpicker package is added in pubspec.yaml 's dependencies"
              " \n and is used as: \n "
              """EsColorPicker(title:  AppLocalizations.of(context)!.selectcolor,)),
"""),
      ContainerItems(
          widget: Container(
            height: _height2,
              alignment: _rtl ? Alignment.topRight : Alignment.topLeft,
              child: EsRingColorPicker(
                title: AppLocalizations.of(context)!.selectcolor,)),
          title: AppLocalizations.of(context)!.ringcolorpicker,
          information:
              "It is a color picker that the flutter_colorpicker package is added in pubspec.yaml 's dependencies"
              " \n and is used as: \n "
              """EsRingColorPicker(
                title: AppLocalizations.of(context)!.selectcolor,)"""),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.advancedformtitle,
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
