
import 'package:es_flutter_component/components/es_toast/es_custom_toast_container.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/es_button/es_icon_button.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PanelToastSample extends StatefulWidget {

  static const routeName = '/panelToastSample';

  const PanelToastSample({Key? key}) : super(key: key);

  @override
  State<PanelToastSample> createState() => _PanelToastSampleState();
}

class _PanelToastSampleState extends State<PanelToastSample> {
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  void cancelToast() {
    Fluttertoast.cancel();
  }

  @override
  Widget build(BuildContext context) {
    List list = [
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h2Padding,
            children: [
              EsIconButton(
                EsSvgIcon("packages/es_flutter_component/assets/svgs/infocircle.svg",
                    size: StructureBuilder.dims!.h2IconSize,
                    color: StructureBuilder.styles!.primaryLightColor),
                // fillColor: StructureBuilder.styles!.alertColor().danger,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("This is flutter toast."),
                    action: SnackBarAction(
                        label: 'UNDO',
                        onPressed:
                            ScaffoldMessenger.of(context).hideCurrentSnackBar),
                  ));
                },
              ),
              EsIconButton(
                  EsSvgIcon(
                    "packages/es_flutter_component/assets/svgs/danger.svg",
                    size: StructureBuilder.dims!.h2IconSize,
                    color: StructureBuilder.styles!.dangerColor().dangerDark,
                  ),
                  fillColor: StructureBuilder.styles!.alertColor().danger,
                  onTap: () {
                fToast.showToast(
                  child: EsCustomToastContainer(
                    icon: EsSvgIcon(
                      "packages/es_flutter_component/assets/svgs/danger.svg",
                      size: StructureBuilder.dims!.h2IconSize,
                      color: StructureBuilder.styles!.dangerColor().dangerDark,
                    ),
                    backGroundColor:
                        StructureBuilder.styles!.dangerColor().dangerLight,
                    contentColor:
                        StructureBuilder.styles!.dangerColor().dangerDark,
                  ),
                  gravity: ToastGravity.TOP_RIGHT,
                  toastDuration: Duration(seconds: 2),
                );
              }),
              EsIconButton(
                EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/CheckCircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.successColor().successDark,
                ),
                fillColor: StructureBuilder.styles!.alertColor().success,
                onTap: () {
                  fToast.showToast(
                    child: EsCustomToastContainer(),
                    gravity: ToastGravity.TOP_RIGHT,
                    toastDuration: Duration(seconds: 2),
                  );
                },
              ),
              EsIconButton(
                EsSvgIcon(
                  "packages/es_flutter_component/assets/svgs/infocircle.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                  color: StructureBuilder.styles!.warningColor().warningDark,
                ),
                fillColor: StructureBuilder.styles!.warningColor().warningLight,
                onTap: () {
                  fToast.showToast(
                    child: EsCustomToastContainer(
                      icon: EsSvgIcon("packages/es_flutter_component/assets/svgs/infocircle.svg",
                        size: StructureBuilder.dims!.h2IconSize,
                        color:
                            StructureBuilder.styles!.warningColor().warningDark,
                      ),
                      backGroundColor:
                          StructureBuilder.styles!.warningColor().warningLight,
                      contentColor:
                          StructureBuilder.styles!.warningColor().warningDark,
                    ),
                    gravity: ToastGravity.TOP_RIGHT,
                    toastDuration: Duration(seconds: 2),
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
                  fToast.showToast(
                    child: EsCustomToastContainer(
                      icon: EsSvgIcon("packages/es_flutter_component/assets/svgs/Megaphone.svg",
                        size: StructureBuilder.dims!.h2IconSize,
                        color: StructureBuilder.styles!
                            .informationColor()
                            .informationDark,
                      ),
                      backGroundColor: StructureBuilder.styles!
                          .informationColor()
                          .informationLight,
                      contentColor: StructureBuilder.styles!
                          .informationColor()
                          .informationDark,
                    ),
                    gravity: ToastGravity.TOP_RIGHT,
                    toastDuration: Duration(seconds: 2),
                  );
                },
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.toastmessage,
          information:
              "these are toast messages that the custom type of them are used after adding \n"
              "fluttertoast package in pubspec.yaml 's dependencies and the EsCustomToastContainer located in: \n "
              "es_flutter_component/es_toast/es_custom_toast_container.dart \n and is used as: \n "
              """
               onTap: () {
                  fToast.showToast(
                    child: EsCustomToastContainer(
                      icon: EsSvgIcon("packages/es_flutter_component/assets/svgs/Megaphone.svg",
                        size: StructureBuilder.dims!.h2IconSize,
                        color: StructureBuilder.styles!.informationColor().informationDark,
                      ),
                      backGroundColor: StructureBuilder.styles!.informationColor().informationLight,
                      contentColor: StructureBuilder.styles!.informationColor().informationDark,
                    ),
                    gravity: ToastGravity.BOTTOM,
                    toastDuration: Duration(seconds: 2),
                  );
                },
              """),
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

                  title: AppLocalizations.of(context)!.toasttitle,
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
