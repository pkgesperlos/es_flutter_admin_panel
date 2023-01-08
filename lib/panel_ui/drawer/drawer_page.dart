import 'package:es_flutter_admin_panel/panel_items/panel_pages/panel_bill_sample.dart';
import 'package:es_flutter_component/components/es_accordion/es_expansion_tile.dart';
import 'package:es_flutter_component/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import '../../panel_items/panel_advanced_components/panel_tutorial_sample.dart';
import '../../panel_items/panel_authenticate/es_lock_screen.dart';
import '../../panel_items/panel_dashboard/panel_dashboard_sample.dart';
import '../../panel_items/panel_forms/panel_html_text_editor_sample.dart';
import '../../panel_items/panel_pages/panel_errors/es_404_error.dart';
import '../../panel_items/panel_pages/panel_errors/es_other_404.dart';
import '../../panel_items/panel_pages/panel_errors/es_repairs.dart';
import '../../panel_items/panel_pages/panel_price_card_sample.dart';
import '../../panel_items/panel_pages/panel_profile_sample.dart';
import '../../panel_items/panel_pages/panel_search_result_sample.dart';
import '../../panel_items/panel_pages/panel_timeline_sample.dart';
import '../../panel_items/panel_components/panel_accordion_sample.dart';
import 'package:es_flutter_admin_panel/panel_ui/center_sceen/center_screen.dart';
import 'package:es_flutter_admin_panel/panel_ui/structure_images/responsive_layout.dart';
import '../../panel_items/panel_pages/panel_empty_screen_sample.dart';
import '../../panel_items/panel_authenticate/es_login.dart';
import '../../panel_items/panel_authenticate/es_recover_password.dart';
import '../../panel_items/panel_authenticate/es_signin.dart';
import '../../panel_items/panel_icons_sample.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../panel_items/panel_forms/panel_advanced_form_sample.dart';
import '../../panel_items/panel_components/panel_alert_sample.dart';
import '../../panel_items/panel_components/panel_avatar_sample.dart';
import '../../panel_items/panel_components/panel_bread_crumb_sample.dart';
import '../../panel_items/panel_components/panel_button_sample.dart';
import '../../panel_items/panel_chart_sample.dart';
import '../../panel_items/panel_components/panel_color_sample.dart';
import '../../panel_items/panel_forms/panel_custom_form_sample.dart';
import '../../panel_items/panel_components/panel_dropdown_sample.dart';
import '../../panel_items/panel_components/panel_group_button_sample.dart';
import '../../panel_items/panel_components/panel_group_list_sample.dart';
import '../../panel_items/panel_components/panel_cards/panel_image_card_sample.dart';
import '../../panel_items/panel_components/panel_label_sample.dart';
import '../../panel_items/panel_components/panel_light_box_sample.dart';
import '../../panel_items/panel_pages/panel_map_sample.dart';
import '../../panel_items/panel_components/panel_modal_sample.dart';
import '../../panel_items/panel_components/panel_navigation_bar_sample.dart';
import '../../panel_items/panel_components/panel_page_indicator_sample.dart';
import '../../panel_items/panel_components/panel_cards/panel_primary_card_sample.dart';
import '../../panel_items/panel_forms/panel_primary_form_sample.dart';
import '../../panel_items/panel_components/panel_progress_bar_sample.dart';
import '../../panel_items/panel_components/panel_table/panel_responsive_table_sample.dart';
import '../../panel_items/panel_components/panel_cards/panel_scrollable_card_sample.dart';
import '../../panel_items/panel_components/panel_table/panel_simple_table_sample.dart';
import '../../panel_items/panel_components/panel_slider_sample.dart';
import '../../panel_items/panel_forms/panel_stepper_form_sample.dart';
import '../../panel_items/panel_advanced_components/panel_sweet_alert_sample.dart';
import '../../panel_items/panel_components/panel_tab_bar_navigation_sample.dart';
import '../../panel_items/panel_forms/panel_text_editor_sample.dart';
import '../../panel_items/panel_components/panel_text_sample.dart';
import '../../panel_items/panel_advanced_components/panel_toast_sample.dart';
import '../../panel_items/panel_advanced_components/panel_tooltip_sample.dart';
import '../../panel_items/panel_advanced_components/panel_tree_list_sample.dart';
import '../../panel_items/panel_forms/panel_validate_form_sample.dart';
import '../../panel_items/panel_components/panel_waiting_indicator_sample.dart';
import '../../panel_items/panel_components/panel_zoomable_image_sample.dart';

class DrawerPage extends StatefulWidget {

   DrawerPage({Key? key,
   }) : super(key: key);



  @override
   DrawerPageState createState() => DrawerPageState();
}

class DrawerPageState extends State<DrawerPage> {

  static int _currentIndex = 0;
  static int _currentExpandedIndex = 1000;
  int num=63;
  List<int> _indexList = [];
  List<bool> _isSelectedList = [];
  List<void Function()> _onSelectedList = [];

  int _expandedIndex(index){
    if(index>=11 && index<=36){
      return 1;
    }
    if(index>=37 && index<=41){
      return 2;
    }
    if(index>42 && index<=47){
      return 3;
    }
    if(index>=49 && index<=52){
      return 4;
    }
    if(index>=53 && index<=62){
      return 5;
    }
    else return 0;

  }

  //////////////define isExpanded flag for subMenus:
  bool _cardExpandedState(index){
    if(index>=24 && index<=26){
      return true;
    }

    else return false;

  }
  bool _tableExpandedState(index){
    if(index>=13 && index<=14){
      return true;
    }

    else return false;

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _indexList = List.generate(num, (index) => index);
    _isSelectedList = List.generate(num, (index) => false);
    _isSelectedList[_currentIndex] = true;
    _onSelectedList = List.generate(
        num,
        (index) => () {
              setState(() {
                _currentIndex = index;
                _currentExpandedIndex=_expandedIndex(_currentIndex);
                _isSelectedList = List.generate(num, (index) => false);
                _isSelectedList[_currentIndex] = true;

              });
            });
  }


  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: StructureBuilder.styles!.decorationColor().background,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: StructureBuilder.dims!.h1Padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title of drawer
                Row(
                  children: [
                    ResponsiveLayot.isComputer(context)
                        ? Container()
                        : InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.close,
                              color: Colors.black54,
                            )),
                    EsTitle(
                      AppLocalizations.of(context)!.adminMenu,
                      color: StructureBuilder.styles!.primaryDarkColor,
                    ),
                  ],
                ),
                EsVSpacer(
                  big: true,
                ),
                //creating list items of drawer

                firstLevelNavigate(
                  tilePadding: EdgeInsets.symmetric(
                    vertical: StructureBuilder.dims!.h1Padding * 1.7,
                    horizontal: StructureBuilder.dims!.h1Padding * 1,
                  ),
                  index: _indexList[10],
                  onSelect: _onSelectedList[10],
                  isSelected: _isSelectedList[10],
                  iconPath:
                  // "packages/es_flutter_component/"
                      "assets/svgs/homehashtag.svg",
                  title: AppLocalizations.of(context)!.dashboard,
                  routeName: PanelDashboardSample.routeName,
                ),


                firstLevelNavigate(
                  tilePadding: EdgeInsets.symmetric(
                    vertical: StructureBuilder.dims!.h1Padding * 1.7,
                    horizontal: StructureBuilder.dims!.h1Padding * 1,
                  ),
                  index: _indexList[11],
                  onSelect: _onSelectedList[11],
                  isSelected: _isSelectedList[11],
                  iconPath:
                      "packages/es_flutter_component/assets/svgs/chart.svg",
                  title: AppLocalizations.of(context)!.charts,
                  routeName: PanelChartSample.routeName,
                ),

                firstLevelExpandedComplex(
                  initialyExpanded: _currentExpandedIndex==1,
                  expansionTitle: AppLocalizations.of(context)!.components,
                  iconPath:
                      "packages/es_flutter_component/assets/svgs/GraduationCap.svg",
                  expansionWidgetList: [
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.accordion,
                        routeName: PanelaccordionSample.routeName,
                        index: _indexList[12],
                        onSelect: _onSelectedList[12],
                        isSelected: _isSelectedList[12]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.alert,
                        routeName: PanelAlertSample.routeName,
                        index: _indexList[3],
                        onSelect: _onSelectedList[3],
                        isSelected: _isSelectedList[3]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.text,
                        routeName: PanelTextSample.routeName,
                        index: _indexList[14],
                        onSelect: _onSelectedList[14],
                        isSelected: _isSelectedList[14]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.button,
                        routeName: PanelButtonSample.routeName,
                        index: _indexList[15],
                        onSelect: _onSelectedList[15],
                        isSelected: _isSelectedList[15]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.groupbutton,
                        routeName: PanelGroupButtonSample.routeName,
                        index: _indexList[16],
                        onSelect: _onSelectedList[16],
                        isSelected: _isSelectedList[16]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.label,
                        routeName: PanelLabelSample.routeName,
                        index: _indexList[17],
                        onSelect: _onSelectedList[17],
                        isSelected: _isSelectedList[17]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.breadcrumb,
                        routeName: PanelBreadCrumbSample.routeName,
                        index: _indexList[18],
                        onSelect: _onSelectedList[18],
                        isSelected: _isSelectedList[18]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.pageindicator,
                        routeName: PanelPageIndicatorSample.routeName,
                        index: _indexList[19],
                        onSelect: _onSelectedList[19],
                        isSelected: _isSelectedList[19]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.dropdownbutton,
                        routeName: PanelDropDownSample.routeName,
                        index: _indexList[20],
                        onSelect: _onSelectedList[20],
                        isSelected: _isSelectedList[20]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.slider,
                        routeName: PanelSliderSample.routeName,
                        index: _indexList[21],
                        onSelect: _onSelectedList[21],
                        isSelected: _isSelectedList[21]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.color,
                        routeName: PanelColorsSample.routeName,
                        index: _indexList[22],
                        onSelect: _onSelectedList[22],
                        isSelected: _isSelectedList[22]),
                    nextLevelExpandedComplex(
                      initialyExpanded: _tableExpandedState(_currentIndex),
                      expansionTitle: AppLocalizations.of(context)!.tables,
                      expansionWidgetList: [
                        nextLevelNavigate(
                            title: AppLocalizations.of(context)!.simpletables,
                            routeName: PanelSimpleTableSample.routeName,
                            index: _indexList[23],
                            onSelect: _onSelectedList[23],
                            isSelected: _isSelectedList[23]),
                        nextLevelNavigate(
                            title:
                                AppLocalizations.of(context)!.responsivetable,
                            routeName: PanelResponsiveTableSample.routeName,
                            index: _indexList[24],
                            onSelect: _onSelectedList[24],
                            isSelected: _isSelectedList[24]),
                      ],
                    ),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.grouplist,
                        routeName: PanelGroupListSample.routeName,
                        index: _indexList[25],
                        onSelect: _onSelectedList[25],
                        isSelected: _isSelectedList[25]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.progressBar,
                        routeName: PanelProgressBarSample.routeName,
                        index: _indexList[26],
                        onSelect: _onSelectedList[26],
                        isSelected: _isSelectedList[26]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.waitingindicator,
                        routeName: PanelWaitingIndicatorSample.routeName,
                        index: _indexList[27],
                        onSelect: _onSelectedList[27],
                        isSelected: _isSelectedList[27]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.tabbarnavigator,
                        routeName: PanelTabBarNavigationSample.routeName,
                        index: _indexList[28],
                        onSelect: _onSelectedList[28],
                        isSelected: _isSelectedList[28]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.navigationbar,
                        routeName: PanelNavigationBarSample.routeName,
                        index: _indexList[29],
                        onSelect: _onSelectedList[29],
                        isSelected: _isSelectedList[29]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.avatar,
                        routeName: PanelAvatarSample.routeName,
                        index: _indexList[30],
                        onSelect: _onSelectedList[30],
                        isSelected: _isSelectedList[30]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.lightbox,
                        routeName: PanelLightBoxSample.routeName,
                        index: _indexList[31],
                        onSelect: _onSelectedList[31],
                        isSelected: _isSelectedList[31]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.zoomableimage,
                        routeName: PanelZoomableImageSample.routeName,
                        index: _indexList[32],
                        onSelect: _onSelectedList[32],
                        isSelected: _isSelectedList[32]),
                    nextLevelNavigate(
                        title: AppLocalizations.of(context)!.modal,
                        routeName: PanelModalSample.routeName,
                        index: _indexList[33],
                        onSelect: _onSelectedList[33],
                        isSelected: _isSelectedList[33]),
                    nextLevelExpandedComplex(
                      initialyExpanded: _cardExpandedState(_currentIndex),
                      expansionTitle: AppLocalizations.of(context)!.card,
                      expansionWidgetList: [
                        nextLevelNavigate(
                            title: AppLocalizations.of(context)!.primarycard,
                            routeName: PanelPrimaryCardSample.routeName,
                            index: _indexList[34],
                            onSelect: _onSelectedList[34],
                            isSelected: _isSelectedList[34]),
                        nextLevelNavigate(
                            title: AppLocalizations.of(context)!.scrollablecard,
                            routeName: PanelScrollableCardSample.routeName,
                            index: _indexList[35],
                            onSelect: _onSelectedList[35],
                            isSelected: _isSelectedList[35]),
                        nextLevelNavigate(
                            title: AppLocalizations.of(context)!.imagecard,
                            routeName: PanelImageCardSample.routeName,
                            index: _indexList[36],
                            onSelect: _onSelectedList[36],
                            isSelected: _isSelectedList[36]),
                      ],
                    ),
                  ],
                ),
                firstLevelExpandedComplex(
                    initialyExpanded: _currentExpandedIndex==2,
                    expansionTitle:
                        AppLocalizations.of(context)!.advancedcomponents,
                    iconPath:
                        "packages/es_flutter_component/assets/svgs/advanced.svg",
                    expansionWidgetList: [
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.toastmessage,
                          routeName: PanelToastSample.routeName,
                          index: _indexList[37],
                          onSelect: _onSelectedList[37],
                          isSelected: _isSelectedList[37]),
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.tutorial,
                          routeName: PanelTutorialSample.routeName,
                          index: _indexList[38],
                          onSelect: _onSelectedList[38],
                          isSelected: _isSelectedList[38]),
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.tooltip,
                          routeName: PanelTooltipSample.routeName,
                          index: _indexList[39],
                          onSelect: _onSelectedList[39],
                          isSelected: _isSelectedList[39]),
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.sweetalert,
                          routeName: PanelSweetAlertSample.routeName,
                          index: _indexList[40],
                          onSelect: _onSelectedList[40],
                          isSelected: _isSelectedList[40]),
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.treelist,
                          routeName: PanelTreeListSample.routeName,
                          index: _indexList[41],
                          onSelect: _onSelectedList[41],
                          isSelected: _isSelectedList[41]),
                    ]),

                firstLevelExpandedComplex(
                    initialyExpanded: _currentExpandedIndex==3,
                    expansionTitle: AppLocalizations.of(context)!.form,
                    iconPath:
                        "packages/es_flutter_component/assets/svgs/form.svg",
                    expansionWidgetList: [
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.primaryform,
                          routeName: PanelPrimaryFormSample.routeName,
                          onSelect: _onSelectedList[42],
                          index: _indexList[42],
                          isSelected: _isSelectedList[42]),
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.customform,
                          routeName: PanelCustomFormSample.routeName,
                          onSelect: _onSelectedList[43],
                          index: _indexList[43],
                          isSelected: _isSelectedList[43]),
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.advancedform,
                          routeName: PanelAdvancedFormSample.routeName,
                          onSelect: _onSelectedList[44],
                          index: _indexList[44],
                          isSelected: _isSelectedList[44]),
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.validateform,
                          routeName: PanelValidateFormSample.routeName,
                          onSelect: _onSelectedList[45],
                          index: _indexList[45],
                          isSelected: _isSelectedList[45]),
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.stepperform,
                          routeName: PanelStepperFormSample.routeName,
                          onSelect: _onSelectedList[46],
                          index: _indexList[46],
                          isSelected: _isSelectedList[46]),
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.texteditor,
                          routeName: PanelHtmlTextEditorSample.routeName,
                          onSelect: _onSelectedList[47],
                          index: _indexList[47],
                          isSelected: _isSelectedList[47]),

                    ]),
                firstLevelNavigate(
                  tilePadding: EdgeInsets.symmetric(
                    vertical: StructureBuilder.dims!.h1Padding * 1.7,
                    horizontal: StructureBuilder.dims!.h1Padding,
                  ),
                  index: _indexList[48],
                  onSelect: _onSelectedList[48],
                  isSelected: _isSelectedList[48],
                  iconPath:
                      "packages/es_flutter_component/assets/svgs/emojihappy.svg",
                  title: AppLocalizations.of(context)!.icons,
                  routeName: PanelIconsSample.routeName,
                ),
                firstLevelExpandedComplex(
                    initialyExpanded: _currentExpandedIndex==4,
                    expansionTitle:
                        AppLocalizations.of(context)!.authentication,
                    iconPath:
                        "packages/es_flutter_component/assets/svgs/profilecircle.svg",
                    expansionWidgetList: [
                      nextLevelNavigatenotReplace(
                          title: AppLocalizations.of(context)!.signin,
                          routeName: EsSignin.routeName,
                          onSelect: _onSelectedList[_currentIndex],
                          index: _indexList[_currentIndex],
                          isSelected: _isSelectedList[49]),
                      nextLevelNavigatenotReplace(
                          title: AppLocalizations.of(context)!.login,
                          routeName: EsLogin.routeName,
                          onSelect: _onSelectedList[_currentIndex],
                          index: _indexList[_currentIndex],
                          isSelected: _isSelectedList[50]),
                      nextLevelNavigatenotReplace(
                          title: AppLocalizations.of(context)!.recoverpassword,
                          routeName: EsRecoverPassword.routeName,
                          onSelect: _onSelectedList[_currentIndex],
                          index: _indexList[_currentIndex],
                          isSelected: _isSelectedList[51]),
                      nextLevelNavigatenotReplace(
                          title: AppLocalizations.of(context)!.lockscreen,
                          routeName: EsLockScreen.routeName,
                          onSelect: _onSelectedList[_currentIndex],
                          index: _indexList[_currentIndex],
                          isSelected: _isSelectedList[52]),
                    ]),

                firstLevelExpandedComplex(
                    initialyExpanded: _currentExpandedIndex==5,
                    expansionTitle: AppLocalizations.of(context)!.pages,
                    iconPath:
                        "packages/es_flutter_component/assets/svgs/pages.svg",
                    expansionWidgetList: [
                      nextLevelNavigate(
                          title: "Profile",
                          routeName: PanelProfileSample.routeName,
                          onSelect: _onSelectedList[53],
                          index: _indexList[53],
                          isSelected: _isSelectedList[53]),
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.bill,
                          routeName: PanelBillSample.routeName,
                          onSelect: _onSelectedList[54],
                          index: _indexList[54],
                          isSelected: _isSelectedList[54]),
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.timeline,
                          routeName: PanelTimelineSample.routeName,
                          onSelect: _onSelectedList[55],
                          index: _indexList[55],
                          isSelected: _isSelectedList[55]),
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.pricecard,
                          routeName: PanelPriceCardSample.routeName,
                          onSelect: _onSelectedList[56],
                          index: _indexList[56],
                          isSelected: _isSelectedList[56]),
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.searchresult,
                          routeName: PanelSearchResultSample.routeName,
                          onSelect: _onSelectedList[57],
                          index: _indexList[57],
                          isSelected: _isSelectedList[57]),
                      nextLevelNavigate(
                          title: "Map",
                          routeName: PanelMapSample.routeName,
                          onSelect: _onSelectedList[58],
                          index: _indexList[58],
                          isSelected: _isSelectedList[58]),
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.emptyscreen,
                          routeName: PanelEmptyScreenSample.routeName,
                          onSelect: _onSelectedList[59],
                          index: _indexList[59],
                          isSelected: _isSelectedList[59]),
                      nextLevelExpandedComplex(
                          expansionTitle: AppLocalizations.of(context)!.errors,
                          expansionWidgetList: [
                            nextLevelNavigatenotReplace(
                                title: "404",
                                routeName: Es404Error.routeName,
                                onSelect: _onSelectedList[_currentIndex],
                                index: _indexList[_currentIndex],
                                isSelected: _isSelectedList[60]),
                            nextLevelNavigatenotReplace(
                                title: "404(2)",
                                routeName: EsOther404.routeName,
                                onSelect: _onSelectedList[_currentIndex],
                                index: _indexList[_currentIndex],
                                isSelected: _isSelectedList[61]),
                            nextLevelNavigatenotReplace(
                                title: AppLocalizations.of(context)!.repairs,
                                routeName: EsRepairs.routeName,
                                onSelect: _onSelectedList[_currentIndex],
                                index: _indexList[_currentIndex],
                                isSelected: _isSelectedList[62]),
                          ]),
                    ]),

                firstLevelExpandedComplex(

                    expansionTitle: AppLocalizations.of(context)!.menulevel,
                    iconPath:
                        "packages/es_flutter_component/assets/svgs/layer.svg",
                    expansionWidgetList: [
                      nextLevelExpandedComplex(
                        expansionTitle: AppLocalizations.of(context)!.menulevel,
                        expansionWidgetList: [
                          nextLevelExpandedComplex(
                            expansionTitle:
                                AppLocalizations.of(context)!.menulevel,
                            expansionWidgetList: [
                              nextLevelExpandedComplex(
                                expansionTitle:
                                    AppLocalizations.of(context)!.menulevel,
                                expansionWidgetList: [
                                  nextLevelExpandedComplex(
                                    expansionTitle:
                                        AppLocalizations.of(context)!.menulevel,
                                    expansionWidgetList: [
                                      nextLevelExpandedComplex(
                                        expansionTitle:
                                            AppLocalizations.of(context)!
                                                .menulevel,
                                        expansionWidgetList: [
                                          nextLevelExpandedComplex(
                                            expansionTitle:
                                                AppLocalizations.of(context)!
                                                    .menulevel,
                                            expansionWidgetList: [],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget firstLevelNavigate(
      {required String iconPath,
      required String title,
      required int index,
      required void Function() onSelect,
      EdgeInsetsGeometry? tilePadding,
      String? routeName,
      bool? isSelected}) {
    return InkWell(
      hoverColor: StructureBuilder.styles!.primaryLightColor.withOpacity(.2),
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h2Padding,
          // horizontal: StructureBuilder.dims!.h1Padding,
        ),
        decoration: isSelected ?? false
            ? selectedBoxDecoration()
            : BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h1BorderRadius))),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  "assets/images/back2.png",
                  fit: BoxFit.cover,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h1BorderRadius))),
              ),
            ),
            Container(
              padding: tilePadding ?? EdgeInsets.all(0),
              child: Row(
                children: [
                  EsSvgIcon(
                    iconPath,
                    size: StructureBuilder.dims!.h3IconSize,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  EsHSpacer(
                    big: true,
                  ),
                  EsOrdinaryText(
                    title,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        onSelect();
        routeName == null
            ? null
             :Navigator.pushReplacementNamed(context, routeName);
      },
    );
  }


  Widget nextLevelNavigate(
      {required String title,
      required int index,
      required void Function() onSelect,
      String? routeName,
      bool? isSelected}) {
    return InkWell(
      hoverColor: StructureBuilder.styles!.primaryLightColor.withOpacity(.2),
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h2Padding,
          // horizontal: StructureBuilder.dims!.h1Padding,
        ),
        decoration: isSelected ?? false
            ? selectedBoxDecoration()
            : BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h1BorderRadius))),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: StructureBuilder.dims!.h2Padding,
            horizontal: StructureBuilder.dims!.h2Padding,
          ),
          child: Row(
            children: [
              Icon(
                Icons.circle,
                size: StructureBuilder.dims!.h3IconSize / 3,
                color: isSelected ?? false
                    ? StructureBuilder.styles!.primaryLightColor
                    : StructureBuilder.styles!.t3Color,
              ),
              EsHSpacer(
                big: true,
              ),
              EsOrdinaryText(
                title,
                color: isSelected ?? false
                    ? StructureBuilder.styles!.primaryLightColor
                    : StructureBuilder.styles!.t3Color,
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        onSelect();
        routeName == null
            ? null
            :Navigator.pushReplacementNamed(context, routeName);
            // : Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => pageWidget),
            //   );
      },
    );
  }

  Widget nextLevelNavigatenotReplace(
      {required String title,
      required int index,
      required void Function() onSelect,
      String? routeName,
      bool? isSelected}) {
    return InkWell(
      hoverColor: StructureBuilder.styles!.primaryLightColor.withOpacity(.2),
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h2Padding,
          // horizontal: StructureBuilder.dims!.h1Padding,
        ),
        decoration: isSelected ?? false
            ? selectedBoxDecoration()
            : BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h1BorderRadius))),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: StructureBuilder.dims!.h2Padding,
            horizontal: StructureBuilder.dims!.h2Padding,
          ),
          child: Row(
            children: [
              Icon(
                Icons.circle,
                size: StructureBuilder.dims!.h3IconSize / 3,
                color: isSelected ?? false
                    ? StructureBuilder.styles!.primaryLightColor
                    : StructureBuilder.styles!.t3Color,
              ),
              EsHSpacer(
                big: true,
              ),
              EsOrdinaryText(
                title,
                color: isSelected ?? false
                    ? StructureBuilder.styles!.primaryLightColor
                    : StructureBuilder.styles!.t3Color,
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        onSelect();
        routeName == null
            ? null
            :Navigator.pushNamed(context, routeName);
            // : Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => pageWidget),
            //   );
      },
    );
  }

  Widget firstLevelExpandedComplex({
    required String iconPath,
    EdgeInsetsGeometry? tilePadding,
    bool? initialyExpanded,
    required String expansionTitle,
    required List<Widget> expansionWidgetList,
  }) {
    return InkWell(
      hoverColor: StructureBuilder.styles!.primaryLightColor.withOpacity(.2),
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h2Padding,
          // horizontal: StructureBuilder.dims!.h1Padding,
        ),
        child: EsExpansionTile(
          initialyExpanded: initialyExpanded,
          margin: EdgeInsets.all(0),

          tilePadding: tilePadding ??
              EdgeInsets.symmetric(
                  vertical: 0, horizontal: StructureBuilder.dims!.h1Padding),
          backGroundImagePath: "assets/images/back2.png",
          iconColor: StructureBuilder.styles!.primaryLightColor,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular(StructureBuilder.dims!.h1BorderRadius))),
          title: firstLevelNavigate(
            index: 0,
            onSelect: () {},
            iconPath: iconPath,
            title: expansionTitle,
          ),
          children: [
            ...List.generate(expansionWidgetList.length,
                (index) => expansionWidgetList[index])
          ],
        ),
      ),
    );
  }

  Widget nextLevelExpandedComplex({
    required String expansionTitle,
    required List<Widget> expansionWidgetList,
    bool? initialyExpanded,
    EdgeInsetsGeometry? childrenPadding,
  }) {
    return InkWell(
      hoverColor: StructureBuilder.styles!.primaryLightColor.withOpacity(.2),
      child: Container(
        child: EsExpansionTile(
          initialyExpanded: initialyExpanded,
          tilePadding: EdgeInsets.all(0),
          childrenPadding: childrenPadding ?? EdgeInsets.all(0),
          margin: EdgeInsets.all(0),
          iconColor: StructureBuilder.styles!.primaryLightColor,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(
                  Radius.circular(StructureBuilder.dims!.h1BorderRadius))),
          title: nextLevelNavigate(
            index: 0,
            onSelect: () {},
            title: expansionTitle,
          ),
          children: [
            ...List.generate(expansionWidgetList.length,
                (index) => expansionWidgetList[index])
          ],
        ),
      ),
    );
  }

  BoxDecoration selectedBoxDecoration() {
    return BoxDecoration(
      color: StructureBuilder.styles!.primaryDarkColor,
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
      //   StructureBuilder.styles!.primaryDarkColor
      //       .withOpacity(0.1),
      //   StructureBuilder.styles!.primaryDarkColor
      //       .withOpacity(0.9),
      // ])
    );
  }
}