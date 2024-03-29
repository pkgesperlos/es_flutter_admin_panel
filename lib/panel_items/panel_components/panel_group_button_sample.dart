
import 'package:es_flutter_components/components/es_group_button/group_button.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_components/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelGroupButtonSample extends StatelessWidget {

  static const routeName = '/panelGroupButtonSample';

  const PanelGroupButtonSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _iconList = [
      EsSvgIcon(
        "packages/es_flutter_components/assets/svgs/home.svg",
        color: StructureBuilder.styles!.t6Color,
        size: StructureBuilder.dims!.h2IconSize,
      ),
      EsSvgIcon(
        "packages/es_flutter_components/assets/svgs/bookmarks.svg",
        color: StructureBuilder.styles!.t6Color,
        size: StructureBuilder.dims!.h2IconSize,
      ),
      EsSvgIcon(
        "packages/es_flutter_components/assets/svgs/Gift.svg",
        color: StructureBuilder.styles!.t6Color,
        size: StructureBuilder.dims!.h2IconSize,
      ),
      EsSvgIcon(
        "packages/es_flutter_components/assets/svgs/setting2.svg",
        color: StructureBuilder.styles!.t6Color,
        size: StructureBuilder.dims!.h2IconSize,
      ),
      EsSvgIcon(
        "packages/es_flutter_components/assets/svgs/exit.svg",
        color: StructureBuilder.styles!.t6Color,
        size: StructureBuilder.dims!.h2IconSize,
      ),
    ];
    List<Widget> _widgetList1 = List.generate(
        5,
        (index) => Padding(
            padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
            child: EsOrdinaryText(
              "${index + 1}",
              color: StructureBuilder.styles!.t6Color,
              size: StructureBuilder.dims!.h1FontSize,
            )));
    List<Widget> _widgetList2 = List.generate(
        5,
        (index) => Padding(
            padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
            child: _iconList[index]));

    List list = [
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                initialSelectedindex: 0,
              ),
              EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                initialSelectedindex: 1,
                unSelectedColor: StructureBuilder.styles!.secondaryColor,
              ),
              EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                initialSelectedindex: 2,
                unSelectedColor: StructureBuilder.styles!.specificColor,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.icongroupbutton,
          information:
              "these are icon group buttons  located in: \n es_flutter_component/lib/components/es_button/es_group_button/group_button.dart' \n and is used as: \n "
              """EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                initialSelectedindex: 1,
                unSelectedColor: Colors.indigo,
              ),
                 "\n   where \n"
              List<Widget> _widgetList2 = List.generate(
        5,
        (index) => Padding(
            padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
            child: _iconList[index]));
              """),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              EsGroupButton(
                widgetList: _widgetList1,
                // onPressedList[]: ,
                initialSelectedindex: 0,
              ),
              EsGroupButton(
                widgetList: _widgetList1,
                initialSelectedindex: 1,
                // onPressedList[]: ,
                unSelectedColor: StructureBuilder.styles!.secondaryColor,
              ),
              EsGroupButton(
                widgetList: _widgetList1,
                initialSelectedindex: 2,
                // onPressedList[]: ,
                unSelectedColor: StructureBuilder.styles!.specificColor,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.textgroupbutton,
          information:
              "these are text group buttons located in: \n es_flutter_component/lib/components/es_button/es_group_button/group_button.dart' \n and is used as: \n "
              """EsGroupButton(
                widgetList: _widgetList1,
                initialSelectedindex: 1,
                // onPressedList[]: ,
              ),
                 "\n   where \n" 
              List<Widget> _widgetList1 = List.generate(
        5,
        (index) => Padding(
            padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
            child: EsOrdinaryText(
              "",
              size: StructureBuilder.dims!.h1FontSize,
            )));
              """),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                maxSelected: 3,
                initialSelectedindex: 0,
              ),
              EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                maxSelected: 3,
                initialSelectedindex: 1,
                unSelectedColor: StructureBuilder.styles!.secondaryColor,
              ),
              EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                maxSelected: 3,
                initialSelectedindex: 2,
                unSelectedColor: StructureBuilder.styles!.specificColor,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.groupbuttonwithmaxselection,
          information:
              "these are group buttons with max selection boundary located in: \n es_flutter_component/lib/components/es_button/es_group_button/group_button.dart' \n and is used as: \n "
              """EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                maxSelected: 3,
                initialSelectedindex: 1,
              ),
                 "\n   where \n"
              List<Widget> _widgetList2 = List.generate(
        5,
        (index) => Padding(
            padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
            child: _iconList[index]));
              """),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                initialSelectedindex: 0,
                isRadio: true,
              ),
              EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                initialSelectedindex: 1,
                isRadio: true,
                unSelectedColor: StructureBuilder.styles!.secondaryColor,
              ),
              EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                initialSelectedindex: 2,
                isRadio: true,
                unSelectedColor: StructureBuilder.styles!.specificColor,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.radiogroupbutton,
          information:
              "these are radio group buttons located in: \n es_flutter_component/lib/components/es_button/es_group_button/group_button.dart' \n and is used as: \n "
              """EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                initialSelectedindex: 1,
                isRadio: true,
              ),
                 "\n   where \n" 
              List<Widget> _widgetList2 = List.generate(
        5,
        (index) => Padding(
            padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
            child: _iconList[index]));
              """),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                disabledIndexes: [0, 3],
                initialSelectedindex: 1,
              ),
              EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                disabledIndexes: [0, 3],
                initialSelectedindex: 1,
                unSelectedColor: StructureBuilder.styles!.secondaryColor,
              ),
              EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                disabledIndexes: [0, 3],
                initialSelectedindex: 2,
                unSelectedColor: StructureBuilder.styles!.specificColor,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.groupbuttonwithdisabledlist,
          information:
              "these are group buttons with disabled list located in: \n es_flutter_component/lib/components/es_button/es_group_button/group_button.dart' \n and is used as: \n "
              """EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                disabledIndexes: [0,3],
                initialSelectedindex: 1,
              ),
                 "\n   where \n" 
              List<Widget> _widgetList2 = List.generate(
        5,
        (index) => Padding(
            padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
            child: _iconList[index]));
              """),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                direction: Axis.vertical,
                initialSelectedindex: 0,
              ),
              EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                direction: Axis.vertical,
                initialSelectedindex: 1,
                unSelectedColor: StructureBuilder.styles!.secondaryColor,
              ),
              EsGroupButton(
                widgetList: _widgetList2,
                // onPressedList[]: ,
                direction: Axis.vertical,
                initialSelectedindex: 2,
                unSelectedColor: StructureBuilder.styles!.specificColor,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.verticalgroupbutton,
          information:
              "these are vertical group buttons located in: \n es_flutter_component/lib/components/es_button/es_group_button/group_button.dart' \n and is used as: \n "
              """EsGroupButton(
                    widgetList: _widgetList2,
                    // onPressedList[]: ,
                    direction: Axis.vertical,
                    initialSelectedindex: 1,
                    unSelectedColor: Colors.indigo,
                  ),
                 "\n   where \n"
              List<Widget> _widgetList2 = List.generate(
        5,
        (index) => Padding(
            padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
            child: _iconList[index]));
              """),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.primaryColor,
        child:  Scaffold(
            backgroundColor: StructureBuilder.styles!.primaryColor,
            body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.groupbuttontitle,
                ),
                BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
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
        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
