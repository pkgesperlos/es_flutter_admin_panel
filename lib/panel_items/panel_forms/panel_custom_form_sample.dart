
import 'package:es_flutter_component/components/es_form/es_checkbox/es_custom_chechbox_group.dart';
import 'package:es_flutter_component/components/es_form/es_checkbox/es_custom_check_box.dart';
import 'package:es_flutter_component/components/es_form/es_checkbox/es_custom_checkbox_form.dart';
import 'package:es_flutter_component/components/es_form/es_drop_down/es_drop_down.dart';
import 'package:es_flutter_component/components/es_form/es_radio_button/es_radio_button_group.dart';
import 'package:es_flutter_component/components/es_form/es_radio_button/es_radio_button_group_form.dart';
import 'package:es_flutter_component/components/es_form/es_slider/es_slider.dart';
import 'package:es_flutter_component/components/es_form/es_text_field/es_text_field.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelCustomFormSample extends StatefulWidget {

  static const routeName = '/panelCustomFormSample';

  PanelCustomFormSample({Key? key}) : super(key: key);

  @override
  State<PanelCustomFormSample> createState() => _PanelCustomFormSampleState();
}



class _PanelCustomFormSampleState extends State<PanelCustomFormSample> {
  List<bool> _value=List.generate(20, (index) => true);


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
    double _height = 500;
    List list = [
      ContainerItems(
          widget: Container(
              height: _height,
              child: Wrap(
                direction: Axis.vertical,
                spacing: StructureBuilder.dims!.h0Padding * 2,
                runSpacing: StructureBuilder.dims!.h0Padding,
                children: [
                  Wrap(
                    spacing: StructureBuilder.dims!.h1Padding,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      Checkbox(
                          activeColor: StructureBuilder.styles!.primaryDarkColor,
                          //The color to use when this checkbox is checked.
                          checkColor:
                              StructureBuilder.styles!.primaryLightColor,
                          // The color to use for the check icon when this checkbox is checked.
                          value: _value[0],
                          onChanged: (value) {
                            setState(() {
                              _value[0] = value!;
                            });
                          }),
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.checkbox +
                            " - " +
                            AppLocalizations.of(context)!.primary,
                      )
                    ],
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h1Padding,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      Checkbox(
                          activeColor: StructureBuilder.styles!.secondaryColor,
                          //The color to use when this checkbox is checked.
                          checkColor:
                              StructureBuilder.styles!.primaryLightColor,
                          // The color to use for the check icon when this checkbox is checked.
                          value:  _value[1],
                          onChanged: (value) {
                            setState(() {
                              _value[1] = value!;
                            });
                          }),
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.checkbox +
                            " - " +
                            AppLocalizations.of(context)!.secondary,
                      )
                    ],
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h1Padding,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      Checkbox(
                          activeColor:
                              StructureBuilder.styles!.dangerColor().dangerDark,
                          //The color to use when this checkbox is checked.
                          checkColor:
                              StructureBuilder.styles!.primaryLightColor,
                          // The color to use for the check icon when this checkbox is checked.
                          value:  _value[2],
                          onChanged: (value) {
                            setState(() {
                              _value[2] = value!;
                            });
                          }),
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.checkbox +
                            " - " +
                            AppLocalizations.of(context)!.error,
                      )
                    ],
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h1Padding,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      Checkbox(
                          activeColor: StructureBuilder.styles!
                              .warningColor()
                              .warningDark,
                          //The color to use when this checkbox is checked.
                          checkColor:
                              StructureBuilder.styles!.primaryLightColor,
                          // The color to use for the check icon when this checkbox is checked.
                          value:  _value[3],
                          onChanged: (value) {
                            setState(() {
                              _value[3] = value!;
                            });
                          }),
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.checkbox +
                            " - " +
                            AppLocalizations.of(context)!.warning,
                      )
                    ],
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h1Padding,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      Checkbox(
                          activeColor: StructureBuilder.styles!
                              .informationColor()
                              .informationDark,
                          //The color to use when this checkbox is checked.
                          checkColor:
                              StructureBuilder.styles!.primaryLightColor,
                          // The color to use for the check icon when this checkbox is checked.
                          value:  _value[4],
                          onChanged: (value) {
                            setState(() {
                              _value[4] = value!;
                            });
                          }),
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.checkbox +
                            " - " +
                            AppLocalizations.of(context)!.information,
                      )
                    ],
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h1Padding,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      Checkbox(
                          activeColor: StructureBuilder.styles!
                              .successColor()
                              .successDark,
                          //The color to use when this checkbox is checked.
                          checkColor:
                              StructureBuilder.styles!.primaryLightColor,
                          // The color to use for the check icon when this checkbox is checked.
                          value:  _value[5],
                          onChanged: (value) {
                            setState(() {
                              _value[5] = value!;
                            });
                          }),
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.checkbox +
                            " - " +
                            AppLocalizations.of(context)!.success,
                      )
                    ],
                  ),
                ],
              )),
          title: AppLocalizations.of(context)!.checkbox,
          information:
              "these are Checkbox in custom colors  and are used as: \n "
              """Checkbox(
                          activeColor: StructureBuilder.styles!.primaryDarkColor,
                          //The color to use when this checkbox is checked.
                          checkColor: StructureBuilder.styles!.primaryLightColor,
                          // The color to use for the check icon when this checkbox is checked.
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          }),"""
                  "\n   where \n"
                  """
      bool _value=true;
          """),
      ContainerItems(
          widget: Container(
              height: _height,
              child: Wrap(
                direction: Axis.vertical,
                spacing: StructureBuilder.dims!.h0Padding,
                runSpacing: StructureBuilder.dims!.h0Padding,
                children: [
                  Wrap(
                    spacing: StructureBuilder.dims!.h0Padding,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.sliderinput +
                            " - " +
                            AppLocalizations.of(context)!.primary,
                      ),
                      EsSlider(),
                    ],
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h0Padding * 2,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.sliderinput +
                            " - " +
                            AppLocalizations.of(context)!.error,
                      ),
                      EsSlider(
                        activeColor: StructureBuilder.styles!.secondaryColor,
                      ),
                    ],
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h0Padding,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.sliderinput +
                            " - " +
                            AppLocalizations.of(context)!.secondary,
                      ),
                      EsSlider(
                        activeColor: StructureBuilder.styles!
                            .dangerColor()
                            .dangerRegular,
                        thumbColor: StructureBuilder.styles!
                            .dangerColor()
                            .dangerRegular,
                      ),
                    ],
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h0Padding,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.sliderinput +
                            " - " +
                            AppLocalizations.of(context)!.information,
                      ),
                      EsSlider(
                        activeColor: StructureBuilder.styles!
                            .informationColor()
                            .informationRegular,
                        thumbColor: StructureBuilder.styles!
                            .informationColor()
                            .informationRegular,
                      ),
                    ],
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h0Padding,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.sliderinput +
                            " - " +
                            AppLocalizations.of(context)!.warning,
                      ),
                      EsSlider(
                        activeColor: StructureBuilder.styles!
                            .warningColor()
                            .warningRegular,
                        thumbColor: StructureBuilder.styles!
                            .warningColor()
                            .warningRegular,
                      ),
                    ],
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h0Padding,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.sliderinput +
                            " - " +
                            AppLocalizations.of(context)!.success,
                      ),
                      EsSlider(
                        activeColor: StructureBuilder.styles!
                            .successColor()
                            .successRegular,
                        thumbColor: StructureBuilder.styles!
                            .successColor()
                            .successRegular,
                      ),
                    ],
                  ),
                ],
              )),
          title: AppLocalizations.of(context)!.sliderinput,
          information:
              "these are slider inputs in custom colors located in: \n es_flutter_component/lib/components/es_form/es_slider/es_slider.dart \n and is used as: \n "
              """EsSlider(
                activeColor:
                    StructureBuilder.styles!.dangerColor().dangerRegular,
                thumbColor:
                    StructureBuilder.styles!.dangerColor().dangerRegular,
              ),"""

      ),
      ContainerItems(
          widget: Container(
              height: _height,
              child: Wrap(
                spacing: StructureBuilder.dims!.h0Padding * 2,
                runSpacing: StructureBuilder.dims!.h0Padding,
                children: [
                  Wrap(
                    spacing: StructureBuilder.dims!.h1Padding,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      Transform.scale(
                        scale: 0.7,
                        child: CupertinoSwitch(
                          activeColor: StructureBuilder.styles!.primaryDarkColor,
                          onChanged: (bool value) {
                            setState(() {
                              _value[6] = value;
                            });
                          },
                          value:  _value[6],
                        ),
                      ),
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.switchbutton +
                            " - " +
                            AppLocalizations.of(context)!.primary,
                      )
                    ],
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h1Padding,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      Transform.scale(
                        scale: 0.7,
                        child: CupertinoSwitch(
                          activeColor: StructureBuilder.styles!.secondaryColor,
                          onChanged: (bool value) {
                            setState(() {
                              _value[7] = value;
                            });
                          },
                          value:  _value[7],
                        ),
                      ),
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.switchbutton +
                            " - " +
                            AppLocalizations.of(context)!.secondary,
                      )
                    ],
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h1Padding,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      Transform.scale(
                        scale: 0.7,
                        child: CupertinoSwitch(
                          activeColor: StructureBuilder.styles!
                              .dangerColor()
                              .dangerRegular,
                          onChanged: (bool value) {
                            setState(() {
                              _value[8] = value;
                            });
                          },
                          value:  _value[8],
                        ),
                      ),
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.switchbutton +
                            " - " +
                            AppLocalizations.of(context)!.error,
                      )
                    ],
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h1Padding,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      Transform.scale(
                        scale: 0.7,
                        child: CupertinoSwitch(
                          activeColor: StructureBuilder.styles!
                              .warningColor()
                              .warningRegular,
                          onChanged: (bool value) {
                            setState(() {
                              _value[9] = value;
                            });
                          },
                          value:  _value[9],
                        ),
                      ),
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.switchbutton +
                            " - " +
                            AppLocalizations.of(context)!.warning,
                      )
                    ],
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h1Padding,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      Transform.scale(
                        scale: 0.7,
                        child: CupertinoSwitch(
                          activeColor: StructureBuilder.styles!
                              .informationColor()
                              .informationRegular,
                          onChanged: (bool value) {
                            setState(() {
                              _value[10] = value;
                            });
                          },
                          value:  _value[10],
                        ),
                      ),
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.switchbutton +
                            " - " +
                            AppLocalizations.of(context)!.information,
                      )
                    ],
                  ),
                  Wrap(
                    spacing: StructureBuilder.dims!.h1Padding,
                    runSpacing: StructureBuilder.dims!.h1Padding,
                    children: [
                      Transform.scale(
                        scale: 0.7,
                        child: CupertinoSwitch(
                          activeColor: StructureBuilder.styles!
                              .successColor()
                              .successRegular,
                          onChanged: (bool value) {
                            setState(() {
                              _value[11] = value;
                            });
                          },
                          value:  _value[11],
                        ),
                      ),
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.switchbutton +
                            " - " +
                            AppLocalizations.of(context)!.success,
                      )
                    ],
                  ),
                ],
              )),
          title: AppLocalizations.of(context)!.switchbutton,
          information:
              "these are Switch inputs in custom colors  and are used as: \n "
              """  Transform.scale(
                        scale: 0.7,
                        child: CupertinoSwitch(
                          activeColor: StructureBuilder.styles!
                              .successColor()
                              .successRegular,
                          onChanged: (bool value) {
                            setState(() {
                              _value = value;
                            });
                          },
                          value: _value,
                        ),"""
                  "\n   where \n"
                  """
      bool _value=true;
          """
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
                      AppLocalizations.of(context)!.textField +
                          " - " +
                          AppLocalizations.of(context)!.disabled,
                      color: StructureBuilder.styles!.t1Color,
                    ),
                    EsVSpacer(
                      big: true,
                    ),
                    EsTextField(
                      hint: AppLocalizations.of(context)!.emailadress,
                      customController: EditTextController(),
                      disabled: true,
                    ),
                  ],
                ),
                Wrap(
                  spacing: StructureBuilder.dims!.h1Padding,
                  runSpacing: StructureBuilder.dims!.h1Padding,
                  children: [
                    EsCustomCheckBox(
                        disabled: true,
                        value:  _value[12],
                        onChanged: (value) {
                          setState(() {
                            _value[12] = value;
                          });
                        }),
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.checkbox +
                          " - " +
                          AppLocalizations.of(context)!.disabled,
                    )
                  ],
                ),
                Wrap(
                  spacing: StructureBuilder.dims!.h1Padding,
                  runSpacing: StructureBuilder.dims!.h1Padding,
                  children: [

                    EsOrdinaryText(
                      AppLocalizations.of(context)!.radioButons +
                          " - " +
                          AppLocalizations.of(context)!.disabled,
                    ),
                    RadioListTile(
                      activeColor: StructureBuilder.styles!.secondaryColor,
                      tileColor: StructureBuilder.styles!.secondaryColor,
                      value:  _value[0],
                      onChanged: (value) {
                        null;
                      },
                      groupValue: false,
                    ),

                  ],
                ),
                Wrap(
                  spacing: StructureBuilder.dims!.h0Padding,
                  runSpacing: StructureBuilder.dims!.h1Padding,
                  children: [
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.sliderinput +
                          " - " +
                          AppLocalizations.of(context)!.disabled,
                    ),
                    EsSlider(
                      disabled: true,
                    ),
                  ],
                ),
                Wrap(
                  spacing: StructureBuilder.dims!.h1Padding,
                  runSpacing: StructureBuilder.dims!.h1Padding,
                  children: [
                    Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                        activeColor: StructureBuilder.styles!.secondaryColor,
                        onChanged: (bool value) {
                          null;
                        },
                        value:  _value[0],
                      ),
                    ),
                    EsOrdinaryText(
                      AppLocalizations.of(context)!.switchbutton +
                          " - " +
                          AppLocalizations.of(context)!.disabled,
                    )
                  ],
                ),
                EsButton(
                  text: AppLocalizations.of(context)!.register,
                  fillColor: StructureBuilder.styles!.secondaryColor,
                  clickable: false,
                )
              ],
            ),
          ),
          title: "disabled items",
          information: "these are disabled items in this panel by flutter code.  "
              "Some of the components are located in: \n es_flutter_component/lib/components/es_form \n  ."),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.decorationColor().background,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.decorationColor().background,
          body: SingleChildScrollView(
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
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-4', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
