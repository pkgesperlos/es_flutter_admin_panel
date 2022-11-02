import 'package:es_flutter_admin_panel/panelItems/widgets/es_accardion/es_expansion_tile.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import '../center_sceen/center_screen.dart';
import '../images/responsive_layout.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../panelItems/Panel_tabel/panel_editable_table.dart';
import '../panelItems/Panel_tabel/panel_responsive_table.dart';
import '../panelItems/Panel_tabel/panel_simple_table.dart';
import '../panelItems/panel_accardion_sample.dart';
import '../panelItems/panel_alert_sample.dart';
import '../panelItems/panel_button_sample.dart';
import '../panelItems/panel_chart.dart';
import '../panelItems/panel_dialog_box.dart';
import '../panelItems/panel_form.dart';
import '../panelItems/panel_group_button_sample.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class buttonsInfo {
  String title;
  IconData icon;
  Widget page;
  String pageRout;

  buttonsInfo(
      {required this.title,
      required this.icon,
      required this.page,
      required this.pageRout});
}

//index of drawer item
int _currentIndex = 0;
//index of accardion item of drawer item
int _currentIndex2 = 0;

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    //We have an array like this List=[buttonsInfo,[string,buttonsInfo,buttonsInfo]]
    // for acardion and non acardion type
    List<List> _buttonNames = [
      [
    AppLocalizations.of(context)!.components,
        EsSvgIcon("assets/svgs/GraduationCap.svg",
          size: StructureBuilder.dims!.h3IconSize,
          color: StructureBuilder.styles!.primaryLightColor,),
        buttonsInfo(
            title: AppLocalizations.of(context)!.accordion,
            icon: Icons.circle,
            page: PanelAccardionSample(),
            pageRout: '/accardionSample'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.alert,
            icon: Icons.circle,
            page: PanelAlertSample(),
            pageRout: '/alertSample'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.button,
            icon: Icons.circle,
            page: PanelButtonSample(),
            pageRout: '/buttonSample'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.groupbutton,
            icon: Icons.circle,
            page: PanelGroupButtonSample(),
            pageRout: '/groupButtonSample'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.alert,
            icon: Icons.circle,
            page: PanelAlertSample(),
            pageRout: '/alertSample'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.accordion,
            icon: Icons.circle,
            page: PanelAccardionSample(),
            pageRout: '/accardionSample'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.alert,
            icon: Icons.circle,
            page: PanelAlertSample(),
            pageRout: '/alertSample'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.accordion,
            icon: Icons.circle,
            page: PanelAccardionSample(),
            pageRout: '/accardionSample'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.alert,
            icon: Icons.circle,
            page: PanelAlertSample(),
            pageRout: '/alertSample'),
      ],
      [
        AppLocalizations.of(context)!.components,
        EsSvgIcon("assets/svgs/GraduationCap.svg",
          size: StructureBuilder.dims!.h3IconSize,
          color: StructureBuilder.styles!.primaryLightColor,),
        buttonsInfo(
            title: AppLocalizations.of(context)!.accordion,
            icon: Icons.circle,
            page: PanelAccardionSample(),
            pageRout: '/accardionSample'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.alert,
            icon: Icons.circle,
            page: PanelAlertSample(),
            pageRout: '/alertSample'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.accordion,
            icon: Icons.circle,
            page: PanelAccardionSample(),
            pageRout: '/accardionSample'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.alert,
            icon: Icons.circle,
            page: PanelAlertSample(),
            pageRout: '/alertSample'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.accordion,
            icon: Icons.circle,
            page: PanelAccardionSample(),
            pageRout: '/accardionSample'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.alert,
            icon: Icons.circle,
            page: PanelAlertSample(),
            pageRout: '/alertSample'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.accordion,
            icon: Icons.circle,
            page: PanelAccardionSample(),
            pageRout: '/accardionSample'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.alert,
            icon: Icons.circle,
            page: PanelAlertSample(),
            pageRout: '/alertSample'),
      ],
      // [
      //   AppLocalizations.of(context)!.components,
      //   EsSvgIcon("assets/svgs/GraduationCap.svg",
      //     size: StructureBuilder.dims!.h3IconSize,
      //     color: StructureBuilder.styles!.primaryLightColor,),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.accordion,
      //       icon: Icons.circle,
      //       page: PanelAccardionSample(),
      //       pageRout: '/accardionSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.alert,
      //       icon: Icons.circle,
      //       page: PanelAlertSample(),
      //       pageRout: '/alertSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.accordion,
      //       icon: Icons.circle,
      //       page: PanelAccardionSample(),
      //       pageRout: '/accardionSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.alert,
      //       icon: Icons.circle,
      //       page: PanelAlertSample(),
      //       pageRout: '/alertSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.accordion,
      //       icon: Icons.circle,
      //       page: PanelAccardionSample(),
      //       pageRout: '/accardionSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.alert,
      //       icon: Icons.circle,
      //       page: PanelAlertSample(),
      //       pageRout: '/alertSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.accordion,
      //       icon: Icons.circle,
      //       page: PanelAccardionSample(),
      //       pageRout: '/accardionSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.alert,
      //       icon: Icons.circle,
      //       page: PanelAlertSample(),
      //       pageRout: '/alertSample'),
      // ],
      // [
      //   AppLocalizations.of(context)!.components,
      //   EsSvgIcon("assets/svgs/GraduationCap.svg",
      //     size: StructureBuilder.dims!.h3IconSize,
      //     color: StructureBuilder.styles!.primaryLightColor,),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.accordion,
      //       icon: Icons.circle,
      //       page: PanelAccardionSample(),
      //       pageRout: '/accardionSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.alert,
      //       icon: Icons.circle,
      //       page: PanelAlertSample(),
      //       pageRout: '/alertSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.accordion,
      //       icon: Icons.circle,
      //       page: PanelAccardionSample(),
      //       pageRout: '/accardionSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.alert,
      //       icon: Icons.circle,
      //       page: PanelAlertSample(),
      //       pageRout: '/alertSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.accordion,
      //       icon: Icons.circle,
      //       page: PanelAccardionSample(),
      //       pageRout: '/accardionSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.alert,
      //       icon: Icons.circle,
      //       page: PanelAlertSample(),
      //       pageRout: '/alertSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.accordion,
      //       icon: Icons.circle,
      //       page: PanelAccardionSample(),
      //       pageRout: '/accardionSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.alert,
      //       icon: Icons.circle,
      //       page: PanelAlertSample(),
      //       pageRout: '/alertSample'),
      // ],
      // [
      //   AppLocalizations.of(context)!.components,
      //   EsSvgIcon("assets/svgs/GraduationCap.svg",
      //     size: StructureBuilder.dims!.h3IconSize,
      //     color: StructureBuilder.styles!.primaryLightColor,),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.accordion,
      //       icon: Icons.circle,
      //       page: PanelAccardionSample(),
      //       pageRout: '/accardionSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.alert,
      //       icon: Icons.circle,
      //       page: PanelAlertSample(),
      //       pageRout: '/alertSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.accordion,
      //       icon: Icons.circle,
      //       page: PanelAccardionSample(),
      //       pageRout: '/accardionSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.alert,
      //       icon: Icons.circle,
      //       page: PanelAlertSample(),
      //       pageRout: '/alertSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.accordion,
      //       icon: Icons.circle,
      //       page: PanelAccardionSample(),
      //       pageRout: '/accardionSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.alert,
      //       icon: Icons.circle,
      //       page: PanelAlertSample(),
      //       pageRout: '/alertSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.accordion,
      //       icon: Icons.circle,
      //       page: PanelAccardionSample(),
      //       pageRout: '/accardionSample'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.alert,
      //       icon: Icons.circle,
      //       page: PanelAlertSample(),
      //       pageRout: '/alertSample'),
      // ],
      // [
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.charts,
      //       icon: Icons.circle,
      //       page: PanelChart(),
      //       pageRout: '/chart'),
      // ],
      // [
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.text,
      //       icon: Icons.circle,
      //       page: PanelTextSample(),
      //       pageRout: '/textSample'),
      // ],
      // [
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.accordion,
      //       icon: Icons.circle,
      //       page: PanelAccardionSample(),
      //       pageRout: '/accardionSample'),
      // ],
      // [
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.alert,
      //       icon: Icons.circle,
      //       page: PanelAlertSample(),
      //       pageRout: '/alertSample'),
      // ],
      // [
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.dialogBox,
      //       icon: Icons.circle,
      //       page: PanelDialogBox(),
      //       pageRout: '/dialog'),
      // ],
      // [
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.button,
      //       icon: Icons.circle,
      //       page: PanelButtonSample(),
      //       pageRout: '/buttonSample'),
      // ],
      // [
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.form,
      //       icon: Icons.circle,
      //       page: PanelForm(),
      //       pageRout: '/form')
      // ],
      // [
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.images,
      //       icon: Icons.circle,
      //       page: PanelImage(),
      //       pageRout: '/image')
      // ],
      // [
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.progressBar,
      //       icon: Icons.circle,
      //       page: PanelProgressBar(),
      //       pageRout: '/progressbar')
      // ],
      // [
      //   AppLocalizations.of(context)!.tables,
      //   Icon(Icons.add_a_photo_sharp,color:
      //     StructureBuilder.styles!.primaryLightColor,),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.simpleTable,
      //       icon: Icons.circle,
      //       page: PanelSimpleTable(),
      //       pageRout: '/simpletable'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.editableTable,
      //       icon: Icons.circle,
      //       page: PanelEditableTable(),
      //       pageRout: '/editable'),
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.responsiveTable,
      //       icon: Icons.circle,
      //       page: PanelResponsiveTable(),
      //       pageRout: '/responsiveTable')
      // ],
      // [
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.slider,
      //       icon: Icons.circle,
      //       page: PanelSlider(),
      //       pageRout: '/slider')
      // ],
      // [
      //   buttonsInfo(
      //       title: AppLocalizations.of(context)!.notifications,
      //       icon: Icons.circle,
      //       page: PanelNotification(),
      //       pageRout: '/notification')
      // ],
    ];
    List _acardionList = [];
    for (int i = 0; i < _buttonNames.length; i++) {
      _acardionList.add(_buttonNames[i].length != 1 ? 1 : 0);
    }
    Widget drawerItems(item, index, currentIndex, bool condition) {
      return Container(
        // width: StructureBuilder.dims!.h0Padding*4,
        // padding: EdgeInsets.only(
        //     right: StructureBuilder.dims!.h2Padding,
        //     left: StructureBuilder.dims!.h3Padding),

        child: Row(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(
                StructureBuilder.dims!.h1Padding,
              ),
              child: Icon(
                item.icon,
                size: 5,
                // _buttonNames2[index][0].icon,
                color: condition
                    ? StructureBuilder.styles!.primaryLightColor
                    : StructureBuilder.styles!.t3Color,
              ),
            ),
            EsOrdinaryText(
              // data: _buttonNames2[index][0].title,
              item.title,
              color: condition
                  ? StructureBuilder.styles!.primaryLightColor
                  : StructureBuilder.styles!.t3Color,

              // style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        decoration: BoxDecoration(
            // color: Colors.transparent,
            borderRadius: BorderRadius.all(
                Radius.circular(StructureBuilder.dims!.h0Padding))),
      );
    }

    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: StructureBuilder.styles!.primaryDarkColor,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:StructureBuilder.dims!.h0Padding),
            child: Column(
              children: [
                //title of drawer
                ListTile(
                  title: EsOrdinaryText(
                    AppLocalizations.of(context)!.adminMenu,
                    color: StructureBuilder.styles!.primaryDarkColor,
                  ),
                  //place a clse item for non computer drawer mode
                  trailing: ResponsiveLayot.isComputer(context)
                      ? null
                      : IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.black54,
                          )),
                ),
                //creating list items of drawer
                ...List.generate(
                  _buttonNames.length,
                  //decide if we have accardion or not
                  (index) => _buttonNames[index].length == 1
                      ? Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h1Padding,
                      vertical: StructureBuilder.dims!.h1Padding,
                    ),
                    //deside if the item is selected or not
                    decoration:
                    // BoxDecoration(color: Colors.transparent),
                    (index == _currentIndex)
                        ? selectedBoxDecoration()
                        : null,
                    child: GestureDetector(
                      child: drawerItems(
                          _buttonNames[index][0],
                          index,
                          _currentIndex,
                          (index == _currentIndex)),
                      onTap: () {
                        setState(() {
                          _currentIndex = index;

                          CenterScreen.globalKey.currentState
                              ?.changePage(
                              _buttonNames[index][0].page);
                        });
                      },
                    ),
                  )
                      : EsExpansionTile(
                          backGroundImagePath: "assets/images/back2.png",
                          iconColor: StructureBuilder.styles!.primaryLightColor,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(
                                  StructureBuilder.dims!.h1BorderRadius))),
                          title: Row(
                            children: [
                              _buttonNames[index][1],
                              EsHSpacer(big: true,),
                              EsOrdinaryText(
                                _buttonNames[index][0],
                                color:
                                    StructureBuilder.styles!.primaryLightColor,
                              ),
                            ],
                          ),
                          children: [
                            ...List.generate(
                                //_buttonNames[index] is the List of accardion items
                                _buttonNames[index].length - 2,
                                (index2) => Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                            horizontal:
                                                StructureBuilder.dims!.h2Padding,
                                            vertical:
                                                StructureBuilder.dims!.h1Padding,
                                          ),
                                          //deside if the item is selected or not
                                          padding:
                                          (index2 == _currentIndex2 &&
                                              _acardionList[
                                              _currentIndex] !=
                                                  0)
                                              ? EdgeInsets.symmetric(vertical: StructureBuilder.dims!.h2Padding)
                                              : null,
                                          decoration:
                                              (index2 == _currentIndex2 &&
                                                      _acardionList[
                                                              _currentIndex] !=
                                                          0)
                                                  ? selectedBoxDecoration()
                                                  : null,
                                          child: GestureDetector(
                                            child: drawerItems(
                                                _buttonNames[index][index2 + 2],
                                                index2,
                                                _currentIndex2,
                                                index2 == _currentIndex2 &&
                                                    _acardionList[
                                                            _currentIndex] !=
                                                        0),
                                            onTap: () {
                                              setState(() {
                                                _currentIndex2 = index2;
                                                _currentIndex = index;

                                                CenterScreen
                                                    .globalKey.currentState
                                                    ?.changePage(
                                                        _buttonNames[index]
                                                                [index2 + 2]
                                                            .page);
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ))
                          ],
                        ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration selectedBoxDecoration() {
    return BoxDecoration(
      color: StructureBuilder.styles!.primaryColor,
      // color: Colors.transparent,
      borderRadius: BorderRadius.circular(StructureBuilder.dims!.h0BorderRadius),
      // border: Border.all(color: StructureBuilder.styles!.primaryLightColor, width: 2),
      boxShadow: [
        BoxShadow(
          color: StructureBuilder.styles!.primaryLightColor,
          // blurRadius: 2.0,

          offset: Offset(0, 1.5),
        ),
      ],
      // gradient: LinearGradient(colors: [
      //   StructureBuilder.styles!.primaryColor
      //       .withOpacity(0.1),
      //   StructureBuilder.styles!.primaryColor
      //       .withOpacity(0.9),
      // ])
    );
  }
}
