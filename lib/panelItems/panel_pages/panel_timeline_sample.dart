import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/editable_components/es_timeline/showcase/timeline_status.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/components/es_image/es_avatar_image.dart';
import 'package:es_flutter_component/components/es_image/es_avatar_widget.dart';
import 'package:es_flutter_component/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';

import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../editable_components/es_timeline/showcase/es_custom_timeline.dart';
import '../../editable_components/es_timeline/showcase/package_delivery_tracking.dart';
import '../../editable_components/es_timeline/showcase/process_timeline.dart';

class PanelTimelineSample extends StatefulWidget {
  PanelTimelineSample({Key? key}) : super(key: key);

  @override
  State<PanelTimelineSample> createState() => _PanelTimelineSampleState();
}

class _PanelTimelineSampleState extends State<PanelTimelineSample> {
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
    double _height = 600;

    List<Widget> _indicatorList = [
      EsAvatarImage(
        path: "assets/images/img4.jpg",
        radius: StructureBuilder.dims!.h0Padding,
      ),
      EsAvatarWidget(
          backGroundColor: StructureBuilder.styles!.dangerColor().dangerRegular,
          widget: EsTitle(
            "SA",
            color: StructureBuilder.styles!.primaryLightColor,
          )),
      EsAvatarWidget(
          widget: EsSvgIcon(
        "packages/es_flutter_component/assets/svgs/gallery.svg",
        size: StructureBuilder.dims!.h3IconSize,
        color: StructureBuilder.styles!.primaryLightColor,
      )),
      EsAvatarWidget(
          backGroundColor:
              StructureBuilder.styles!.warningColor().warningRegular,
          widget: EsTitle(
            "HH",
            color: StructureBuilder.styles!.primaryLightColor,
          )),
    ];
    Widget _content1() {
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h0Padding,
          horizontal: StructureBuilder.dims!.h0Padding,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EsTitle(AppLocalizations.of(context)!.lormshort),
              EsOrdinaryText(
                AppLocalizations.of(context)!.lorm,
                align: TextAlign.justify,
                color: StructureBuilder.styles!.primaryColor,
              ),
              EsVSpacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.access_time,
                    size: StructureBuilder.dims!.h3IconSize / 2,
                    color: StructureBuilder.styles!.secondaryColor,
                  ),
                  EsHSpacer(),
                  EsLabelText(
                    AppLocalizations.of(context)!.yesterday,
                    color: StructureBuilder.styles!.secondaryColor,
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget _content2() {
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h0Padding,
          horizontal: StructureBuilder.dims!.h0Padding,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EsTitle(AppLocalizations.of(context)!.lormshort),
              EsOrdinaryText(
                AppLocalizations.of(context)!.lormmid,
                align: TextAlign.justify,
                color: StructureBuilder.styles!.primaryColor,
              ),
              EsVSpacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.access_time,
                    size: StructureBuilder.dims!.h3IconSize / 2,
                    color: StructureBuilder.styles!.secondaryColor,
                  ),
                  EsHSpacer(),
                  EsLabelText(
                    "20.10.2018",
                    color: StructureBuilder.styles!.secondaryColor,
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget _content3() {
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h0Padding,
          horizontal: StructureBuilder.dims!.h0Padding,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/img1.jpg",
                    width: StructureBuilder.dims!.h0Padding * 5,
                    height: StructureBuilder.dims!.h0Padding * 5,
                    fit: BoxFit.cover,
                  ),
                  EsHSpacer(),
                  Image.asset(
                    "assets/images/img2.jpg",
                    width: StructureBuilder.dims!.h0Padding * 5,
                    height: StructureBuilder.dims!.h0Padding * 5,
                    fit: BoxFit.cover,
                  ),
                  EsHSpacer(),
                  Image.asset(
                    "assets/images/img3.jpg",
                    width: StructureBuilder.dims!.h0Padding * 5,
                    height: StructureBuilder.dims!.h0Padding * 5,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              EsVSpacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.access_time,
                    size: StructureBuilder.dims!.h3IconSize / 2,
                    color: StructureBuilder.styles!.secondaryColor,
                  ),
                  EsHSpacer(),
                  EsLabelText(
                    "20.10.2018",
                    color: StructureBuilder.styles!.secondaryColor,
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

    List<Widget> _contentList = [
      _content1(),
      _content2(),
      _content3(),
      _content2(),
    ];

    List list = [
      ContainerItems(
          widget: Container(
              width: double.infinity,
              height: _height,
              child: EsCustomTimeLine(
                indicatorList: _indicatorList,
                contentList: _contentList,
              )),
          title:  AppLocalizations.of(context)!.customtimeline,
          information: "It is custom time Line ,the timelines package is added in pubspec.yaml 's dependencies "
              "and located in:"
              " \n es_flutter_component/lib/components/es_timeline/showcase/es_profile_timeline.dart "
              "\n and is used as: \n "
              """EsCustomTimeLine(
                indicatorList: _indicatorList,
                contentList: _contentList,
              )"""),
      ContainerItems(
          widget: Container(
              width: double.infinity,
              height: _height,
              child: ProcessTimelinePage()),
          title:  AppLocalizations.of(context)!.processtimeline,
          information: "It is a process time Line,the timelines package is added in pubspec.yaml 's dependencies "
              "and located in:"
              " \n es_flutter_component/lib/components/es_timeline/showcase/process_timeline.dart "
              "\n and is used as: \n "
              """ ProcessTimelinePage()"""),
      ContainerItems(
          widget: Container(
              width: double.infinity,
              height: _height,
              child: PackageDeliveryTrackingPage()),
          title:  AppLocalizations.of(context)!.packagedeliverytimeline,
          information: "It is a Status time Line,the timelines package is added in pubspec.yaml 's dependencies"
              " and located in:"
              " \n es_flutter_component/lib/components/es_timeline/showcase/package_delivery_tracking.dart"
              "\n and is used as: \n "
              """PackageDeliveryTrackingPage()"""),
      ContainerItems(
          widget: Container(
              width: double.infinity,
              height: _height / 2,
              child: TimelineStatusPage()),
          title:  AppLocalizations.of(context)!.statustimeline,
          information: "It is a Status time Line,the timelines package is added in pubspec.yaml 's dependencies"
              " and  located in:"
              " \n es_flutter_component/lib/components/es_timeline/showcase/timeline_status.dart"
              "\n and is used as: \n "
              """TimelineStatusPage()"""),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title:  AppLocalizations.of(context)!.timelinetitle,
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h0Padding),
                  decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryDarkColor,
                  ),
                  children: List.generate(list.length, (index) {
                    if (index == 0)
                      return boxShow2(list[index]);
                    else
                      return boxShow(list[index]);
                  })
                  // children: [boxShow(list[0]),boxShow2(list[1]),],

                  )
            ],
          ),
        ));
  }

  Widget boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6', child: widget);
  }

  Widget boxShow2(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
