
import 'package:es_flutter_component/components/es_modal/es_modal.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_form/es_text_field/es_text_field.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelModalSample extends StatelessWidget {
  const PanelModalSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget _seriesModalCustomWidget(
        {void Function()? onTap, String? buttonText}) {
      return Container(
        constraints: BoxConstraints(
          maxWidth: StructureBuilder.dims!.h0Padding * 20,
          maxHeight: StructureBuilder.dims!.h0Padding * 20,
        ),
        child: Padding(
          padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close,
                        color: StructureBuilder.styles!.t3Color)),
                EsVSpacer(),
                EsOrdinaryText(
                  StructureBuilder.configs!.lorm,
                  align: TextAlign.justify,
                ),
                EsButton(
                  text: buttonText ?? "next",
                  onTap: () {
                    Navigator.pop(context);
                    onTap!();
                  },
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget _confirmModalCustomWidget() {
      return Container(
        constraints: BoxConstraints(
          maxWidth: StructureBuilder.dims!.h0Padding * 20,
          maxHeight: StructureBuilder.dims!.h0Padding * 20,
        ),
        child: Padding(
          padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close,
                        color: StructureBuilder.styles!.t3Color)),
                EsVSpacer(),
                EsTitle(
                  "Are you sure?",
                  align: TextAlign.justify,
                ),
                EsVSpacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    EsButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      text: "yes",
                      fillColor: StructureBuilder.styles!
                          .successColor()
                          .successRegular,
                    ),
                    EsHSpacer(),
                    EsButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      text: "No!",
                      fillColor:
                          StructureBuilder.styles!.dangerColor().dangerRegular,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget _FormModalCustomWidget() {
      return Container(
        constraints: BoxConstraints(
          maxWidth: StructureBuilder.dims!.h0Padding * 20,
          maxHeight: StructureBuilder.dims!.h0Padding * 20,
        ),
        child: Padding(
          padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close,
                        color: StructureBuilder.styles!.t3Color)),
                EsVSpacer(),
                EsTitle(
                  "What is your UserName?",
                  align: TextAlign.justify,
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                EsTextField(
                  border: true,
                  borderColor: StructureBuilder.styles!.primaryColor,
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    EsButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      text: "Save",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget _gridContent(Widget widget) {
      return BootstrapCol(
        sizes: 'col-sm-3 col-ml-3 col-lg-3 col-xl-3',
        child: widget,
      );
    }

    Widget _GridModalCustomWidget() {
      return Container(
        constraints: BoxConstraints(
          maxWidth: StructureBuilder.dims!.h0Padding * 20,
          maxHeight: StructureBuilder.dims!.h0Padding * 20,
        ),
        child: Padding(
          padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close,
                        color: StructureBuilder.styles!.t3Color)),
                EsVSpacer(),
                BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
                    decoration: BoxDecoration(
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    children: List.generate(
                        10, (index) => _gridContent(EsLabelText("data$index"))))
              ],
            ),
          ),
        ),
      );
    }

    List list = [
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EsButton(
                text: AppLocalizations.of(context)!.smallmodal,
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.simple(
                    context,
                  );
                },
              ),
              EsButton(
                text: AppLocalizations.of(context)!.mediummodal,
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.simple(
                    context,
                    width: StructureBuilder.dims!.h0Padding * 20,
                    height: StructureBuilder.dims!.h0Padding * 10,
                  );
                },
              ),
              EsButton(
                text: AppLocalizations.of(context)!.fullscreenmodal,
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.fullScreen(context,
                      title: EsTitle("Full screen modal"));
                },
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.modalsindifferentsizes,
          information:
              "these are  modals in different sizes located in: \n es_flutter_component/lib/components/es_modal/es_modal.dart \n and is used as: \n "
              """EsButton(
                text: 'Modal',
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.simple(context,);
                },
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EsButton(
                text: AppLocalizations.of(context)!.informationmodal,
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.simple(context,
                      hasCustomWidget: true,
                      customWidget:
                          _seriesModalCustomWidget(buttonText: "Save"));
                },
              ),
              EsButton(
                text: AppLocalizations.of(context)!.confirmmodal,
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.simple(context,
                      hasCustomWidget: true,
                      customWidget: _confirmModalCustomWidget());
                },
              ),
              EsButton(
                text: AppLocalizations.of(context)!.formmodal,
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.simple(context,
                      hasCustomWidget: true,
                      customWidget: _FormModalCustomWidget());
                },
              ),
              EsButton(
                text: AppLocalizations.of(context)!.gridmodal,
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.simple(context,
                      hasCustomWidget: true,
                      customWidget: _GridModalCustomWidget());
                },
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.modalsindifferentcontents,
          information:
              "these are  modals in different contents located in: \n es_flutter_component/lib/components/es_modal/es_modal.dart \n and is used as: \n "
              """EsButton(
                text: 'information modal',
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.simple(context,
                      hasCustomWidget: true,
                      customWidget:
                          _seriesModalCustomWidget(buttonText: "Save"));
                },
              ),"""
              "\n   where \n"
      """
      Widget _seriesModalCustomWidget(
        {void Function()? onTap, String? buttonText}) {
      return Container(
        constraints: BoxConstraints(
          maxWidth: StructureBuilder.dims!.h0Padding * 20,
          maxHeight: StructureBuilder.dims!.h0Padding * 20,
        ),
        child: Padding(
          padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close,
                        color: StructureBuilder.styles!.t3Color)),
                EsVSpacer(),
                EsOrdinaryText(
                  StructureBuilder.configs!.lorm,
                  align: TextAlign.justify,
                ),
                EsButton(
                  text: buttonText ?? "next",
                  onTap: () {
                    Navigator.pop(context);
                    onTap!();
                  },
                )
              ],
            ),
          ),
        ),
      );
    }
    Widget _confirmModalCustomWidget() {
      return Container(
        constraints: BoxConstraints(
          maxWidth: StructureBuilder.dims!.h0Padding * 20,
          maxHeight: StructureBuilder.dims!.h0Padding * 20,
        ),
        child: Padding(
          padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close,
                        color: StructureBuilder.styles!.t3Color)),
                EsVSpacer(),
                EsTitle(
                  "Are you sure?",
                  align: TextAlign.justify,
                ),
                EsVSpacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    EsButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      text: "yes",
                      fillColor: StructureBuilder.styles!
                          .successColor()
                          .successRegular,
                    ),
                    EsHSpacer(),
                    EsButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      text: "No!",
                      fillColor:
                          StructureBuilder.styles!.dangerColor().dangerRegular,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }
    Widget _FormModalCustomWidget() {
      return Container(
        constraints: BoxConstraints(
          maxWidth: StructureBuilder.dims!.h0Padding * 20,
          maxHeight: StructureBuilder.dims!.h0Padding * 20,
        ),
        child: Padding(
          padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close,
                        color: StructureBuilder.styles!.t3Color)),
                EsVSpacer(),
                EsTitle(
                  "What is your UserName?",
                  align: TextAlign.justify,
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                EsTextField(
                  border: true,
                  borderColor: StructureBuilder.styles!.primaryColor,
                ),
                EsVSpacer(
                  big: true,
                  factor: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    EsButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      text: "Save",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }
    Widget _GridModalCustomWidget() {
      return Container(
        constraints: BoxConstraints(
          maxWidth: StructureBuilder.dims!.h0Padding * 20,
          maxHeight: StructureBuilder.dims!.h0Padding * 20,
        ),
        child: Padding(
          padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close,
                        color: StructureBuilder.styles!.t3Color)),
                EsVSpacer(),
                BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
                    decoration: BoxDecoration(
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    children: List.generate(
                        10, (index) => _gridContent(EsLabelText("data \$index"))))
              ],
            ),
          ),
        ),
      );
    }
      """),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EsButton(
                text: AppLocalizations.of(context)!.centermodal,
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.position(
                    context,
                  );
                },
              ),
              EsButton(
                text: AppLocalizations.of(context)!.bottomscreenmodal,
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.bottom(
                    context,
                    barrierDismissible: false,
                  );
                },
              ),
              EsButton(
                text: AppLocalizations.of(context)!.topleftmodal,
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.position(context, alignment: Alignment.topLeft);
                },
              ),
              EsButton(
                text: AppLocalizations.of(context)!.toprightmodal,
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.position(context, alignment: Alignment.topRight);
                },
              ),
              EsButton(
                text: AppLocalizations.of(context)!.bottomrightmodal,
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.position(context, alignment: Alignment.bottomRight);
                },
              ),
              EsButton(
                text: AppLocalizations.of(context)!.bottomleftmodal,
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.position(context, alignment: Alignment.bottomLeft);
                },
              ),
              EsButton(
                text: AppLocalizations.of(context)!.customalignmmentmodal,
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.position(context, alignment: Alignment(0.8, -0.5));
                },
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.modalsindifferentalignments,
          information:
              "these are  modals in different alignments located in: \n es_flutter_component/lib/components/es_modal/es_modal.dart \n and is used as: \n "
              """EsButton(
                text: 'TopLeft modal',
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.position(context,alignment: Alignment.topLeft);
                },
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EsButton(
                text: AppLocalizations.of(context)!.seriesofmodals,
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.simple(context,
                      hasCustomWidget: true,
                      customWidget: _seriesModalCustomWidget(
                          buttonText: "Step2",
                          onTap: () {
                            EsModal.position(context,
                                alignment: Alignment.topRight,
                                hasCustomWidget: true,
                                customWidget: _seriesModalCustomWidget(
                                    buttonText: "Step3",
                                    onTap: () {
                                      EsModal.position(context,
                                          alignment: Alignment.topLeft,
                                          hasCustomWidget: true,
                                          customWidget:
                                              _seriesModalCustomWidget(
                                                  buttonText: "Step4",
                                                  onTap: () {
                                                    EsModal.simple(context,
                                                        hasCustomWidget: true,
                                                        customWidget:
                                                            _seriesModalCustomWidget(
                                                                buttonText:
                                                                    "Step5",
                                                                onTap: () {
                                                                  EsModal.simple(
                                                                      context,
                                                                      hasCustomWidget:
                                                                          true,
                                                                      customWidget:
                                                                          _seriesModalCustomWidget(
                                                                        buttonText:
                                                                            "Finish",
                                                                      ));
                                                                }));
                                                  }));
                                    }));
                          }));
                },
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.seriesofmodals,
          information:
              "these are  Series of modals located in: \n es_flutter_component/lib/components/es_modal/es_modal.dart \n and is used as: \n "
              """EsButton(
                text: 'Series of modals',
                fillColor: StructureBuilder.styles!.buttonColor().primary,
                onTap: () {
                  EsModal.simple(context,
                      hasCustomWidget: true,
                      customWidget: _seriesModalCustomWidget(
                          buttonText: "Step2",
                          onTap: () {
                            EsModal.position(context,
                                alignment: Alignment.topRight,
                                hasCustomWidget: true,
                                customWidget: _seriesModalCustomWidget(
                                    buttonText: "Step3",
                                    onTap: () {
                                      EsModal.position(context,
                                          alignment: Alignment.topLeft,
                                          hasCustomWidget: true,
                                          customWidget:
                                              _seriesModalCustomWidget(
                                                  buttonText: "Step4",
                                                  onTap: () {
                                                    EsModal.simple(context,
                                                        hasCustomWidget: true,
                                                        customWidget:
                                                            _seriesModalCustomWidget(
                                                                buttonText:
                                                                    "Step5",
                                                                onTap: () {
                                                                  EsModal.simple(
                                                                      context,
                                                                      hasCustomWidget:
                                                                          true,
                                                                      customWidget:
                                                                          _seriesModalCustomWidget(
                                                                        buttonText:
                                                                            "Finish",
                                                                      ));
                                                                }));
                                                  }));
                                    }));
                          }));
                },
              ),""" "\n   where \n"
                  """
      Widget _seriesModalCustomWidget(
        {void Function()? onTap, String? buttonText}) {
      return Container(
        constraints: BoxConstraints(
          maxWidth: StructureBuilder.dims!.h0Padding * 20,
          maxHeight: StructureBuilder.dims!.h0Padding * 20,
        ),
        child: Padding(
          padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close,
                        color: StructureBuilder.styles!.t3Color)),
                EsVSpacer(),
                EsOrdinaryText(
                  StructureBuilder.configs!.lorm,
                  align: TextAlign.justify,
                ),
                EsButton(
                  text: buttonText ?? "next",
                  onTap: () {
                    Navigator.pop(context);
                    onTap!();
                  },
                )
              ],
            ),
          ),
        ),
      );
    }
      """),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: Scaffold(
          backgroundColor: StructureBuilder.styles!.primaryDarkColor,
          body:SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.modaltitle,
                ),
                BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
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
