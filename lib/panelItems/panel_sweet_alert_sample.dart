import 'package:art_sweetalert/art_sweetalert.dart';

import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/es_alert/es_alerts.dart';
import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_button/es_icon_button.dart';
import 'package:es_flutter_component/es_image/es_avatar_image.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/constants/structure_styles.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class PanelSweetAlertSample extends StatelessWidget {
  const PanelSweetAlertSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height=400;
    List list = [
      ContainerItems(
          widget: Container(
            height: _height,
              child: Wrap(
                spacing: StructureBuilder.dims!.h0Padding,
                runSpacing
                    : StructureBuilder.dims!.h0Padding,
            children: [
              EsIconButton(
                EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.dangerColor().dangerDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().danger,
                onTap: () {
                  ArtSweetAlert.show(
                      context: context,
                      artDialogArgs: ArtDialogArgs(
                          type: ArtSweetAlertType.danger,
                          title: "Oops...",
                          text: "There is a problem :("
                      )
                  );
                },
              ),
              EsIconButton(
                EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/CheckCircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.successColor().successDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().success,
                onTap: () {
                  ArtSweetAlert.show(
                      context: context,
                      artDialogArgs: ArtDialogArgs(
                      type: ArtSweetAlertType.success,
                      title: "A success message!",
                      text: "Show a success message with an icon"
                  ));
                },
              ),
              EsIconButton(
                EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/infocircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.warningColor().warningDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().warning,
                onTap: () async {
                  ArtDialogResponse response = await ArtSweetAlert.show(
                      barrierDismissible: false,
                      context: context,
                      artDialogArgs: ArtDialogArgs(
                          denyButtonText: "Cancel",
                          title: "Are you sure?",
                          text: "You won't be able to revert this!",
                          confirmButtonText: "Yes, delete it",
                          type: ArtSweetAlertType.warning
                      )
                  );

                  if(response==null) {
                    return;
                  }

                  if(response.isTapConfirmButton) {
                    ArtSweetAlert.show(
                        context: context,
                        artDialogArgs: ArtDialogArgs(
                            type: ArtSweetAlertType.success,
                            title: "Deleted!"
                        )
                    );
                    return;
                  }
                },
              ),
              EsIconButton(
                EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/Megaphone.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!
                      .informationColor()
                      .informationDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().information,
                onTap: () {
                  ArtSweetAlert.show(
                      context: context,
                      artDialogArgs: ArtDialogArgs(
                          type: ArtSweetAlertType.question,
                          title: "A question?",
                          text: "Show a question message with an icon"
                      )
                  );
                },
              ),
              Wrap(
                children: [
                  EsButton(
                    text: "Three button alert",
                    onTap: () async {
                      ArtDialogResponse response = await ArtSweetAlert.show(
                          barrierDismissible: false,
                          context: context,
                          artDialogArgs: ArtDialogArgs(
                            showCancelBtn: true,
                            denyButtonText: "Don't save",
                            title: "Do you want to save the changes?",
                            confirmButtonText: "Save",
                          )
                      );

                      if(response==null) {
                        return;
                      }

                      if(response.isTapConfirmButton) {
                        ArtSweetAlert.show(
                            context: context,
                            artDialogArgs: ArtDialogArgs(
                                type: ArtSweetAlertType.success,
                                title: "Saved!"
                            )
                        );
                        return;
                      }

                      if(response.isTapDenyButton) {
                        ArtSweetAlert.show(
                            context: context,
                            artDialogArgs: ArtDialogArgs(
                                type: ArtSweetAlertType.info,
                                title: "Changes are not saved!"
                            )
                        );
                        return;
                      }

                    },
                  ),
                  EsHSpacer(),
                  EsButton(
                    text: "Custom content alert",
                    onTap: () async {
                      ArtSweetAlert.show(
                          context: context,
                          artDialogArgs: ArtDialogArgs(
                              title: "Sweet!",
                              text: "Modal with a custom image.",
                              customColumns: [
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 12.0
                                  ),
                                  child: Image.asset(
                                    "assets/images/img2.jpg",

                                  ),

                                )
                              ]

                          )
                      );
                    },
                  ),
                ],
              )
            ],
          )),
          title: AppLocalizations.of(context)!.sweetalert,
          information:
              "They are sweet alerts that the art_sweetalert package is added in pubspec.yaml 's dependencies \n and is used as: \n "
              """EsIconButton(
                EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.dangerColor().dangerDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().danger,
                onTap: () {
                  ArtSweetAlert.show(
                      context: context,
                      artDialogArgs: ArtDialogArgs(
                          type: ArtSweetAlertType.danger,
                          title: "Oops...",
                          text: "There is a problem :("
                      )
                  );
                },
              ),"""),

    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.sweetalerttitle,
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
