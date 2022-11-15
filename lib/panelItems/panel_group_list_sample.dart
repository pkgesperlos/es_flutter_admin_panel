import 'package:es_flutter_admin_panel/panelItems/widgets/container_items.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_group_list/es_group_list.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_label/es_content_label.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_table/es_simple_table.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_text/es_title.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/page_title_container.dart';
import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_image/es_avatar_image.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelGroupListSample extends StatefulWidget {
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
  List<Widget> _widgetList=List.generate(4, (index) {
    return Container(
      child: EsOrdinaryText(StructureBuilder.configs!.lorm,
        overFlowTag: true,
        maxLine: 1,),
    );
  });
  List<Widget> _widgetList2=List.generate(4, (index) {
    return Container(
      child: EsOrdinaryText(
        StructureBuilder.configs!.lorm,
        color: StructureBuilder.styles!.primaryLightColor,
        overFlowTag: true,
        maxLine: 1,),
    );
  });
  List<Widget> _complexWidgetList=List.generate(4, (index) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: EsContentLabel(
                  isUnique: false,
                  size: StructureBuilder.dims!.h3IconSize/2,
                  text: "ok",
                  widget: EsAvatarImage(
                    path: "assets/images/img1.jpg",
                    radius: StructureBuilder.dims!.h3IconSize/2,
                  ),
                ),
              ),

              Expanded(
                flex: 5,
                child: EsTitle(StructureBuilder.configs!.lorm,
                  overFlowTag: true,
                  maxLine: 1,),
              ),
            ],
          ),
          EsOrdinaryText(StructureBuilder.configs!.lorm,
            overFlowTag: true,
            maxLine: 1,),

        ],
      ),
    );
  });
  List<BoxDecoration> _decorationList=List.generate(4, (index) {
    if(index==1){return BoxDecoration(color: StructureBuilder.styles!.tritiaryColor);}
    else {
        return BoxDecoration(color: StructureBuilder.styles!.secondaryColor);
      }
    });

    List list = [
      ContainerItems(
          widget: Container(
              height: 150,
              child: EsGroupList(widgetList: _widgetList,)
          ),
          title: AppLocalizations.of(context)!.grouplistwithsimplecontent,
          information:
              "it is a group list with simple content located in: \n es_flutter_component/es_group_list/es_group_list.dart' \n and is used as: \n "
              """EsGroupList(widgetList: _widgetList,)"""),
      ContainerItems(
          widget: Container(
              height: 150,
              child: EsGroupList(
                widgetList: _widgetList,
              divider: Container(),
              )
          ),
          title: AppLocalizations.of(context)!.grouplistwithoutdivider,
          information:
              "it is a group list without divider located in: \n es_flutter_component/es_group_list/es_group_list.dart' \n and is used as: \n "
              """EsGroupList(
                widgetList: _widgetList,
              divider: Container(),
              )"""),
      ContainerItems(
          widget: Container(
              height: 150,
              child: EsGroupList(
                decoration: BoxDecoration(
                    border: Border.all(color: StructureBuilder.styles!.primaryColor,),
                borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h0BorderRadius))
                ),
                widgetList: _widgetList,)
          ),
          title: AppLocalizations.of(context)!.grouplistwithborder,
          information:
          "it is a group list with simple content located in: \n es_flutter_component/es_group_list/es_group_list.dart' \n and is used as: \n "
              """EsGroupList(widgetList: _widgetList,)"""),
      ContainerItems(
          widget: Container(
              height: 150,
              child: EsGroupList(

                widgetList: _complexWidgetList,
              itemPadding:EdgeInsets.all(StructureBuilder.dims!.h0Padding),
              )
          ),
          title: AppLocalizations.of(context)!.grouplistwithcomplexcontent,
          information:
              "it is a group list with complex content located in: \n es_flutter_component/es_group_list/es_group_list.dart' \n and is used as: \n "
              """ EsGroupList(widgetList: _complexWidgetList,)"""),
      ContainerItems(
          widget: Container(
              height: 150,
              child: EsGroupList(widgetList: _widgetList2,
              decorationList: _decorationList,
              ),

          ),
          title: AppLocalizations.of(context)!.grouplistwithdesireditemscolor,
          information:
          "it is a group list with desired items color located in: \n es_flutter_component/es_group_list/es_group_list.dart' \n and is used as: \n "
              """EsGroupList(widgetList: _widgetList,)"""),
    ];

    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.grouplisttitle,
              ),
              BootstrapContainer(

                  fluid: true,
                  padding: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h0Padding,),


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

        sizes: 'col-sm-12 col-ml-6 col-lg-4 col-xl-4', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
