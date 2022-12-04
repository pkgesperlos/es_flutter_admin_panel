
import 'package:es_flutter_admin_panel/panelItems/es_pages/panel_bill_sample.dart';
import 'package:es_flutter_component/components/es_accardion/es_expansion_tile.dart';
import 'package:es_flutter_component/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import '../../panelItems/es_pages/es_error/es_404_error.dart';
import '../../panelItems/es_pages/es_error/es_repairs.dart';
import '../../panelItems/es_pages/panel_price_card_sample.dart';
import '../../panelItems/es_pages/panel_profile_sample.dart';
import '../../panelItems/es_pages/panel_search_result_sample.dart';
import '../../panelItems/es_pages/panel_timeline_sample.dart';
import '../../panelItems/panel_accardion_sample.dart';
import 'package:es_flutter_admin_panel/panel_ui/center_sceen/center_screen.dart';
import 'package:es_flutter_admin_panel/panel_ui/images/responsive_layout.dart';
import '../../panelItems/es_pages/panel_empty_screen_sample.dart';
import '../../panelItems/es_register/es_login.dart';
import '../../panelItems/es_register/es_recover_password.dart';
import '../../panelItems/es_register/es_signin.dart';
import '../../panelItems/panel_icons_sample.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import '../../panelItems/panel_advanced_form_sample.dart';
import '../../panelItems/panel_alert_sample.dart';
import '../../panelItems/panel_avatar_sample.dart';
import '../../panelItems/panel_bread_crumb_sample.dart';
import '../../panelItems/panel_button_sample.dart';
import '../../panelItems/panel_chart_sample.dart';
import '../../panelItems/panel_color_sample.dart';
import '../../panelItems/panel_custom_form_sample.dart';
import '../../panelItems/panel_dropdown_sample.dart';
import '../../panelItems/panel_group_button_sample.dart';
import '../../panelItems/panel_group_list_sample.dart';
import '../../panelItems/panel_image_card_sample.dart';
import '../../panelItems/panel_label_sample.dart';
import '../../panelItems/panel_light_box_sample.dart';
import '../../panelItems/panel_modal_sample.dart';
import '../../panelItems/panel_page_indicator_sample.dart';
import '../../panelItems/panel_primary_card_sample.dart';
import '../../panelItems/panel_primary_form_sample.dart';
import '../../panelItems/panel_progress_bar_sample.dart';
import '../../panelItems/panel_responsive_table_sample.dart';
import '../../panelItems/panel_scrollable_card_sample.dart';
import '../../panelItems/panel_simple_table_sample.dart';
import '../../panelItems/panel_slider_sample.dart';
import '../../panelItems/panel_stepper_form_sample.dart';
import '../../panelItems/panel_sweet_alert_sample.dart';
import '../../panelItems/panel_tab_bar_navigation_sample.dart';
import '../../panelItems/panel_text_editor_sample.dart';
import '../../panelItems/panel_text_sample.dart';
import '../../panelItems/panel_toast_sample.dart';
import '../../panelItems/panel_tooltip_sample.dart';
import '../../panelItems/panel_tree_list_sample.dart';
import '../../panelItems/panel_tutorial_sample.dart';
import '../../panelItems/panel_validate_form_sample.dart';
import '../../panelItems/panel_waiting_indicator_sample.dart';
import '../../panelItems/panel_zoomable_image_sample.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

int _currentIndex = 0;

class _DrawerPageState extends State<DrawerPage> {
  int num = 100;
  List<int> _indexList = [];
  List<bool> _isSelectedList = [];
  List<void Function()> _onSelectedList = [];

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
          color: StructureBuilder.styles!.primaryDarkColor,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: StructureBuilder.dims!.h0Padding),
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
                      color: StructureBuilder.styles!.primaryColor,
                    ),
                  ],
                ),
                EsVSpacer(
                  big: true,
                ),
                //creating list items of drawer
                firstLevel(
                  tilePadding: EdgeInsets.symmetric(
                    vertical: StructureBuilder.dims!.h1Padding * 1.7,
                    horizontal: StructureBuilder.dims!.h1Padding * 1,
                  ),
                  index: _indexList[0],
                  onSelect: _onSelectedList[0],
                  isSelected: _isSelectedList[0],
                  iconPath:
                      "packages/es_flutter_component/assets/svgs/chart.svg",
                  title: AppLocalizations.of(context)!.charts,
                  pageWidget: PanelChartSample(),
                ),

                firstLevelExpandedComplex(
                  expansionTitle: AppLocalizations.of(context)!.components,
                  iconPath:
                      "packages/es_flutter_component/assets/svgs/GraduationCap.svg",
                  expansionWidgetList: [
                    nextLevel(
                        title: AppLocalizations.of(context)!.accordion,
                        pageWidget: PanelAccardionSample(),
                        index: _indexList[1],
                        onSelect: _onSelectedList[1],
                        isSelected: _isSelectedList[1]),
                    nextLevel(
                        title: AppLocalizations.of(context)!.alert,
                        pageWidget: PanelAlertSample(),
                        index: _indexList[2],
                        onSelect: _onSelectedList[2],
                        isSelected: _isSelectedList[2]),
                    nextLevel(
                        title: AppLocalizations.of(context)!.text,
                        pageWidget: PanelTextSample(),
                        index: _indexList[3],
                        onSelect: _onSelectedList[3],
                        isSelected: _isSelectedList[3]),
                    nextLevel(
                        title: AppLocalizations.of(context)!.button,
                        pageWidget: PanelButtonSample(),
                        index: _indexList[4],
                        onSelect: _onSelectedList[4],
                        isSelected: _isSelectedList[4]),
                    nextLevel(
                        title: AppLocalizations.of(context)!.alert,
                        pageWidget: PanelButtonSample(),
                        index: _indexList[5],
                        onSelect: _onSelectedList[5],
                        isSelected: _isSelectedList[5]),
                    nextLevel(
                        title: AppLocalizations.of(context)!.label,
                        pageWidget: PanelLabelSample(),
                        index: _indexList[6],
                        onSelect: _onSelectedList[6],
                        isSelected: _isSelectedList[6]),
                    nextLevel(
                        title: AppLocalizations.of(context)!.breadcrumb,
                        pageWidget: PanelBreadCrumbSample(),
                        index: _indexList[7],
                        onSelect: _onSelectedList[7],
                        isSelected: _isSelectedList[7]),
                    nextLevel(
                        title: AppLocalizations.of(context)!.pageindicator,
                        pageWidget: PanelPageIndicatorSample(),
                        index: _indexList[8],
                        onSelect: _onSelectedList[8],
                        isSelected: _isSelectedList[8]),
                    nextLevel(
                        title: AppLocalizations.of(context)!.dropdownbutton,
                        pageWidget: PanelDropDownSample(),
                        index: _indexList[9],
                        onSelect: _onSelectedList[9],
                        isSelected: _isSelectedList[9]),
                    nextLevel(
                        title: AppLocalizations.of(context)!.slider,
                        pageWidget: PanelSliderSample(),
                        index: _indexList[10],
                        onSelect: _onSelectedList[10],
                        isSelected: _isSelectedList[10]),
                    nextLevel(
                        title: AppLocalizations.of(context)!.color,
                        pageWidget: PanelColorsSample(),
                        index: _indexList[11],
                        onSelect: _onSelectedList[11],
                        isSelected: _isSelectedList[11]),
                    nextLevelExpandedComplex(
                      expansionTitle: AppLocalizations.of(context)!.tables,
                      expansionWidgetList: [
                        nextLevel(
                            title: AppLocalizations.of(context)!.simpletables,
                            pageWidget: PanelSimpleTableSample(),
                            index: _indexList[12],
                            onSelect: _onSelectedList[12],
                            isSelected: _isSelectedList[12]),
                        nextLevel(
                            title:
                                AppLocalizations.of(context)!.responsivetable,
                            pageWidget: PanelResponsiveTableSample(),
                            index: _indexList[13],
                            onSelect: _onSelectedList[13],
                            isSelected: _isSelectedList[13]),
                      ],
                    ),
                    nextLevel(
                        title: AppLocalizations.of(context)!.grouplist,
                        pageWidget: PanelGroupListSample(),
                        index: _indexList[14],
                        onSelect: _onSelectedList[14],
                        isSelected: _isSelectedList[14]),
                    nextLevel(
                        title: AppLocalizations.of(context)!.progressBar,
                        pageWidget: PanelProgressBarSample(),
                        index: _indexList[14],
                        onSelect: _onSelectedList[15],
                        isSelected: _isSelectedList[15]),
                    nextLevel(
                        title: AppLocalizations.of(context)!.waitingindicator,
                        pageWidget: PanelWaitingIndicatorSample(),
                        index: _indexList[16],
                        onSelect: _onSelectedList[16],
                        isSelected: _isSelectedList[16]),
                    nextLevel(
                        title: AppLocalizations.of(context)!.tabbarnavigator,
                        pageWidget: PanelTabBarNavigationSample(),
                        index: _indexList[17],
                        onSelect: _onSelectedList[17],
                        isSelected: _isSelectedList[17]),
                    nextLevel(
                        title: AppLocalizations.of(context)!.avatar,
                        pageWidget: PanelAvatarSample(),
                        index: _indexList[18],
                        onSelect: _onSelectedList[18],
                        isSelected: _isSelectedList[18]),
                    nextLevel(
                        title: AppLocalizations.of(context)!.lightbox,
                        pageWidget: PanelLightBoxSample(),
                        index: _indexList[19],
                        onSelect: _onSelectedList[19],
                        isSelected: _isSelectedList[19]),
                    nextLevel(
                        title: AppLocalizations.of(context)!.zoomableimage,
                        pageWidget: PanelZoomableImageSample(),
                        index: _indexList[20],
                        onSelect: _onSelectedList[20],
                        isSelected: _isSelectedList[20]),
                    nextLevel(
                        title: AppLocalizations.of(context)!.modal,
                        pageWidget: PanelModalSample(),
                        index: _indexList[21],
                        onSelect: _onSelectedList[21],
                        isSelected: _isSelectedList[21]),

                    nextLevelExpandedComplex(
                      expansionTitle: AppLocalizations.of(context)!.card,
                      expansionWidgetList: [
                        nextLevel(
                            title: AppLocalizations.of(context)!.primarycard,
                            pageWidget: PanelPrimaryCardSample(),
                            index: _indexList[23],
                            onSelect: _onSelectedList[23],
                            isSelected: _isSelectedList[23]),
                        nextLevel(
                            title: AppLocalizations.of(context)!.scrollablecard,
                            pageWidget: PanelScrollableCardSample(),
                            index: _indexList[24],
                            onSelect: _onSelectedList[24],
                            isSelected: _isSelectedList[24]),
                        nextLevel(
                            title: AppLocalizations.of(context)!.imagecard,
                            pageWidget: PanelImageCardSample(),
                            index: _indexList[25],
                            onSelect: _onSelectedList[25],
                            isSelected: _isSelectedList[25]),
                      ],
                    ),
                  ],
                ),
                firstLevelExpandedComplex(
                    expansionTitle:
                        AppLocalizations.of(context)!.advancedcomponents,
                    iconPath:
                        "packages/es_flutter_component/assets/svgs/advanced.svg",
                    expansionWidgetList: [
                      nextLevel(
                          title: AppLocalizations.of(context)!.toastmessage,
                          pageWidget: PanelToastSample(),
                          index: _indexList[26],
                          onSelect: _onSelectedList[26],
                          isSelected: _isSelectedList[26]),
                      nextLevel(
                          title: AppLocalizations.of(context)!.tutorial,
                          pageWidget: PanelTutorialSample(),
                          index: _indexList[27],
                          onSelect: _onSelectedList[27],
                          isSelected: _isSelectedList[27]),
                      nextLevel(
                          title: AppLocalizations.of(context)!.tooltip,
                          pageWidget: PanelTooltipSample(),
                          index: _indexList[28],
                          onSelect: _onSelectedList[28],
                          isSelected: _isSelectedList[28]),
                      nextLevel(
                          title: AppLocalizations.of(context)!.sweetalert,
                          pageWidget: PanelSweetAlertSample(),
                          index: _indexList[29],
                          onSelect: _onSelectedList[29],
                          isSelected: _isSelectedList[29]),
                      nextLevel(
                          title: AppLocalizations.of(context)!.treelist,
                          pageWidget: PanelTreeListSample(),
                          index: _indexList[30],
                          onSelect: _onSelectedList[30],
                          isSelected: _isSelectedList[30]),
                    ]),

                firstLevelExpandedComplex(
                    expansionTitle: AppLocalizations.of(context)!.form,
                    iconPath:
                        "packages/es_flutter_component/assets/svgs/form.svg",
                    expansionWidgetList: [
                      nextLevel(
                          title: AppLocalizations.of(context)!.primaryform,
                          pageWidget: PanelPrimaryFormSample(),
                          onSelect: _onSelectedList[31],
                          index: _indexList[31],
                          isSelected: _isSelectedList[31]),
                      nextLevel(
                          title: AppLocalizations.of(context)!.customform,
                          pageWidget: PanelCustomFormSample(),
                          onSelect: _onSelectedList[32],
                          index: _indexList[32],
                          isSelected: _isSelectedList[32]),
                      nextLevel(
                          title: AppLocalizations.of(context)!.advancedform,
                          pageWidget: PanelAdvancedFormSample(),
                          onSelect: _onSelectedList[33],
                          index: _indexList[33],
                          isSelected: _isSelectedList[33]),
                      nextLevel(
                          title: AppLocalizations.of(context)!.validateform,
                          pageWidget: PanelValidateFormSample(),
                          onSelect: _onSelectedList[34],
                          index: _indexList[34],
                          isSelected: _isSelectedList[34]),
                      nextLevel(
                          title: AppLocalizations.of(context)!.stepperform,
                          pageWidget: PanelStepperFormSample(),
                          onSelect: _onSelectedList[35],
                          index: _indexList[35],
                          isSelected: _isSelectedList[35]),
                      nextLevel(
                          title: AppLocalizations.of(context)!.texteditor,
                          pageWidget: PanelTextEditorSample(),
                          onSelect: _onSelectedList[36],
                          index: _indexList[36],
                          isSelected: _isSelectedList[36]),
                    ]),
                firstLevel(
                  tilePadding: EdgeInsets.symmetric(
                    vertical: StructureBuilder.dims!.h1Padding * 1.7,
                    horizontal: StructureBuilder.dims!.h1Padding ,
                  ),
                  index: _indexList[37],
                  onSelect: _onSelectedList[37],
                  isSelected: _isSelectedList[37],
                  iconPath:
                      "packages/es_flutter_component/assets/svgs/emojihappy.svg",
                  title: AppLocalizations.of(context)!.icons,
                  pageWidget: PanelIconsSample(),
                ),
                firstLevelExpandedComplex(
                    expansionTitle: AppLocalizations.of(context)!.authentication,
                    iconPath:
                    "packages/es_flutter_component/assets/svgs/profilecircle.svg",
                    expansionWidgetList: [
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.signin,
                          pageWidget: EsSignin(),
                          onSelect: _onSelectedList[_currentIndex],
                          index: _indexList[_currentIndex],
                          isSelected: _isSelectedList[38]),
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.login,
                          pageWidget: EsLogin(),
                          onSelect: _onSelectedList[_currentIndex],
                          index: _indexList[_currentIndex],
                          isSelected: _isSelectedList[39]),
                      nextLevelNavigate(
                          title: AppLocalizations.of(context)!.recoverpassword,
                          pageWidget: EsRecoverPassword(),
                          onSelect: _onSelectedList[_currentIndex],
                          index: _indexList[_currentIndex],
                          isSelected: _isSelectedList[40]),
                    ]),

                firstLevelExpandedComplex(
                    expansionTitle: AppLocalizations.of(context)!.pages,
                    iconPath:
                    "packages/es_flutter_component/assets/svgs/pages.svg",
                    expansionWidgetList: [
                      nextLevel(
                          title: "Profile",
                          pageWidget: PanelProfileSample(),
                          onSelect: _onSelectedList[41],
                          index: _indexList[41],
                          isSelected: _isSelectedList[41]),
                      nextLevel(
                          title: AppLocalizations.of(context)!.bill,
                          pageWidget: PanelBillSample(),
                          onSelect: _onSelectedList[42],
                          index: _indexList[42],
                          isSelected: _isSelectedList[42]),
                      nextLevel(
                          title: AppLocalizations.of(context)!.timeline,
                          pageWidget: PanelTimelineSample(),
                          onSelect: _onSelectedList[43],
                          index: _indexList[43],
                          isSelected: _isSelectedList[43]),
                      nextLevel(
                          title: AppLocalizations.of(context)!.pricecard,
                          pageWidget: PanelPriceCardSample(),
                          onSelect: _onSelectedList[44],
                          index: _indexList[44],
                          isSelected: _isSelectedList[44]),
                      nextLevel(
                          title: AppLocalizations.of(context)!.searchresult,
                          pageWidget: PanelSearchResultSample(),
                          onSelect: _onSelectedList[45],
                          index: _indexList[45],
                          isSelected: _isSelectedList[45]),
                      nextLevel(
                          title: AppLocalizations.of(context)!.emptyscreen,
                          pageWidget: PanelEmptyScreenSample(),
                          onSelect: _onSelectedList[46],
                          index: _indexList[46],
                          isSelected: _isSelectedList[46]),
                      nextLevelExpandedComplex(
                          expansionTitle: AppLocalizations.of(context)!.errors,
                          expansionWidgetList: [
                            nextLevelNavigate(
                                title: "404",
                                pageWidget: Es404Error(),
                                onSelect: _onSelectedList[_currentIndex],
                                index: _indexList[_currentIndex],
                                isSelected: _isSelectedList[47]),
                            nextLevelNavigate(
                                title: AppLocalizations.of(context)!.repairs,
                                pageWidget: EsRepairs(),
                                onSelect: _onSelectedList[_currentIndex],
                                index: _indexList[_currentIndex],
                                isSelected: _isSelectedList[48]),

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
                            expansionTitle: AppLocalizations.of(context)!.menulevel,
                            expansionWidgetList: [
                              nextLevelExpandedComplex(
                                expansionTitle: AppLocalizations.of(context)!.menulevel,
                                expansionWidgetList: [
                                  nextLevelExpandedComplex(
                                    expansionTitle: AppLocalizations.of(context)!.menulevel,
                                    expansionWidgetList: [
                                      nextLevelExpandedComplex(
                                        expansionTitle: AppLocalizations.of(context)!.menulevel,
                                        expansionWidgetList: [
                                          nextLevelExpandedComplex(
                                            expansionTitle: AppLocalizations.of(context)!.menulevel,
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

                // buttonsInfo(
                //     title:"Bill",
                //     icon: Icons.circle,
                //     page: PanelBillSample(),
                //     pageRout: '/bill'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget firstLevel(
      {required String iconPath,
      required String title,
      required int index,
      required void Function() onSelect,
      EdgeInsetsGeometry? tilePadding,
      Widget? pageWidget,
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
        child:
        Stack(
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
        pageWidget == null
            ? null
            : CenterScreen.globalKey.currentState?.changePage(pageWidget);
      },
    );
  }

  Widget nextLevel(
      {required String title,
      required int index,
      required void Function() onSelect,
      Widget? pageWidget,
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
        pageWidget == null
            ? null
            : CenterScreen.globalKey.currentState?.changePage(pageWidget);
      },
    );
  }
  
  Widget nextLevelNavigate(
      {required String title,
      required int index,
      required void Function() onSelect,
      Widget? pageWidget,
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
        pageWidget == null
            ? null
            :  Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  pageWidget),
        );
      },
    );
  }

  Widget firstLevelExpandedComplex({
    required String iconPath,
    EdgeInsetsGeometry? tilePadding,
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
          margin: EdgeInsets.all(0),
          tilePadding: tilePadding??EdgeInsets.symmetric(
              vertical: 0,
              horizontal: StructureBuilder.dims!.h1Padding
          ),
          backGroundImagePath: "assets/images/back2.png",
          iconColor: StructureBuilder.styles!.primaryLightColor,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular(StructureBuilder.dims!.h1BorderRadius))),
          title: firstLevel(
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
    EdgeInsetsGeometry? childrenPadding,

  }) {
    return InkWell(
      hoverColor: StructureBuilder.styles!.primaryLightColor.withOpacity(.2),
      child: Container(

        child: EsExpansionTile(
          tilePadding:EdgeInsets.all(0) ,
          childrenPadding:childrenPadding??EdgeInsets.all(0) ,
          margin: EdgeInsets.all(0),
          iconColor: StructureBuilder.styles!.primaryLightColor,
          decoration: BoxDecoration(
            color: Colors.transparent,
              borderRadius: BorderRadius.all(
                  Radius.circular(StructureBuilder.dims!.h1BorderRadius))),
          title: nextLevel(
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
