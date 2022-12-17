import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/es_alert/es_alerts.dart';
import 'package:es_flutter_component/es_button/es_icon_button.dart';
import 'package:es_flutter_component/es_image/es_avatar_image.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class PanelAlertSample extends StatelessWidget {
  const PanelAlertSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list = [
      ContainerItems(
          widget: Container(
              child: Wrap(
                spacing: StructureBuilder.dims!.h2Padding,
            children: [
              EsIconButton(
                EsSvgIcon("packages/es_flutter_component/assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.dangerColor().dangerDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().danger,
                onTap: () {
                  EsAlerts.error(
                    context,
                    "message",
                  );
                },
              ),
              EsIconButton(
                EsSvgIcon("packages/es_flutter_component/assets/svgs/CheckCircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.successColor().successDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().success,
                onTap: () {
                  EsAlerts.success(
                    context,
                    "message",
                  );
                },
              ),
              EsIconButton(
                EsSvgIcon("packages/es_flutter_component/assets/svgs/infocircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.warningColor().warningDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().warning,
                onTap: () {
                  EsAlerts.warning(
                    context,
                    "message",
                  );
                },
              ),
              EsIconButton(
                EsSvgIcon("packages/es_flutter_component/assets/svgs/Megaphone.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!
                      .informationColor()
                      .informationDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().information,
                onTap: () {
                  EsAlerts.information(
                    context,
                    "message",
                  );
                },
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.simplealert,
          information:
              "these are confidence alerts located in: \n es_flutter_component/lib/components/es_alert/es_alerts.dart \n and is used as: \n "
              """EsIconButton(
                EsSvgIcon("packages/es_flutter_component/assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.errorColor().errorDark,),

                fillColor: StructureBuilder.styles!.alertColor().error,
                onTap: () {
                  EsAlerts.error(
                    context,
                    "message",
                  );
                },
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
                spacing: StructureBuilder.dims!.h2Padding,
            children: [
              EsIconButton(
                EsSvgIcon("packages/es_flutter_component/assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.dangerColor().dangerDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().danger,
                onTap: () {
                  EsAlerts.error(context, "message",
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(
                              StructureBuilder.dims!.h1BorderRadius)),
                          border: Border.all(
                              color: StructureBuilder.styles!
                                  .dangerColor()
                                  .dangerDark,
                              width: 2)));
                },
              ),
              EsIconButton(
                EsSvgIcon("packages/es_flutter_component/assets/svgs/CheckCircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.successColor().successDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().success,
                onTap: () {
                  EsAlerts.success(context, "message",
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(
                              StructureBuilder.dims!.h1BorderRadius)),
                          border: Border.all(
                              color: StructureBuilder.styles!
                                  .successColor()
                                  .successDark,
                              width: 2)));
                },
              ),
              EsIconButton(
                EsSvgIcon("packages/es_flutter_component/assets/svgs/infocircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.warningColor().warningDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().warning,
                onTap: () {
                  EsAlerts.warning(context, "message",
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(
                              StructureBuilder.dims!.h1BorderRadius)),
                          border: Border.all(
                              color: StructureBuilder.styles!
                                  .warningColor()
                                  .warningDark,
                              width: 2)));
                },
              ),
              EsIconButton(
                EsSvgIcon("packages/es_flutter_component/assets/svgs/Megaphone.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!
                      .informationColor()
                      .informationDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().information,
                onTap: () {
                  EsAlerts.information(context, "message",
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(
                              StructureBuilder.dims!.h1BorderRadius)),
                          border: Border.all(
                              color: StructureBuilder.styles!
                                  .informationColor()
                                  .informationDark,
                              width: 2)));
                },
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.borderedalert,
          information:
              "these are bordered alerts located in: \n es_flutter_component/lib/components/es_alert/es_alerts.dart \n and is used as: \n "
              """EsIconButton(
                EsSvgIcon("packages/es_flutter_component/assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.errorColor().errorDark,),

                fillColor: StructureBuilder.styles!.alertColor().error,
                onTap: () {
                  EsAlerts.error(context, "message",
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(
                              StructureBuilder.dims!.h1BorderRadius)),
                          border: Border.all(
                              color: StructureBuilder.styles!.errorColor().errorDark,
                              width: 2)));
                },
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
                spacing: StructureBuilder.dims!.h2Padding,
            children: [
              EsIconButton(
                EsSvgIcon("packages/es_flutter_component/assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.dangerColor().dangerDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().danger,
                onTap: () {
                  EsAlerts.error(context, "message", hasClose: true);
                },
              ),
              EsIconButton(
                EsSvgIcon("packages/es_flutter_component/assets/svgs/CheckCircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.successColor().successDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().success,
                onTap: () {
                  EsAlerts.success(context, "message", hasClose: true);
                },
              ),
              EsIconButton(
                EsSvgIcon("packages/es_flutter_component/assets/svgs/infocircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.warningColor().warningDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().warning,
                onTap: () {
                  EsAlerts.warning(context, "message", hasClose: true);
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
                  EsAlerts.information(context, "message", hasClose: true);
                },
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.removablealert,
          information:
              "these are removable alerts located in: \n es_flutter_component/lib/components/es_alert/es_alerts.dart \n and is used as: \n "
              """EsButton(
                text: AppLocalizations.of(context)!.error,
                fillColor: StructureBuilder.styles!.errorColor,
                onTap: () {
                  EsAlerts.error(context, "message", hasClose: true);
                },
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
                spacing: StructureBuilder.dims!.h2Padding,
            children: [
              EsIconButton(
                EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.dangerColor().dangerDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().danger,
                onTap: () {
                  EsAlerts.error(
                    context,
                    "message",
                    icon: EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/danger.svg",
                      size: StructureBuilder.dims!.h2IconSize,
                      color: StructureBuilder.styles!.dangerColor().dangerDark,
                    ),
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
                  EsAlerts.success(
                    context,
                    "message",
                    icon: EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/CheckCircle.svg",
                      size: StructureBuilder.dims!.h2IconSize,
                      color:
                          StructureBuilder.styles!.successColor().successDark,
                    ),
                  );
                },
              ),
              EsIconButton(
                EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/infocircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.warningColor().warningDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().warning,
                onTap: () {
                  EsAlerts.warning(
                    context,
                    "message",
                    icon: EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/infocircle.svg",
                      size: StructureBuilder.dims!.h2IconSize,
                      color:
                          StructureBuilder.styles!.warningColor().warningDark,
                    ),
                  );
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
                  EsAlerts.information(
                    context,
                    "message",
                    icon: EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/Megaphone.svg",
                      size: StructureBuilder.dims!.h2IconSize,
                      color: StructureBuilder.styles!
                          .informationColor()
                          .informationDark,
                    ),
                  );
                },
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.alertwithicon,
          information:
              "these are alerts with icon located in: \n es_flutter_component/lib/components/es_alert/es_alerts.dart \n and is used as: \n "
              """EsIconButton(
                EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.errorColor().errorDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().error,
                onTap: () {
                  EsAlerts.error(
                    context,
                    "message",
                    icon:EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/danger.svg",
                      size: StructureBuilder.dims!.h2IconSize,
                      color: StructureBuilder.styles!.errorColor().errorDark,
                    ),
                  );
                },
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
                spacing: StructureBuilder.dims!.h2Padding,
            children: [
              EsIconButton(
                EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.dangerColor().dangerDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().danger,
                onTap: () {
                  EsAlerts.error(
                    context,
                    "message",
                    hasClose: true,
                    icon: EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/danger.svg",
                      size: StructureBuilder.dims!.h2IconSize,
                      color: StructureBuilder.styles!.dangerColor().dangerDark,
                    ),
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
                  EsAlerts.success(
                    context,
                    "message",
                    hasClose: true,
                    icon: EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/CheckCircle.svg",
                      size: StructureBuilder.dims!.h2IconSize,
                      color:
                          StructureBuilder.styles!.successColor().successDark,
                    ),
                  );
                },
              ),
              EsIconButton(
                EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/infocircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.warningColor().warningDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().warning,
                onTap: () {
                  EsAlerts.warning(
                    context,
                    "message",
                    hasClose: true,
                    icon: EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/infocircle.svg",
                      size: StructureBuilder.dims!.h2IconSize,
                      color:
                          StructureBuilder.styles!.warningColor().warningDark,
                    ),
                  );
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
                  EsAlerts.information(
                    context,
                    "message",
                    hasClose: true,
                    icon: EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/Megaphone.svg",
                      size: StructureBuilder.dims!.h2IconSize,
                      color: StructureBuilder.styles!
                          .informationColor()
                          .informationDark,
                    ),
                  );
                },
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.removablealertwithicon,
          information:
              "these are removable alerts with icon located in: \n es_flutter_component/lib/components/es_alert/es_alerts.dart \n and is used as: \n "
              """EsIconButton(
                EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.errorColor().errorDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().error,
                onTap: () {
                  EsAlerts.error(
                    context,
                    "message",
                    hasClose: true,
                    icon: EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/danger.svg",
                      size: StructureBuilder.dims!.h2IconSize,
                      color: StructureBuilder.styles!.errorColor().errorDark,
                    ),
                  );
                },
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
                spacing: StructureBuilder.dims!.h2Padding,
            children: [
              EsIconButton(
                EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.dangerColor().dangerDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().danger,
                onTap: () {
                  EsAlerts.error(
                    context,
                    "message",
                    myContent: Column(

                      children: [
                        EsAvatarImage(
                          path: "assets/images/img1.jpg",
                          radius: StructureBuilder.dims!.h0Padding * 2,
                        ),
                        EsOrdinaryText(
                          AppLocalizations.of(context)!.lorm,
                          color: StructureBuilder.styles!.t1Color,
                        )
                      ],
                    ),

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
                  EsAlerts.success(
                    context,
                    "message",
                    myContent: Column(
                      children: [
                        EsAvatarImage(
                          path: "assets/images/img1.jpg",
                          radius: StructureBuilder.dims!.h0Padding * 2,
                        ),
                        EsOrdinaryText(
                          AppLocalizations.of(context)!.lorm,
                          color: StructureBuilder.styles!.t1Color,
                        )
                      ],
                    ),

                  );
                },
              ),
              EsIconButton(
                EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/infocircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.warningColor().warningDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().warning,
                onTap: () {
                  EsAlerts.warning(
                    context,
                    "message",
                    myContent: Column(
                      children: [
                        EsAvatarImage(
                          path: "assets/images/img1.jpg",
                          radius: StructureBuilder.dims!.h0Padding * 2,
                        ),
                        EsOrdinaryText(
                          AppLocalizations.of(context)!.lorm,
                          color: StructureBuilder.styles!.t1Color,
                        )
                      ],
                    ),

                  );
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
                  EsAlerts.information(
                    context,
                    "message",
                    myContent: Column(
                      children: [
                        EsAvatarImage(
                          path: "assets/images/img1.jpg",
                          radius: StructureBuilder.dims!.h0Padding * 2,
                        ),
                        EsOrdinaryText(
                          AppLocalizations.of(context)!.lorm,
                          color: StructureBuilder.styles!.t1Color,
                        )
                      ],
                    ),

                  );
                },
              ),
            ],
          )),

          title: AppLocalizations.of(context)!.alertwithdesiredcontent,
          information:
              "these are alerts with desired content located in: \n es_flutter_component/lib/components/es_alert/es_alerts.dart \n and is used as: \n "
              """EsIconButton(
                EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.errorColor().errorDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().error,
                onTap: () {
                  EsAlerts.error(
                    context,
                    "message",
                    myContent: Column(
                      children: [
                        EsAvatarImage(
                          path: "assets/images/img1.jpg",
                          radius: StructureBuilder.dims!.h0Padding * 2,
                        ),
                        EsOrdinaryText(
                          AppLocalizations.of(context)!.lorm,
                          color: StructureBuilder.styles!.t1Color,
                        )
                      ],
                    ),
                 
                  );
                },
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
                spacing: StructureBuilder.dims!.h2Padding,
                children: [
                  EsIconButton(
                    EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/danger.svg",
                      size: StructureBuilder.dims!.h2IconSize,
                      color: StructureBuilder.styles!.dangerColor().dangerDark,
                    ),
                    fillColor: StructureBuilder.styles!.alertColor().danger,
                    onTap: () {
                      EsAlerts.error(context, "message",
                          hasClose: true,
                          icon:  EsSvgIcon(
                            "packages/es_flutter_component/assets/svgs/danger.svg",
                            size: StructureBuilder.dims!.h2IconSize,
                            color: StructureBuilder.styles!.dangerColor().dangerDark,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(
                                  StructureBuilder.dims!.h1BorderRadius)),

                              border: Border.all(
                                  color: StructureBuilder.styles!.dangerColor().dangerDark,
                                  width: 2),

                          ));
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
                      EsAlerts.success(context, "message",
                          hasClose: true,
                          icon:  EsSvgIcon(
                            "packages/es_flutter_component/assets/svgs/danger.svg",
                            size: StructureBuilder.dims!.h2IconSize,
                            color: StructureBuilder.styles!.successColor().successDark,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(
                                StructureBuilder.dims!.h1BorderRadius)),

                            border: Border.all(
                                color: StructureBuilder.styles!.successColor().successDark,
                                width: 2),

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
                    onTap: () {
                      EsAlerts.warning(context, "message",
                          hasClose: true,
                          icon:  EsSvgIcon(
                            "packages/es_flutter_component/assets/svgs/infocircle.svg",
                            size: StructureBuilder.dims!.h2IconSize,
                            color: StructureBuilder.styles!.warningColor().warningDark,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(
                                StructureBuilder.dims!.h1BorderRadius)),

                            border: Border.all(
                                color: StructureBuilder.styles!.warningColor().warningDark,
                                width: 2),

                          ));
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
                      EsAlerts.information(context, "message",
                          hasClose: true,
                          icon:  EsSvgIcon(
                            "packages/es_flutter_component/assets/svgs/Megaphone.svg",
                            size: StructureBuilder.dims!.h2IconSize,
                            color: StructureBuilder.styles!.informationColor().informationDark,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(
                                StructureBuilder.dims!.h1BorderRadius)),

                            border: Border.all(
                                color: StructureBuilder.styles!.informationColor().informationDark,
                                width: 2),

                          )

                      );
                    },
                  ),
                ],
              )),
          title: AppLocalizations.of(context)!.borderedalertwithicon,
          information:
          "these are bordered alerts with icon located in: \n es_flutter_component/lib/components/es_alert/es_alerts.dart \n and is used as: \n "
              """EsIconButton(
                    EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/danger.svg",
                      size: StructureBuilder.dims!.h2IconSize,
                      color: StructureBuilder.styles!.errorColor().errorDark,
                    ),
                    fillColor: StructureBuilder.styles!.alertColor().error,
                    onTap: () {
                      EsAlerts.error(context, "message",
                          hasClose: true,
                          icon:  EsSvgIcon(
                            "packages/es_flutter_component/assets/svgs/danger.svg",
                            size: StructureBuilder.dims!.h2IconSize,
                            color: StructureBuilder.styles!.errorColor().errorDark,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(
                                  StructureBuilder.dims!.h1BorderRadius)),

                              border: Border.all(
                                  color: StructureBuilder.styles!.errorColor().errorDark,
                                  width: 2),
                            
                          ));
                    },
                  ),"""),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.primaryDarkColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.alerttitle,
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
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
