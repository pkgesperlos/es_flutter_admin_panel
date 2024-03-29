import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_components/components/es_group_list/es_group_list.dart';

import 'package:es_flutter_components/components/es_label/es_content_label.dart';
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_components/components/es_image/es_avatar_image.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelGroupListSample extends StatefulWidget {

  static const routeName = '/panelGroupListSample';

  PanelGroupListSample({Key? key}) : super(key: key);

  @override
  State<PanelGroupListSample> createState() => _PanelGroupListSampleState();
}

class _PanelGroupListSampleState extends State<PanelGroupListSample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _height = 200;
    List<Widget> _widgetList = List.generate(4, (index) {
      return Container(
        child: EsOrdinaryText(
          AppLocalizations.of(context)!.lormmid,
          align: TextAlign.start,
          overFlowTag: true,
          maxLine: 1,
        ),
      );
    });
    List<Widget> _widgetList2 = List.generate(4, (index) {
      return Container(
        child: EsOrdinaryText(
          AppLocalizations.of(context)!.lormmid,
          color: StructureBuilder.styles!.primaryLightColor,
          overFlowTag: true,
          maxLine: 1,
        ),
      );
    });
    List<Widget> _complexWidgetList = List.generate(4, (index) {
      return Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: EsContentLabel(
                    isUnique: false,
                    size: StructureBuilder.dims!.h3IconSize / 2,
                    text: "ok",
                    widget: EsAvatarImage(
                      path: "assets/images/img1.jpg",
                      radius: StructureBuilder.dims!.h3IconSize / 2,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: EsTitle(
                    AppLocalizations.of(context)!.lormmid,
                    overFlowTag: true,
                    maxLine: 1,
                  ),
                ),
              ],
            ),
            EsOrdinaryText(
              AppLocalizations.of(context)!.lorm,
              align: TextAlign.justify,
            ),
          ],
        ),
      );
    });
    List<BoxDecoration> _decorationList = List.generate(4, (index) {
      if (index == 1) {
        return BoxDecoration(color: StructureBuilder.styles!.specificColor);
      } else {
        return BoxDecoration(color: StructureBuilder.styles!.secondaryColor);
      }
    });

    List list = [

      ContainerItems(
          widget: Container(
              height: _height,
              alignment: Alignment.topCenter,
              child: EsGroupList(
                widgetList: _widgetList,
              )),
          title: AppLocalizations.of(context)!.grouplistwithsimplecontent,
          information:
              "It is a group list with simple content located in: \n es_flutter_component/lib/components/es_group_list/es_group_list.dart' \n and is used as: \n "
              """EsGroupList(widgetList: _widgetList,)"""
                  "\n   where \n"
                  """
          ist<Widget> _widgetList = List.generate(4, (index) {
      return Container(
        child: EsOrdinaryText(
          AppLocalizations.of(context)!.lormmid,
          align: TextAlign.start,
          overFlowTag: true,
          maxLine: 1,
        ),
      );
    });
          """),
      ContainerItems(
          widget: Container(
              height: _height,
              alignment: Alignment.topCenter,
              child: EsGroupList(
                widgetList: _widgetList,
                divider: Container(),
              )),
          title: AppLocalizations.of(context)!.grouplistwithoutdivider,
          information:
              "It is a group list without divider located in: \n es_flutter_component/lib/components/es_group_list/es_group_list.dart' \n and is used as: \n "
              """EsGroupList(
                widgetList: _widgetList,
              divider: Container(),
              )"""
              "\n   where \n"
              """
          List<Widget> _widgetList = List.generate(4, (index) {
      return Container(
        child: EsOrdinaryText(
          AppLocalizations.of(context)!.lormmid,
          align: TextAlign.start,
          overFlowTag: true,
          maxLine: 1,
        ),
      );
    });"""
      ),
      ContainerItems(
          widget: Container(
              height: _height,
              alignment: Alignment.topCenter,
              child: EsGroupList(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: StructureBuilder.styles!.primaryDarkColor,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
                widgetList: _widgetList,
              )),
          title: AppLocalizations.of(context)!.grouplistwithborder,
          information:
              "It is a group list with simple content located in: \n es_flutter_component/lib/components/es_group_list/es_group_list.dart' \n and is used as: \n "
              """EsGroupList(widgetList: _widgetList,)"""
                  "\n   where \n"
                  """
          List<Widget> _widgetList = List.generate(4, (index) {
      return Container(
        child: EsOrdinaryText(
          AppLocalizations.of(context)!.lormmid,
          align: TextAlign.start,
          overFlowTag: true,
          maxLine: 1,
        ),
      );
    });"""),
      ContainerItems(
          widget: Container(
              height: _height,
              alignment: Alignment.topCenter,
              child: EsGroupList(
                widgetList: _complexWidgetList,
                itemPadding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
              )),
          title: AppLocalizations.of(context)!.grouplistwithcomplexcontent,
          information:
              "It is a group list with complex content located in: \n es_flutter_component/lib/components/es_group_list/es_group_list.dart' \n and is used as: \n "
              """ EsGroupList(widgetList: _complexWidgetList,)"""
                  "\n   where \n"
                  """
         List<Widget> _complexWidgetList = List.generate(4, (index) {
      return Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: EsContentLabel(
                    isUnique: false,
                    size: StructureBuilder.dims!.h3IconSize / 2,
                    text: "ok",
                    widget: EsAvatarImage(
                      path: "assets/images/img1.jpg",
                      radius: StructureBuilder.dims!.h3IconSize / 2,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: EsTitle(
                    AppLocalizations.of(context)!.lormmid,
                    overFlowTag: true,
                    maxLine: 1,
                  ),
                ),
              ],
            ),
            EsOrdinaryText(
              AppLocalizations.of(context)!.lorm,
              align: TextAlign.justify,
            ),
          ],
        ),
      );
    });"""
      ),
      ContainerItems(
          widget: Container(
            height: _height,
            alignment: Alignment.topCenter,
            child: EsGroupList(
              widgetList: _widgetList2,
              decorationList: _decorationList,
            ),
          ),
          title: AppLocalizations.of(context)!.grouplistwithdesireditemscolor,
          information:
              "It is a group list with desired items color located in: \n es_flutter_component/lib/components/es_group_list/es_group_list.dart' \n and is used as: \n "
              """EsGroupList(widgetList: _widgetList,)"""
                  "\n   where \n"
                  """
      List<Widget> _widgetList2 = List.generate(4, (index) {
      return Container(
        child: EsOrdinaryText(
          AppLocalizations.of(context)!.lormmid,
          color: StructureBuilder.styles!.primaryLightColor,
          overFlowTag: true,
          maxLine: 1,
        ),
      );
    });
    List<BoxDecoration> _decorationList = List.generate(4, (index) {
      if (index == 1) {
        return BoxDecoration(color: StructureBuilder.styles!.specificColor);
      } else {
        return BoxDecoration(color: StructureBuilder.styles!.secondaryColor);
      }
    });
    """
      ),

    ];

    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.decorationColor().background,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.decorationColor().background,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.grouplisttitle,
                ),
                BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h0Padding,
                    ),
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
        sizes: 'col-sm-12 col-ml-6 col-lg-4 col-xl-4', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
