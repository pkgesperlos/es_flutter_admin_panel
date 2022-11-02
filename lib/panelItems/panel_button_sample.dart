import 'package:es_flutter_admin_panel/panelItems/widgets/container_items.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_button/es_button.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_button/es_icon_button.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_group_button/group_button.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/page_title_container.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelButtonSample extends StatelessWidget {
  const PanelButtonSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list = [
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            alignment: WrapAlignment.start,
            children: [
              EsButton(
                text: AppLocalizations.of(context)!.primary,
              ),
              EsButton(
                  text: AppLocalizations.of(context)!.secondary,
                  fillColor: StructureBuilder.styles!.buttonColor().secondary),
              EsButton(
                  text: AppLocalizations.of(context)!.error,
                  fillColor: StructureBuilder.styles!.buttonColor().danger),
              EsButton(
                text: AppLocalizations.of(context)!.success,
                fillColor: StructureBuilder.styles!.buttonColor().success,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.warning,
                fillColor: StructureBuilder.styles!.buttonColor().warning,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.information,
                fillColor: StructureBuilder.styles!.buttonColor().information,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.defaultbutton,
          information:
              "It is a default button located in: \n es_flutter_component/es_button/es_button.dart' \n and is used as: \n "
              """EsButton(
                  text:AppLocalizations.of(context)!.error,
                  fillColor: StructureBuilder.styles!.buttonColor().danger),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EsButton(
                text: AppLocalizations.of(context)!.primary,
                fillColor: StructureBuilder.styles!.t4Color,
                borderColor: StructureBuilder.styles!.primaryColor,
                textColor: StructureBuilder.styles!.primaryColor,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.success,
                fillColor: StructureBuilder.styles!.successColor().successLight,
                borderColor:
                    StructureBuilder.styles!.successColor().successDark,
                textColor: StructureBuilder.styles!.successColor().successDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.error,
                fillColor: StructureBuilder.styles!.dangerColor().dangerLight,
                borderColor: StructureBuilder.styles!.dangerColor().dangerDark,
                textColor: StructureBuilder.styles!.dangerColor().dangerDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.warning,
                fillColor: StructureBuilder.styles!.warningColor().warningLight,
                borderColor:
                    StructureBuilder.styles!.warningColor().warningDark,
                textColor: StructureBuilder.styles!.warningColor().warningDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.information,
                fillColor: StructureBuilder.styles!
                    .informationColor()
                    .informationLight,
                borderColor:
                    StructureBuilder.styles!.informationColor().informationDark,
                textColor:
                    StructureBuilder.styles!.informationColor().informationDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.success,
                fillColor: StructureBuilder.styles!.t6Color,
                borderColor:
                    StructureBuilder.styles!.successColor().successDark,
                textColor: StructureBuilder.styles!.successColor().successDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.error,
                fillColor: StructureBuilder.styles!.t6Color,
                borderColor: StructureBuilder.styles!.dangerColor().dangerDark,
                textColor: StructureBuilder.styles!.dangerColor().dangerDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.warning,
                fillColor: StructureBuilder.styles!.t6Color,
                borderColor:
                    StructureBuilder.styles!.warningColor().warningDark,
                textColor: StructureBuilder.styles!.warningColor().warningDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.information,
                fillColor: StructureBuilder.styles!.t6Color,
                borderColor:
                    StructureBuilder.styles!.informationColor().informationDark,
                textColor:
                    StructureBuilder.styles!.informationColor().informationDark,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.borderedbutton,
          information:
              "It is a bordered button located in: \n es_flutter_component/es_button/es_button.dart' \n and is used as: \n "
              """EsButton(
                text: AppLocalizations.of(context)!.success,
                fillColor: StructureBuilder.styles!.successColor().successLight,
                borderColor:
                    StructureBuilder.styles!.successColor().successDark,
                textColor: StructureBuilder.styles!.successColor().successDark,
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.dangerColor().dangerDark,
                ),
                fillColor: StructureBuilder.styles!.dangerColor().dangerLight,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/CheckCircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.successColor().successDark,
                ),
                fillColor: StructureBuilder.styles!.successColor().successLight,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/infocircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.warningColor().warningDark,
                ),
                fillColor: StructureBuilder.styles!.warningColor().warningLight,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/Megaphone.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!
                      .informationColor()
                      .informationDark,
                ),
                fillColor: StructureBuilder.styles!
                    .informationColor()
                    .informationLight,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.t6Color,
                ),
                fillColor: StructureBuilder.styles!.dangerColor().dangerRegular,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/CheckCircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.t6Color,
                ),
                fillColor:
                    StructureBuilder.styles!.successColor().successRegular,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/infocircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.t6Color,
                ),
                fillColor:
                    StructureBuilder.styles!.warningColor().warningRegular,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/Megaphone.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.t6Color,
                ),
                fillColor: StructureBuilder.styles!
                    .informationColor()
                    .informationRegular,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.iconbutton,
          information:
              "It is a icon button located in: \n es_flutter_component/es_button/es_icon_button.dart' \n and is used as: \n "
              """EsIconButton(
                EsSvgIcon(
                  "assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.dangerColor().dangerDark,
                ),
                fillColor: StructureBuilder.styles!.dangerColor().dangerLight,
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            runSpacing: StructureBuilder.dims!.h0Padding,
            spacing: StructureBuilder.dims!.h0Padding,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EsButton(
                text: AppLocalizations.of(context)!.error,
                icon: EsSvgIcon(
                  "assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.dangerColor().dangerDark,
                ),
                fillColor: StructureBuilder.styles!.dangerColor().dangerLight,
                textColor: StructureBuilder.styles!.dangerColor().dangerDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.success,
                icon: EsSvgIcon(
                  "assets/svgs/CheckCircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.successColor().successDark,
                ),
                fillColor: StructureBuilder.styles!.successColor().successLight,
                textColor: StructureBuilder.styles!.successColor().successDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.warning,
                icon: EsSvgIcon(
                  "assets/svgs/infocircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.warningColor().warningDark,
                ),
                fillColor: StructureBuilder.styles!.warningColor().warningLight,
                textColor: StructureBuilder.styles!.warningColor().warningDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.information,
                icon: EsSvgIcon(
                  "assets/svgs/Megaphone.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!
                      .informationColor()
                      .informationDark,
                ),
                fillColor: StructureBuilder.styles!
                    .informationColor()
                    .informationLight,
                textColor:
                    StructureBuilder.styles!.informationColor().informationDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.error,
                icon: EsSvgIcon(
                  "assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.t6Color,
                ),
                fillColor: StructureBuilder.styles!.dangerColor().dangerRegular,
                textColor: StructureBuilder.styles!.t6Color,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.success,
                icon: EsSvgIcon(
                  "assets/svgs/CheckCircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.t6Color,
                ),
                fillColor:
                    StructureBuilder.styles!.successColor().successRegular,
                textColor: StructureBuilder.styles!.t6Color,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.warning,
                icon: EsSvgIcon(
                  "assets/svgs/infocircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.t6Color,
                ),
                fillColor:
                    StructureBuilder.styles!.warningColor().warningRegular,
                textColor: StructureBuilder.styles!.t6Color,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.information,
                icon: EsSvgIcon(
                  "assets/svgs/Megaphone.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.t6Color,
                ),
                fillColor: StructureBuilder.styles!
                    .informationColor()
                    .informationRegular,
                textColor: StructureBuilder.styles!.t6Color,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.error,
                icon: EsSvgIcon(
                  "assets/svgs/danger.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.dangerColor().dangerDark,
                ),
                fillColor: StructureBuilder.styles!.t6Color,
                textColor: StructureBuilder.styles!.dangerColor().dangerDark,
                borderColor: StructureBuilder.styles!.dangerColor().dangerDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.success,
                icon: EsSvgIcon(
                  "assets/svgs/CheckCircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.successColor().successDark,
                ),
                fillColor: StructureBuilder.styles!.t6Color,
                textColor: StructureBuilder.styles!.successColor().successDark,
                borderColor:
                    StructureBuilder.styles!.successColor().successDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.warning,
                icon: EsSvgIcon(
                  "assets/svgs/infocircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.warningColor().warningDark,
                ),
                fillColor: StructureBuilder.styles!.t6Color,
                textColor: StructureBuilder.styles!.warningColor().warningDark,
                borderColor:
                    StructureBuilder.styles!.warningColor().warningDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.information,
                icon: EsSvgIcon(
                  "assets/svgs/Megaphone.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!
                      .informationColor()
                      .informationDark,
                ),
                fillColor: StructureBuilder.styles!.t6Color,
                textColor:
                    StructureBuilder.styles!.informationColor().informationDark,
                borderColor:
                    StructureBuilder.styles!.informationColor().informationDark,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.icontextbutton,
          information:
              "It is a icon text button located in: \n es_flutter_component/es_button/es_button.dart' \n and is used as: \n "
              """EsButton(
                text: AppLocalizations.of(context)!.success,
                icon: EsSvgIcon(
                  "assets/svgs/CheckCircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.t6Color,
                ),
                fillColor:
                    StructureBuilder.styles!.successColor().successRegular,
                textColor: StructureBuilder.styles!.t6Color,
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: StructureBuilder.dims!.h0Padding * 2,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/Megaphone.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.disableColor().disableDark,
                ),
                disable: true,
                fillColor: StructureBuilder.styles!.disableColor().disableLight,
              ),
              EsButton(
                  text: AppLocalizations.of(context)!.information,
                  disable: true,
                  fillColor: StructureBuilder.styles!.buttonColor().disable),
              EsButton(
                text: AppLocalizations.of(context)!.information,
                disable: true,
                fillColor: StructureBuilder.styles!.disableColor().disableLight,
                borderColor:
                    StructureBuilder.styles!.disableColor().disableDark,
                textColor: StructureBuilder.styles!.disableColor().disableDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.information,
                icon: EsSvgIcon(
                  "assets/svgs/Megaphone.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.disableColor().disableDark,
                ),
                disable: true,
                fillColor: StructureBuilder.styles!.disableColor().disableLight,
                textColor: StructureBuilder.styles!.disableColor().disableDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.information,
                icon: EsSvgIcon(
                  "assets/svgs/Megaphone.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.t6Color,
                ),
                disable: true,
                fillColor:
                    StructureBuilder.styles!.disableColor().disableRegular,
                textColor: StructureBuilder.styles!.t6Color,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.disabledbutton,
          information:
              "It is a disabled button located in: \n es_flutter_component/es_button' \n and is used as: \n "
              """EsIconButton(
                EsSvgIcon(
                  "assets/svgs/Megaphone.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.disableColor().disableDark,
                ),
                disable: true,
                fillColor: StructureBuilder.styles!.disableColor().disableLight,
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/InstagramLogo.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color:
                      StructureBuilder.styles!.socialNetworkColor().instagram,
                ),
                fillColor: StructureBuilder.styles!.t6Color,
                borderColor:
                    StructureBuilder.styles!.socialNetworkColor().instagram,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/LinkedinLogo.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.socialNetworkColor().linkedin,
                ),
                fillColor: StructureBuilder.styles!.t6Color,
                borderColor:
                    StructureBuilder.styles!.socialNetworkColor().linkedin,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/TwitterLogo.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.socialNetworkColor().tweeter,
                ),
                fillColor: StructureBuilder.styles!.t6Color,
                borderColor:
                    StructureBuilder.styles!.socialNetworkColor().tweeter,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/WhatsappLogo.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.socialNetworkColor().whatsapp,
                ),
                fillColor: StructureBuilder.styles!.t6Color,
                borderColor:
                    StructureBuilder.styles!.socialNetworkColor().whatsapp,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/YoutubeLogo.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.socialNetworkColor().youtube,
                ),
                fillColor: StructureBuilder.styles!.t6Color,
                borderColor:
                    StructureBuilder.styles!.socialNetworkColor().youtube,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/FacebookLogo.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.socialNetworkColor().facebook,
                ),
                fillColor: StructureBuilder.styles!.t6Color,
                borderColor:
                    StructureBuilder.styles!.socialNetworkColor().facebook,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/InstagramLogo.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.t6Color,
                ),
                fillColor:
                    StructureBuilder.styles!.socialNetworkColor().instagram,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/LinkedinLogo.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.t6Color,
                ),
                fillColor:
                    StructureBuilder.styles!.socialNetworkColor().linkedin,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/TwitterLogo.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.t6Color,
                ),
                fillColor:
                    StructureBuilder.styles!.socialNetworkColor().tweeter,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/WhatsappLogo.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.t6Color,
                ),
                fillColor:
                    StructureBuilder.styles!.socialNetworkColor().whatsapp,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/YoutubeLogo.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.t6Color,
                ),
                fillColor:
                    StructureBuilder.styles!.socialNetworkColor().youtube,
              ),
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/FacebookLogo.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.t6Color,
                ),
                fillColor:
                    StructureBuilder.styles!.socialNetworkColor().facebook,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.socialnetworkbutton,
          information:
              "It is a  social network button located in: \n es_flutter_component/es_button/es_icon_button.dart' \n and is used as: \n "
              """EsIconButton(
                EsSvgIcon(
                  "assets/svgs/InstagramLogo.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color:
                      StructureBuilder.styles!.socialNetworkColor().instagram,
                ),
                fillColor: StructureBuilder.styles!.t6Color,
                borderColor:
                    StructureBuilder.styles!.socialNetworkColor().instagram,
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EsIconButton(
                EsSvgIcon(
                  "assets/svgs/Megaphone.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.disableColor().disableDark,
                ),
                borderRadiusSize: StructureBuilder.dims!.h0IconSize,
                fillColor: StructureBuilder.styles!.disableColor().disableLight,
              ),
              EsButton(
                  text: AppLocalizations.of(context)!.information,
                  borderRadiusSize: StructureBuilder.dims!.h0IconSize,
                  fillColor: StructureBuilder.styles!.buttonColor().disable),
              EsButton(
                text: AppLocalizations.of(context)!.information,
                borderRadiusSize: StructureBuilder.dims!.h0IconSize,
                fillColor: StructureBuilder.styles!.disableColor().disableLight,
                borderColor:
                    StructureBuilder.styles!.disableColor().disableDark,
                textColor: StructureBuilder.styles!.disableColor().disableDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.information,
                icon: EsSvgIcon(
                  "assets/svgs/Megaphone.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.disableColor().disableDark,
                ),
                borderRadiusSize: StructureBuilder.dims!.h0IconSize,
                fillColor: StructureBuilder.styles!.disableColor().disableLight,
                textColor: StructureBuilder.styles!.disableColor().disableDark,
              ),
              EsButton(
                text: AppLocalizations.of(context)!.information,
                icon: EsSvgIcon(
                  "assets/svgs/Megaphone.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.t6Color,
                ),
                borderRadiusSize: StructureBuilder.dims!.h0IconSize,
                fillColor:
                    StructureBuilder.styles!.disableColor().disableRegular,
                textColor: StructureBuilder.styles!.t6Color,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.roundbutton,
          information:
              "It is a round button located in: \n es_flutter_component/es_button' \n and is used as: \n "
              """EsButton(
                  text: AppLocalizations.of(context)!.information,
                  borderRadiusSize: StructureBuilder.dims!.h0IconSize,
                  fillColor: StructureBuilder.styles!.buttonColor().disable),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding * 5,
            runSpacing: StructureBuilder.dims!.h0Padding,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  EsIconButton(
                    EsSvgIcon(
                      "assets/svgs/Megaphone.svg",
                      size: StructureBuilder.dims!.h1IconSize,
                      color:
                          StructureBuilder.styles!.disableColor().disableDark,
                    ),
                    size: StructureBuilder.dims!.h0Padding,
                    fillColor:
                        StructureBuilder.styles!.disableColor().disableLight,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 1.5,
                  ),
                  EsButton(
                      text: AppLocalizations.of(context)!.information,
                      size: StructureBuilder.dims!.h0Padding,
                      fillColor:
                          StructureBuilder.styles!.buttonColor().disable),
                  EsVSpacer(
                    big: true,
                    factor: 1.5,
                  ),
                  EsButton(
                    text: AppLocalizations.of(context)!.information,
                    size: StructureBuilder.dims!.h0Padding,
                    fillColor:
                        StructureBuilder.styles!.disableColor().disableLight,
                    borderColor:
                        StructureBuilder.styles!.disableColor().disableDark,
                    textColor:
                        StructureBuilder.styles!.disableColor().disableDark,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 1.5,
                  ),
                  EsButton(
                    text: AppLocalizations.of(context)!.information,
                    icon: EsSvgIcon(
                      "assets/svgs/Megaphone.svg",
                      size: StructureBuilder.dims!.h1IconSize,
                      color:
                          StructureBuilder.styles!.disableColor().disableDark,
                    ),
                    size: StructureBuilder.dims!.h0Padding,
                    fillColor:
                        StructureBuilder.styles!.disableColor().disableLight,
                    textColor:
                        StructureBuilder.styles!.disableColor().disableDark,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 1.5,
                  ),
                  EsButton(
                    text: AppLocalizations.of(context)!.information,
                    icon: EsSvgIcon(
                      "assets/svgs/Megaphone.svg",
                      size: StructureBuilder.dims!.h1IconSize,
                      color: StructureBuilder.styles!.t6Color,
                    ),
                    size: StructureBuilder.dims!.h0Padding,
                    fillColor:
                        StructureBuilder.styles!.disableColor().disableRegular,
                    textColor: StructureBuilder.styles!.t6Color,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 1.5,
                  ),
                ],
              ),
              Column(
                children: [
                  EsIconButton(
                    EsSvgIcon(
                      "assets/svgs/Megaphone.svg",
                      size: StructureBuilder.dims!.h2IconSize,
                      color:
                          StructureBuilder.styles!.disableColor().disableDark,
                    ),
                    fillColor:
                        StructureBuilder.styles!.disableColor().disableLight,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 4,
                  ),
                  EsButton(
                      text: AppLocalizations.of(context)!.information,
                      fillColor:
                          StructureBuilder.styles!.buttonColor().disable),
                  EsVSpacer(
                    big: true,
                    factor: 4,
                  ),
                  EsButton(
                    text: AppLocalizations.of(context)!.information,
                    fillColor:
                        StructureBuilder.styles!.disableColor().disableLight,
                    borderColor:
                        StructureBuilder.styles!.disableColor().disableDark,
                    textColor:
                        StructureBuilder.styles!.disableColor().disableDark,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 4,
                  ),
                  EsButton(
                    text: AppLocalizations.of(context)!.information,
                    icon: EsSvgIcon(
                      "assets/svgs/Megaphone.svg",
                      size: StructureBuilder.dims!.h2IconSize,
                      color:
                          StructureBuilder.styles!.disableColor().disableDark,
                    ),
                    fillColor:
                        StructureBuilder.styles!.disableColor().disableLight,
                    textColor:
                        StructureBuilder.styles!.disableColor().disableDark,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 4,
                  ),
                  EsButton(
                    text: AppLocalizations.of(context)!.information,
                    icon: EsSvgIcon(
                      "assets/svgs/Megaphone.svg",
                      size: StructureBuilder.dims!.h2IconSize,
                      color: StructureBuilder.styles!.t6Color,
                    ),
                    fillColor:
                        StructureBuilder.styles!.disableColor().disableRegular,
                    textColor: StructureBuilder.styles!.t6Color,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 4,
                  ),
                ],
              ),
              Column(
                children: [
                  EsIconButton(
                    EsSvgIcon(
                      "assets/svgs/Megaphone.svg",
                      size: StructureBuilder.dims!.h3IconSize,
                      color:
                          StructureBuilder.styles!.disableColor().disableDark,
                    ),
                    size: StructureBuilder.dims!.h1Padding,
                    fillColor:
                        StructureBuilder.styles!.disableColor().disableLight,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 5,
                  ),
                  EsButton(
                      text: AppLocalizations.of(context)!.information,
                      size: StructureBuilder.dims!.h1Padding,
                      fillColor:
                          StructureBuilder.styles!.buttonColor().disable),
                  EsVSpacer(big: true, factor: 5),
                  EsButton(
                    text: AppLocalizations.of(context)!.information,
                    size: StructureBuilder.dims!.h1Padding,
                    fillColor:
                        StructureBuilder.styles!.disableColor().disableLight,
                    borderColor:
                        StructureBuilder.styles!.disableColor().disableDark,
                    textColor:
                        StructureBuilder.styles!.disableColor().disableDark,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 5,
                  ),
                  EsButton(
                    text: AppLocalizations.of(context)!.information,
                    icon: EsSvgIcon(
                      "assets/svgs/Megaphone.svg",
                      size: StructureBuilder.dims!.h3IconSize,
                      color:
                          StructureBuilder.styles!.disableColor().disableDark,
                    ),
                    size: StructureBuilder.dims!.h1Padding,
                    fillColor:
                        StructureBuilder.styles!.disableColor().disableLight,
                    textColor:
                        StructureBuilder.styles!.disableColor().disableDark,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 5,
                  ),
                  EsButton(
                    text: AppLocalizations.of(context)!.information,
                    icon: EsSvgIcon(
                      "assets/svgs/Megaphone.svg",
                      size: StructureBuilder.dims!.h3IconSize,
                      color: StructureBuilder.styles!.t6Color,
                    ),
                    size: StructureBuilder.dims!.h1Padding,
                    fillColor:
                        StructureBuilder.styles!.disableColor().disableRegular,
                    textColor: StructureBuilder.styles!.t6Color,
                  ),
                  EsVSpacer(
                    big: true,
                    factor: 5,
                  ),
                ],
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.buttonsindifferntsize,
          information:
              "They are buttons in different sizes button located in: \n es_flutter_component/es_button' \n and is used as: \n "
              """EsButton(
                      text: "information",
                      size: StructureBuilder.dims!.h0Padding,
                      disable: true,
                      fillColor:
                          StructureBuilder.styles!.buttonColor().disable),"""),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.buttontitle,
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
