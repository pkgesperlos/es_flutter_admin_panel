import 'package:es_flutter_admin_panel/panelItems/widgets/es_accardion/es_expansion_tile.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../center_sceen/center_screen.dart';
import '../images/responsive_layout.dart';
import '../panelItems/panel_Icons_sample.dart';
import '../panelItems/panel_accardion_sample.dart';
import '../panelItems/panel_advanced_form_sample.dart';
import '../panelItems/panel_alert_sample.dart';
import '../panelItems/panel_avatar_sample.dart';
import '../panelItems/panel_bread_crumb_sample.dart';
import '../panelItems/panel_button_sample.dart';
import '../panelItems/panel_color_sample.dart';
import '../panelItems/panel_cropable_image_sample.dart';
import '../panelItems/panel_custom_form_sample.dart';
import '../panelItems/panel_dropdown_sample.dart';
import '../panelItems/panel_group_button_sample.dart';
import '../panelItems/panel_group_list_sample.dart';
import '../panelItems/panel_image_card_sample.dart';
import '../panelItems/panel_light_box_sample.dart';
import '../panelItems/panel_label_sample.dart';
import '../panelItems/panel_modal_sample.dart';
import '../panelItems/panel_page_indicator_sample.dart';
import '../panelItems/panel_primary_card_sample.dart';
import '../panelItems/panel_primary_form_sample.dart';
import '../panelItems/panel_progress_bar_sample.dart';
import '../panelItems/panel_responsive_table_sample.dart';
import '../panelItems/panel_scrollable_card_sample.dart';
import '../panelItems/panel_simple_table_sample.dart';
import '../panelItems/panel_slider_sample.dart';
import '../panelItems/panel_stepper_form_sample.dart';
import '../panelItems/panel_sweet_alert_sample.dart';
import '../panelItems/panel_tab_bar_navigation_sample.dart';
import '../panelItems/panel_text_editor_sample.dart';
import '../panelItems/panel_text_sample.dart';
import '../panelItems/panel_toast_sample.dart';
import '../panelItems/panel_tooltip_sample.dart';
import '../panelItems/panel_tree_list_sample.dart';
import '../panelItems/panel_tutorial_sample.dart';
import '../panelItems/panel_validate_form_sample.dart';
import '../panelItems/panel_waiting_indicator_sample.dart';
import '../panelItems/panel_zoomable_image_sample.dart';

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
        EsSvgIcon("packages/es_flutter_component/assets/svgs/GraduationCap.svg",
          size: StructureBuilder.dims!.h3IconSize,
          color: StructureBuilder.styles!.primaryLightColor,
        ),
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
            title: AppLocalizations.of(context)!.text,
            icon: Icons.circle,
            page: PanelTextSample(),
            pageRout: '/textSample'),
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
            title: AppLocalizations.of(context)!.label,
            icon: Icons.circle,
            page: PanelLabelSample(),
            pageRout: '/labelSample'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.breadcrumb,
            icon: Icons.circle,
            page: PanelBreadCrumbSample(),
            pageRout: '/breadcrumb'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.pageindicator,
            icon: Icons.circle,
            page: PanelPageIndicatorSample(),
            pageRout: '/pageindicator'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.dropdownbutton,
            icon: Icons.circle,
            page: PanelDropDownSample(),
            pageRout: '/dropdown'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.slider,
            icon: Icons.circle,
            page: PanelSliderSample(),
            pageRout: '/slider'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.colors,
            icon: Icons.circle,
            page: PanelColorsSample(),
            pageRout: '/colors'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.simpletables,
            icon: Icons.circle,
            page: PanelSimpleTableSample(),
            pageRout: '/simpletable'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.responsivetable,
            icon: Icons.circle,
            page: PanelResponsiveTableSample(),
            pageRout: '/responsivetable'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.grouplist,
            icon: Icons.circle,
            page: PanelGroupListSample(),
            pageRout: '/grouplist'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.progressBar,
            icon: Icons.circle,
            page: PanelProgressBarSample(),
            pageRout: '/progress'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.waitingindicator,
            icon: Icons.circle,
            page: PanelWaitingIndicatorSample(),
            pageRout: '/indiacator'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.tabbarnavigator,
            icon: Icons.circle,
            page: PanelTabBarNavigationSample(),
            pageRout: '/tabbar'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.avatar,
            icon: Icons.circle,
            page: PanelAvatarSample(),
            pageRout: '/avatar'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.lightbox,
            icon: Icons.circle,
            page: PanelLightBoxSample(),
            pageRout: '/Lightbox'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.zoomableimage,
            icon: Icons.circle,
            page: PanelZoomableImageSample(),
            pageRout: '/zoomableimage'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.modal,
            icon: Icons.circle,
            page: PanelModalSample(),
            pageRout: '/modal'),

        buttonsInfo(
            title:"Primary card",
            icon: Icons.circle,
            page: PanelPrimaryCardSample(),
            pageRout: '/primarycard'),
        buttonsInfo(
            title:"Scrollable card",
            icon: Icons.circle,
            page: PanelScrollableCardSample(),
            pageRout: '/scrollableard'),
        buttonsInfo(
            title:"Image card",
            icon: Icons.circle,
            page: PanelImageCardSample(),
            pageRout: '/imagecard'),

       /* buttonsInfo(
            title: "cropable image",
            icon: Icons.circle,
            page: PanelCropableImageSample(),
            pageRout: '/cropableimage'),*/
      ],
      [
        "Special components",
        EsSvgIcon("packages/es_flutter_component/assets/svgs/GraduationCap.svg",
          size: StructureBuilder.dims!.h3IconSize,
          color: StructureBuilder.styles!.primaryLightColor,
        ),
        buttonsInfo(
            title:"toast",
            icon: Icons.circle,
            page: PanelToastSample(),
            pageRout: '/toast'),
        buttonsInfo(
            title:"tutorial",
            icon: Icons.circle,
            page: PanelTutorialSample(),
            pageRout: '/toast'),
        buttonsInfo(
            title:AppLocalizations.of(context)!.tooltip,
            icon: Icons.circle,
            page: PanelTooltipSample(),
            pageRout: '/tooltip'),
        buttonsInfo(
            title:AppLocalizations.of(context)!.sweetalert,
            icon: Icons.circle,
            page: PanelSweetAlertSample(),
            pageRout: '/sweetalert'),
        buttonsInfo(
            title:"Tree list",
            icon: Icons.circle,
            page: PanelTreeListSample(),
            pageRout: '/treelist'),


      ],
      [
        "Forms",
        EsSvgIcon("packages/es_flutter_component/assets/svgs/GraduationCap.svg",
          size: StructureBuilder.dims!.h3IconSize,
          color: StructureBuilder.styles!.primaryLightColor,
        ),
        buttonsInfo(
            title:"Primary form",
            icon: Icons.circle,
            page: PanelPrimaryFormSample(),
            pageRout: '/form'),
        buttonsInfo(
            title:"Custom form",
            icon: Icons.circle,
            page: PanelCustomFormSample(),
            pageRout: '/form'),
        buttonsInfo(
            title:"Advanced form",
            icon: Icons.circle,
            page: PanelAdvancedFormSample(),
            pageRout: '/form'),
        buttonsInfo(
            title:"Validate form",
            icon: Icons.circle,
            page: PanelValidateFormSample(),
            pageRout: '/form'),
        buttonsInfo(
            title:"Stepper form",
            icon: Icons.circle,
            page: PanelStepperFormSample(),
            pageRout: '/form'),
        buttonsInfo(
            title:"Text editor",
            icon: Icons.circle,
            page: PanelTextEditorSample(),
            pageRout: '/form'),
        buttonsInfo(
            title:"Icons",
            icon: Icons.circle,
            page: PanelIconsSample(),
            pageRout: '/form'),



      ],

    ];
    List _acardionList = [];
    for (int i = 0; i < _buttonNames.length; i++) {
      _acardionList.add(_buttonNames[i].length != 1 ? 1 : 0);
    }
    Widget drawerItems(item, index, currentIndex, bool condition) {
      return Container(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(
                StructureBuilder.dims!.h1Padding,
              ),
              child: Icon(
                item.icon,
                size: 5,
                color: condition
                    ? StructureBuilder.styles!.primaryLightColor
                    : StructureBuilder.styles!.t3Color,
              ),
            ),
            EsOrdinaryText(
              item.title,
              color: condition
                  ? StructureBuilder.styles!.primaryLightColor
                  : StructureBuilder.styles!.t3Color,
            ),
          ],
        ),
        decoration: BoxDecoration(
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
            padding: EdgeInsets.symmetric(
                horizontal: StructureBuilder.dims!.h0Padding),
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

                            child: drawerItems(_buttonNames[index][0], index,
                                _currentIndex, (index == _currentIndex)),
                            onTap: () {
                              setState(() {
                                _currentIndex = index;

                                CenterScreen.globalKey.currentState
                                    ?.changePage(_buttonNames[index][0].page);
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
                              EsHSpacer(
                                big: true,
                              ),
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
                                            horizontal: StructureBuilder
                                                .dims!.h2Padding,
                                            vertical: StructureBuilder
                                                .dims!.h1Padding,
                                          ),
                                          //deside if the item is selected or not
                                          padding: (index2 == _currentIndex2 &&
                                                  _acardionList[
                                                          _currentIndex] !=
                                                      0)
                                              ? EdgeInsets.symmetric(
                                                  vertical: StructureBuilder
                                                      .dims!.h2Padding)
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
      borderRadius:
          BorderRadius.circular(StructureBuilder.dims!.h0BorderRadius),
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
