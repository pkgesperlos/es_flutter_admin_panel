
import 'package:es_flutter_component/components/es_label/es_content_label.dart';
import 'package:es_flutter_component/components/es_label/es_label.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_image/es_avatar_image.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelLabelSample extends StatelessWidget {
  static MaterialPageRoute getRoute() => MaterialPageRoute(
      settings: RouteSettings(name: 'label'),
      builder: (context) => PanelLabelSample());

  const PanelLabelSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list = [
      ContainerItems(
          widget: Container(
              child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.end,
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              EsLabel(
                isUnique: false,
                widget: EsOrdinaryText(
                  AppLocalizations.of(context)!.text,
                ),
              ),
              EsLabel(
                isUnique: false,
                widget: EsButton(
                  text: AppLocalizations.of(context)!.button,
                ),
              ),
              EsLabel(
                isUnique: false,
                widget: EsAvatarImage(
                  path: "assets/images/img1.jpg",
                  radius: StructureBuilder.dims!.h2IconSize,
                ),
                widgetSize: StructureBuilder.dims!.h2IconSize * 0.3,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.labelondifferentwidgets,
          information:
              "They are labels on different widgets located in: \n es_flutter_component/lib/components/es_label\n and is used as: \n "
              """EsLabel(
              isUnique: false,
                widget: EsButton(
                   text:AppLocalizations.of(context)!.button,
                ),
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: StructureBuilder.dims!.h1Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              EsLabel(
                isUnique: true,
              ),
              EsContentLabel(
                isUnique: true,
                size: StructureBuilder.dims!.h3IconSize,
                text: "1400",
              ),
              EsContentLabel(
                isUnique: true,
                size: StructureBuilder.dims!.h3IconSize,
                text: AppLocalizations.of(context)!.error,
              ),
              EsContentLabel(
                isUnique: true,
                size: StructureBuilder.dims!.h3IconSize,
                labelContent: EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/Gift.svg",
                  size: StructureBuilder.dims!.h3IconSize,
                  color: StructureBuilder.styles!.primaryLightColor,
                ),
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.labelinuniquemode,
          information:
              "They are labels in unique mode located in: \n es_flutter_component/lib/components/es_label\n and is used as: \n "
              """EsLabel(
                isUnique: true,
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: StructureBuilder.dims!.h1Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              EsLabel(
                isUnique: false,
                widget: EsButton(
                  text: AppLocalizations.of(context)!.button,
                ),
              ),
              EsContentLabel(
                isUnique: false,
                widget: EsButton(
                  text: AppLocalizations.of(context)!.button,
                ),
                size: StructureBuilder.dims!.h3IconSize,
                text: "1400",
              ),
              EsContentLabel(
                isUnique: false,
                widget: EsButton(
                  text: AppLocalizations.of(context)!.button,
                ),
                size: StructureBuilder.dims!.h3IconSize,
                text: AppLocalizations.of(context)!.error,

              ),
              EsContentLabel(
                isUnique: false,
                widget: EsButton(
                  text: AppLocalizations.of(context)!.button,
                ),
                size: StructureBuilder.dims!.h3IconSize,
                labelContent: EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/Gift.svg",
                  size: StructureBuilder.dims!.h3IconSize,
                  color: StructureBuilder.styles!.primaryLightColor,
                ),
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.labelwithdifferentcontents,
          information:
              "They are labels with different contents located in: \n es_flutter_component/lib/components/es_label\n and is used as: \n "
              """EsContentLabel(
              isUnique: false,
                widget: EsButton(
                   text:AppLocalizations.of(context)!.button,
                ),
                size: StructureBuilder.dims!.h3IconSize,
                text: "1400",
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: StructureBuilder.dims!.h1Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              EsLabel(
                isUnique: false,
                widget: EsButton(
                  text: AppLocalizations.of(context)!.button,
                ),
                hasBorder: true,
              ),
              EsContentLabel(
                isUnique: false,
                widget: EsButton(
                  text: AppLocalizations.of(context)!.button,
                ),
                size: StructureBuilder.dims!.h3IconSize,
                text: "1400",
                hasBorder: true,
              ),
              EsContentLabel(
                isUnique: false,
                widget: EsButton(
                  text: AppLocalizations.of(context)!.button,
                ),
                size: StructureBuilder.dims!.h3IconSize,
                text: AppLocalizations.of(context)!.error,
                hasBorder: true,
              ),
              EsContentLabel(
                isUnique: false,
                widget: EsButton(
                  text: AppLocalizations.of(context)!.button,
                ),
                size: StructureBuilder.dims!.h3IconSize,
                labelContent: EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/Gift.svg",
                  size: StructureBuilder.dims!.h3IconSize,
                  color: StructureBuilder.styles!.primaryLightColor,
                ),
                hasBorder: true,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.labelwithsepratorborder,
          information:
              "They are labels with seprator border located in: \n es_flutter_component/lib/components/es_label\n and is used as: \n "
              """ EsLabel(
              isUnique: false,
                    widget: EsButton(
                       text:AppLocalizations.of(context)!.button,
                    ),
                    hasBorder: true,
                  ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: StructureBuilder.dims!.h1Padding,
                runSpacing: StructureBuilder.dims!.h0Padding,
                direction: Axis.horizontal,
                children: [
                  EsLabel(
                    isUnique: false,
                    widget: EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                  ),
                  EsLabel(
                    isUnique: false,
                    widget: EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                    color:
                        StructureBuilder.styles!.warningColor().warningRegular,
                  ),
                  EsLabel(
                    isUnique: false,
                    widget: EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                    color: StructureBuilder.styles!
                        .informationColor()
                        .informationRegular,
                  ),
                  EsLabel(
                    isUnique: false,
                    widget: EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                    color:
                        StructureBuilder.styles!.successColor().successRegular,
                  ),
                ],
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: StructureBuilder.dims!.h1Padding,
                runSpacing: StructureBuilder.dims!.h0Padding,
                direction: Axis.horizontal,
                children: [
                  EsContentLabel(
                    isUnique: false,
                    widget: EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                    size: StructureBuilder.dims!.h3IconSize,
                    text: "1400",
                  ),
                  EsContentLabel(
                    isUnique: false,
                    widget: EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                    size: StructureBuilder.dims!.h3IconSize,
                    text: "1400",
                    color:
                        StructureBuilder.styles!.warningColor().warningRegular,
                  ),
                  EsContentLabel(
                    isUnique: false,
                    widget: EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                    size: StructureBuilder.dims!.h3IconSize,
                    text: "1400",
                    color: StructureBuilder.styles!
                        .informationColor()
                        .informationRegular,
                  ),
                  EsContentLabel(
                    isUnique: false,
                    widget: EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                    size: StructureBuilder.dims!.h3IconSize,
                    text: "1400",
                    color:
                        StructureBuilder.styles!.successColor().successRegular,
                  ),
                ],
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: StructureBuilder.dims!.h1Padding,
                runSpacing: StructureBuilder.dims!.h0Padding,
                direction: Axis.horizontal,
                children: [
                  EsContentLabel(
                    isUnique: false,
                    widget: EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                    size: StructureBuilder.dims!.h3IconSize,
                    labelContent: EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/Gift.svg",
                      size: StructureBuilder.dims!.h3IconSize,
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                  ),
                  EsContentLabel(
                    isUnique: false,
                    widget: EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                    size: StructureBuilder.dims!.h3IconSize,
                    labelContent: EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/Gift.svg",
                      size: StructureBuilder.dims!.h3IconSize,
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    color:
                        StructureBuilder.styles!.warningColor().warningRegular,
                  ),
                  EsContentLabel(
                    isUnique: false,
                    widget: EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                    size: StructureBuilder.dims!.h3IconSize,
                    labelContent: EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/Gift.svg",
                      size: StructureBuilder.dims!.h3IconSize,
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    color: StructureBuilder.styles!
                        .informationColor()
                        .informationRegular,
                  ),
                  EsContentLabel(
                    isUnique: false,
                    widget: EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                    size: StructureBuilder.dims!.h3IconSize,
                    labelContent: EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/Gift.svg",
                      size: StructureBuilder.dims!.h3IconSize,
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    color:
                        StructureBuilder.styles!.successColor().successRegular,
                  ),
                ],
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.labelindifferentcolors,
          information:
              "They are labels in different colors located in: \n es_flutter_component/lib/components/es_label\n and is used as: \n "
              """EsLabel(
              isUnique: false,
                widget: EsButton(
                   text:AppLocalizations.of(context)!.button,
                ),
                color: StructureBuilder.styles!.warningColor().warningDark,
              ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: StructureBuilder.dims!.h1Padding,
                runSpacing: StructureBuilder.dims!.h0Padding,
                direction: Axis.horizontal,
                children: [
                  EsLabel(
                    isUnique: false,
                    widget: EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                    size: StructureBuilder.dims!.h2IconSize,
                  ),
                  EsLabel(
                    isUnique: false,
                    widget: EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                    size: StructureBuilder.dims!.h3IconSize,
                  ),
                  EsLabel(
                    isUnique: false,
                    widget: EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                  ),
                ],
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: StructureBuilder.dims!.h1Padding,
                runSpacing: StructureBuilder.dims!.h0Padding,
                direction: Axis.horizontal,
                children: [
                  EsContentLabel(
                      isUnique: false,
                      widget: EsButton(
                        text: AppLocalizations.of(context)!.button,
                      ),
                      size: StructureBuilder.dims!.h3IconSize,
                      labelContent: EsSvgIcon("packages/es_flutter_component/assets/svgs/Gift.svg",
                        size: StructureBuilder.dims!.h3IconSize,
                        color: StructureBuilder.styles!.primaryLightColor,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  EsContentLabel(
                      isUnique: false,
                      widget: EsButton(
                        text: AppLocalizations.of(context)!.button,
                      ),
                      size: StructureBuilder.dims!.h3IconSize,
                      labelContent: EsSvgIcon("packages/es_flutter_component/assets/svgs/Gift.svg",
                        size: StructureBuilder.dims!.h3IconSize,
                        color: StructureBuilder.styles!.primaryLightColor,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(
                          StructureBuilder.dims!.h1IconSize * 0.1))),
                  EsContentLabel(
                      isUnique: false,
                      widget: EsButton(
                        text: AppLocalizations.of(context)!.button,
                      ),
                      size: StructureBuilder.dims!.h3IconSize,
                      labelContent: EsSvgIcon("packages/es_flutter_component/assets/svgs/Gift.svg",
                        size: StructureBuilder.dims!.h3IconSize,
                        color: StructureBuilder.styles!.primaryLightColor,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(
                          StructureBuilder.dims!.h1IconSize * 0.3))),
                ],
              ),
            ],
          )),
          title: AppLocalizations.of(context)!
              .labelindifferentsizesandborderradiuss,
          information:
              "They are labels in different sizes and border radius's located in: \n es_flutter_component/lib/components/es_label\n and is used as: \n "
              """EsLabel(
              isUnique: false,
                    widget: EsButton(
                       text:AppLocalizations.of(context)!.button,
                    ),
                    size: StructureBuilder.dims!.h2IconSize,
                  ),
                  \n and \n 
                  EsContentLabel(
                  isUnique: false,
                      widget: EsButton(
                         text:AppLocalizations.of(context)!.button,
                      ),
                      size: StructureBuilder.dims!.h3IconSize,
                      labelContent: EsSvgIcon("packages/es_flutter_component/assets/svgs/Gift.svg",
                        size: StructureBuilder.dims!.h3IconSize,
                        color: StructureBuilder.styles!.primaryLightColor,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(0))),"""),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.labeltitle,
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
