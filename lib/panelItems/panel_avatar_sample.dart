import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/components/es_image/es_avatar_image.dart';
import 'package:es_flutter_component/components/es_image/es_avatar_widget.dart';
import 'package:es_flutter_component/components/es_label/es_content_label.dart';
import 'package:es_flutter_component/components/es_label/es_label.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelAvatarSample extends StatelessWidget {
  static MaterialPageRoute getRoute() => MaterialPageRoute(
      settings: RouteSettings(name: 'avatar'),
      builder: (context) => PanelAvatarSample());

  const PanelAvatarSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _alignFactor = 0.4;

    String _imagePath = "assets/images/img4.jpg";
    List list = [
      ContainerItems(
          widget: Container(
              height: 100,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                spacing: StructureBuilder.dims!.h0Padding,
                runSpacing: StructureBuilder.dims!.h0Padding,
                children: [
                  EsAvatarImage(
                    path: _imagePath,
                    radius: StructureBuilder.dims!.h0IconSize / 2,
                  ),
                  EsAvatarImage(
                    path: _imagePath,
                    radius: StructureBuilder.dims!.h1IconSize / 2,
                  ),
                  EsAvatarImage(
                    path: _imagePath,
                    radius: StructureBuilder.dims!.h2IconSize,
                  ),
                  EsAvatarImage(
                    path: _imagePath,
                  ),
                ],
              )),
          title: AppLocalizations.of(context)!.avatarsindifferentsizes,
          information:
              "They are avatars in different sizes located in: \n es_flutter_component/lib/components/es_image/es_avatar_image.dart\n and is used as: \n "
              """   EsAvatarImage(
                path: _imagePath,
                radius: StructureBuilder.dims!.h1IconSize / 2,
              ),"""),
      ContainerItems(
          widget: Container(
              height: 100,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                spacing: StructureBuilder.dims!.h0Padding,
                runSpacing: StructureBuilder.dims!.h0Padding,
                children: [
                  EsLabel(
                      isUnique: false,
                      widget: EsAvatarImage(
                        path: _imagePath,
                      ),
                      hasBorder: true,
                      widgetSize: StructureBuilder.dims!.h2IconSize * 0.1,
                      color: StructureBuilder.styles!.primaryColor),
                  EsLabel(
                    isUnique: false,
                    widget: EsAvatarImage(
                      path: _imagePath,
                    ),
                    hasBorder: true,
                    widgetSize: StructureBuilder.dims!.h2IconSize * 0.1,
                  ),
                  EsLabel(
                    isUnique: false,
                    widget: EsAvatarImage(
                      path: _imagePath,
                    ),
                    hasBorder: true,
                    widgetSize: StructureBuilder.dims!.h2IconSize * 0.1,
                    color:
                        StructureBuilder.styles!.warningColor().warningRegular,
                  ),
                  EsLabel(
                    isUnique: false,
                    widget: EsAvatarImage(
                      path: _imagePath,
                    ),
                    hasBorder: true,
                    widgetSize: StructureBuilder.dims!.h2IconSize * 0.1,
                    color:
                        StructureBuilder.styles!.successColor().successRegular,
                  ),
                  EsLabel(
                    isUnique: false,
                    widget: EsAvatarImage(
                      path: _imagePath,
                    ),
                    hasBorder: true,
                    widgetSize: StructureBuilder.dims!.h2IconSize * 0.1,
                    color: StructureBuilder.styles!
                        .informationColor()
                        .informationRegular,
                  ),
                ],
              )),
          title: AppLocalizations.of(context)!.avatarsindifferentstatuses,
          information:
              "They are avatars in different statuses located in: \n es_flutter_component/lib/components/es_image/es_avatar_image.dart\n and is used as: \n "
              """ EsLabel(
                  isUnique: false,
                  widget: EsAvatarImage(path: "assets/images/img1.jpg",),
                  hasBorder: true,
                  widgetSize: StructureBuilder.dims!.h2IconSize * 0.2,
                  color: StructureBuilder.styles!.primaryColor
              ),"""),
      ContainerItems(
          widget: Container(
              height: 100,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                spacing: StructureBuilder.dims!.h0Padding,
                runSpacing: StructureBuilder.dims!.h0Padding,
                children: [
                  EsAvatarWidget(
                      widget: EsTitle(
                    "FA",
                    color: StructureBuilder.styles!.primaryLightColor,
                  )),
                  EsAvatarWidget(
                      widget: EsSvgIcon(
                    "packages/es_flutter_component/assets/svgs/GraduationCap.svg",
                    size: StructureBuilder.dims!.h2IconSize,
                    color: StructureBuilder.styles!.primaryLightColor,
                  )),
                  EsAvatarWidget(
                      widget: EsContentLabel(
                    isUnique: true,
                    size: StructureBuilder.dims!.h3IconSize,
                    labelContent: EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/Gift.svg",
                      size: StructureBuilder.dims!.h3IconSize,
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                  ))
                ],
              )),
          title: AppLocalizations.of(context)!.avatarswithdifferentwidgets,
          information:
              "They are avatars with different widgets located in: \n es_flutter_component/lib/components/es_image/es_avatar_image.dart\n and is used as: \n "
              """EsAvatarWidget(
                  widget: EsTitle(
                "FA",
                color: StructureBuilder.styles!.primaryLightColor,
              )),"""),
      ContainerItems(
          widget: Container(
              height: 100,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                spacing: StructureBuilder.dims!.h0Padding,
                runSpacing: StructureBuilder.dims!.h0Padding,
                children: [
                  EsAvatarWidget(
                      widget: EsTitle(
                    "FA",
                    color: StructureBuilder.styles!.primaryLightColor,
                  )),
                  EsAvatarWidget(
                      backGroundColor: StructureBuilder.styles!.secondaryColor,
                      widget: EsTitle(
                        "FA",
                        color: StructureBuilder.styles!.primaryLightColor,
                      )),
                  EsAvatarWidget(
                      backGroundColor: StructureBuilder.styles!.tritiaryColor,
                      widget: EsTitle(
                        "FA",
                        color: StructureBuilder.styles!.primaryLightColor,
                      )),
                  EsAvatarWidget(
                      backGroundColor:
                          StructureBuilder.styles!.dangerColor().dangerRegular,
                      widget: EsTitle(
                        "FA",
                        color: StructureBuilder.styles!.primaryLightColor,
                      )),
                  EsAvatarWidget(
                      backGroundColor: StructureBuilder.styles!
                          .warningColor()
                          .warningRegular,
                      widget: EsTitle(
                        "FA",
                        color: StructureBuilder.styles!.primaryLightColor,
                      )),
                  EsAvatarWidget(
                      backGroundColor: StructureBuilder.styles!
                          .successColor()
                          .successRegular,
                      widget: EsTitle(
                        "FA",
                        color: StructureBuilder.styles!.primaryLightColor,
                      )),
                  EsAvatarWidget(
                      backGroundColor: StructureBuilder.styles!
                          .informationColor()
                          .informationRegular,
                      widget: EsTitle(
                        "FA",
                        color: StructureBuilder.styles!.primaryLightColor,
                      )),
                ],
              )),
          title: AppLocalizations.of(context)!
              .avatarswithdifferentbackgroundcolors,
          information:
              "They are avatars with different background colors located in: \n es_flutter_component/lib/components/es_image/es_avatar_image.dart\n and is used as: \n "
              """ EsAvatarWidget(
                backGroundColor: StructureBuilder.styles!.tritiaryColor,
                  widget: EsTitle(
                "FA",
                color: StructureBuilder.styles!.primaryLightColor,
              )),"""),
      ContainerItems(
          widget: Container(
              // height: 250,
              child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.end,
            spacing: StructureBuilder.dims!.h1Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              EsAvatarImage(
                path: _imagePath,
                radius: StructureBuilder.dims!.h1IconSize / 2,
              ),
              EsAvatarImage(
                path: _imagePath,
                radius: StructureBuilder.dims!.h2IconSize,
              ),
              EsAvatarImage(
                path: _imagePath,
              ),
              EsAvatarImage.rectangle(
                isrectangle: true,
                path: _imagePath,
                size: StructureBuilder.dims!.h0IconSize,
              ),
              EsAvatarImage.rectangle(
                isrectangle: true,
                path: _imagePath,
              ),
              EsAvatarImage.rectangle(
                isrectangle: true,
                path: _imagePath,
                size: StructureBuilder.dims!.h2IconSize,
              ),
              EsAvatarWidget(
                widget: EsTitle(
                  "FA",
                  color: StructureBuilder.styles!.primaryLightColor,
                ),
                radius: StructureBuilder.dims!.h2IconSize,
              ),
              EsAvatarWidget(
                widget: EsTitle(
                  "FA",
                  color: StructureBuilder.styles!.primaryLightColor,
                ),
              ),
              EsAvatarWidget(
                widget: EsTitle(
                  "FA",
                  color: StructureBuilder.styles!.primaryLightColor,
                ),
                radius: StructureBuilder.dims!.h3IconSize * 0.8,
              ),
              EsAvatarWidget.rectangle(
                isrectangle: true,
                widget: EsTitle(
                  "FA",
                  color: StructureBuilder.styles!.primaryLightColor,
                ),
                size: StructureBuilder.dims!.h0IconSize,
              ),
              EsAvatarWidget.rectangle(
                isrectangle: true,
                widget: EsTitle(
                  "FA",
                  color: StructureBuilder.styles!.primaryLightColor,
                ),
                size: StructureBuilder.dims!.h1IconSize,
              ),
              EsAvatarWidget.rectangle(
                isrectangle: true,
                widget: EsTitle(
                  "FA",
                  color: StructureBuilder.styles!.primaryLightColor,
                ),
                size: StructureBuilder.dims!.h2IconSize,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.avatarsindifferentshapes,
          information:
              "They are avatars in different shapes and shapes located in: \n es_flutter_component/lib/components/es_image\n and is used as: \n "
              """EsAvatarImage.rectangle(
                   isrectangle: true,
                    path: "assets/images/img1.jpg",
                    size: StructureBuilder.dims!.h2IconSize,
                  ),"""),
      ContainerItems(
          widget: Container(
            height: 100,
            child: SizedBox(
              width: StructureBuilder.dims!.h0Padding * 10,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(0, 0),
                    child: EsAvatarImage(
                      path: _imagePath,
                    ),
                  ),
                  Align(
                    alignment: Alignment(_alignFactor, 0),
                    child: EsAvatarWidget(
                        widget: EsTitle(
                      "FA",
                      color: StructureBuilder.styles!.primaryLightColor,
                    )),
                  ),
                  Align(
                    alignment: Alignment(_alignFactor * 2, 0),
                    child: EsAvatarImage(
                      path: _imagePath,
                    ),
                  ),
                  Align(
                    alignment: Alignment(_alignFactor * 3, 0),
                    child: EsAvatarWidget(
                        backGroundColor: StructureBuilder.styles!.tritiaryColor,
                        widget: EsTitle(
                          "FA",
                          color: StructureBuilder.styles!.primaryLightColor,
                        )),
                  ),
                ],
              ),
            ),
          ),
          title: AppLocalizations.of(context)!.groupavatar,
          information:
              "It is group avatar located in: \n es_flutter_component/lib/components/es_image\n and is used as: \n "
              """SizedBox(
                    width: StructureBuilder.dims!.h0Padding*10,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment(0,0),
                          child: EsAvatarImage(path:_imagePath,

                          ),
                        ),
                        Align(
                          alignment: Alignment(_alignFactor,0),
                          child: EsAvatarWidget(
                              widget: EsTitle(
                                "FA",
                                color: StructureBuilder.styles!.primaryLightColor,
                              )),
                        ),
                        Align(
                          alignment: Alignment(_alignFactor*2,0),
                          child: EsAvatarImage(path:_imagePath,

                          ),
                        ),
                        Align(
                          alignment: Alignment(_alignFactor*3,0),
                          child: EsAvatarWidget(
                            backGroundColor: StructureBuilder.styles!.tritiaryColor,
                              widget: EsTitle(
                                "FA",
                                color: StructureBuilder.styles!.primaryLightColor,
                              )),
                        ),

                      ],
                    ),
                  ),"""),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.avatartitle,
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
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
