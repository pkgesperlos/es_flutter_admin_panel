// @dart=2.9
import 'package:es_flutter_admin_panel/language_change_provider.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_advanced_components/panel_sweet_alert_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_advanced_components/panel_toast_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_advanced_components/panel_tooltip_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_advanced_components/panel_tutorial_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_authenticate/es_lock_screen.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_authenticate/es_login.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_authenticate/es_recover_password.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_authenticate/es_signin.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_accordion_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_alert_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_avatar_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_bread_crumb_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_button_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_chart_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_color_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_dialog_box.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_dropdown_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_group_button_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_group_list_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_dashboard/panel_dashboard_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_forms/panel_html_text_editor_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_icons_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_cards/panel_image_card_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_label_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_light_box_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_modal_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_navigation_bar_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_page_indicator_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_cards/panel_primary_card_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_progress_bar_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_cards/panel_scrollable_card_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_slider_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_tab_bar_navigation_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_table/panel_responsive_table_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_table/panel_simple_table_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_text_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_waiting_indicator_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_components/panel_zoomable_image_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_forms/panel_advanced_form_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_forms/panel_custom_form_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_forms/panel_primary_form_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_forms/panel_stepper_form_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_forms/panel_text_editor_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_forms/panel_validate_form_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_pages/panel_bill_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_pages/panel_empty_screen_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_pages/panel_errors/es_404_error.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_pages/panel_errors/es_other_404.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_pages/panel_errors/es_repairs.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_pages/panel_map_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_pages/panel_price_card_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_pages/panel_profile_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_pages/panel_search_result_sample.dart';
import 'package:es_flutter_admin_panel/panel_items/panel_pages/panel_timeline_sample.dart';
import 'package:es_flutter_admin_panel/panel_ui/drawer/route_maker.dart';
import 'package:es_flutter_admin_panel/panel_ui/structure_images/widget_tree_panel.dart';
import 'package:es_flutter_component/components/es_bread_crumb/app_navigator_observer.dart';
import 'package:es_flutter_component/resources/constants/structure_config.dart';
import 'package:es_flutter_component/resources/constants/structure_dims.dart';
import 'package:es_flutter_component/resources/constants/structure_styles.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'panel_items/panel_advanced_components/panel_tree_list_sample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  // const _MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LanguageChangeProvider>(
      create: (context) => LanguageChangeProvider(),
      child: Builder(
          builder: (context) => StructureBuilder(
                styles: InitialStyle(
                    primaryColor: Color(0xffF0F4F9),
                    secondaryColor: Color(0xff737373),
                    primaryDarkColor: Color(0xff092640),
                    primaryLightColor: Color(0xFFffffff),
                    specificColor: Colors.pink,),
                dims: InitialDims(),
                configs: InitialConfig(),
                child: MaterialApp(
                  // locale: Locale("fa"),
                  navigatorObservers: [AppNavigatorObserver()],
                  //it is initialized for breadcrumb
                  locale:
                      Provider.of<LanguageChangeProvider>(context, listen: true)
                          .currentLocale,
                  debugShowCheckedModeBanner: false,
                  title: 'Localizations Sample App',
                  localizationsDelegates: [
                    AppLocalizations.delegate, // Add this line
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate
                  ],
                  supportedLocales: [

                    Locale('en', ''), // English, no country code
                    Locale('fa', ''),// Persian, no country code




                  ],

                  initialRoute: '/',
                  routes: {
                    '/': (context) => WidgetTreePanel(),
                    '/lockScreen': (context) => EsLockScreen(),
                    '/esRecoverPassword': (context) => EsRecoverPassword(),
                    '/esSignin': (context) => EsSignin(),
                    '/esLogin': (context) => EsLogin(),
                    '/es404Error': (context) => Es404Error(),
                    '/esOther404': (context) => EsOther404(),
                    '/esRepairs': (context) => EsRepairs(),
                    '/panelProfileSample': (context) => RoutMaker(
                          child: PanelProfileSample(),
                        ),
                    '/panelDashboardSample': (context) => RoutMaker(
                      child: PanelDashboardSample(),
                    ),
                    '/panelBillSample': (context) => RoutMaker(
                          child: PanelBillSample(),
                        ),
                    '/panelTimelineSample': (context) => RoutMaker(
                          child: PanelTimelineSample(),
                        ),
                    '/panelPriceCardSample': (context) =>
                        RoutMaker(child: PanelPriceCardSample()),
                    '/panelSearchResultSample': (context) =>
                        RoutMaker(child: PanelSearchResultSample()),
                    '/panelMapSample': (context) =>
                        RoutMaker(child: PanelMapSample()),
                    '/panelEmptyScreenSample': (context) =>
                        RoutMaker(child: PanelEmptyScreenSample()),
                    '/panelTutorialSample': (context) =>
                        RoutMaker(child: PanelTutorialSample()),
                    '/panelTreeListSample': (context) =>
                        RoutMaker(child: PanelTreeListSample()),
                    '/panelTooltipSample': (context) =>
                        RoutMaker(child: PanelTooltipSample()),
                    '/panelToastSample': (context) =>
                        RoutMaker(child: PanelToastSample()),
                    '/panelSweetAlertSample': (context) =>
                        RoutMaker(child: PanelSweetAlertSample()),
                    '/panelValidateFormSample': (context) =>
                        RoutMaker(child: PanelValidateFormSample()),
                    '/panelStepperFormSample': (context) =>
                        RoutMaker(child: PanelStepperFormSample()),
                    '/panelCustomFormSample': (context) =>
                        RoutMaker(child: PanelCustomFormSample()),
                    '/panelPrimaryFormSample': (context) =>
                        RoutMaker(child: PanelPrimaryFormSample()),
                    '/panelAdvancedFormSample': (context) =>
                        RoutMaker(child: PanelAdvancedFormSample()),
                    '/panelTextEditorSample': (context) =>
                        RoutMaker(child: PanelTextEditorSample()),
                    '/panelaccordionSample': (context) =>
                        RoutMaker(child: PanelaccordionSample()),
                    '/panelAlertSample': (context) =>
                        RoutMaker(child: PanelAlertSample()),
                    '/panelAvatarSample': (context) =>
                        RoutMaker(child: PanelAvatarSample()),
                    '/panelBreadCrumbSample': (context) =>
                        RoutMaker(child: PanelBreadCrumbSample()),
                    '/panelButtonSample': (context) =>
                        RoutMaker(child: PanelButtonSample()),
                    '/panelChartSample': (context) =>
                        RoutMaker(child: PanelChartSample()),
                    '/panelColorsSample': (context) =>
                        RoutMaker(child: PanelColorsSample()),
                    '/panelDialogBox': (context) =>
                        RoutMaker(child: PanelDialogBox()),
                    '/panelDropDownSample': (context) =>
                        RoutMaker(child: PanelDropDownSample()),
                    '/panelGroupButtonSample': (context) =>
                        RoutMaker(child: PanelGroupButtonSample()),
                    '/panelGroupListSample': (context) =>
                        RoutMaker(child: PanelGroupListSample()),
                    '/panelIconsSample': (context) =>
                        RoutMaker(child: PanelIconsSample()),
                    '/panelImageCardSample': (context) =>
                        RoutMaker(child: PanelImageCardSample()),
                    '/panelLabelSample': (context) =>
                        RoutMaker(child: PanelLabelSample()),
                    '/panelLightBoxSample': (context) =>
                        RoutMaker(child: PanelLightBoxSample()),
                    '/panelModalSample': (context) =>
                        RoutMaker(child: PanelModalSample()),
                    '/panelNavigationBarSample': (context) =>
                        RoutMaker(child: PanelNavigationBarSample()),
                    '/panelPageIndicatorSample': (context) =>
                        RoutMaker(child: PanelPageIndicatorSample()),
                    '/panelPrimaryCardSample': (context) =>
                        RoutMaker(child: PanelPrimaryCardSample()),
                    '/panelProgressBarSample': (context) =>
                        RoutMaker(child: PanelProgressBarSample()),
                    '/panelScrollableCardSample': (context) =>
                        RoutMaker(child: PanelScrollableCardSample()),
                    '/panelSliderSample': (context) =>
                        RoutMaker(child: PanelSliderSample()),
                    '/panelTabBarNavigationSample': (context) =>
                        RoutMaker(child: PanelTabBarNavigationSample()),
                    '/panelTextSample': (context) =>
                        RoutMaker(child: PanelTextSample()),
                    '/panelWaitingIndicatorSample': (context) =>
                        RoutMaker(child: PanelWaitingIndicatorSample()),
                    '/panelZoomableImageSample': (context) =>
                        RoutMaker(child: PanelZoomableImageSample()),
                    '/panelResponsiveTableSample': (context) =>
                        RoutMaker(child: PanelResponsiveTableSample()),
                    '/panelSimpleTableSample': (context) =>
                        RoutMaker(child: PanelSimpleTableSample()),
                    '/panelHtmlTextEditorSample': (context) =>
                        RoutMaker(child: PanelHtmlTextEditorSample()),
                  },
                  // home:EsLogin(),
                ),
              )),
    );
  }
}

class MyStyle extends StructureStyles {
  static const cardColor = Color(0xffF2F2F2);

  MyStyle(
      Color primaryColor,
      Color secondaryColor,
      Color specificColor,
      Color primaryDarkColor,
      Color primaryLightColor,
      Color secondaryDarkColor,
      Color secondaryLightColor,
      Color onPrimaryColor,
      Color onSecondaryColor,
      Color t1Color,
      Color t2Color,
      Color t3Color,
      Color t4Color,
      Color t5Color,
      Color t6Color,
      Color t7Color,
      Color t8Color,
      Color t9Color,
      Color t10Color,
      Color t11Color,
      Color t12Color)
      : super(
            primaryColor,
            secondaryColor,
            specificColor,
            primaryDarkColor,
            primaryLightColor,
            secondaryDarkColor,
            secondaryLightColor,
            onPrimaryColor,
            onSecondaryColor,
            t1Color,
            t2Color,
            t3Color,
            t4Color,
            t5Color,
            t6Color,
            t7Color,
            t8Color,
            t9Color,
            t10Color,
            t11Color,
            t12Color);

  @override
  AdditionalStyleModel additionalStyle() {
    // TODO: implement additionalStyle

    return super.additionalStyle();
  }
}

// return ChangeNotifierProvider<LanguageChangeProvider>(
//   create: (context) => LanguageChangeProvider(),
//   child: Builder(builder: (context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         locale: Provider
//             .of<LanguageChangeProvider>(context, listen: true)
//             .currentLocale,
//         title: 'Localizations Sample App',
//         localizationsDelegates: [
//           AppLocalizations.delegate, // Add this line
//           GlobalMaterialLocalizations.delegate,
//           GlobalWidgetsLocalizations.delegate,
//           GlobalCupertinoLocalizations.delegate
//         ],
//         supportedLocales: [
//           Locale('en', ''), // English, no country code
//           Locale('fa', ''), // Spanish, no country code
//         ],
//         // initialRoute: '/',
//         // routes: {
//         // '/': (context) => EsSimpleTable(),
//         // },
//         home: Scaffold(
//             // resizeToAvoidBottomInset: false,
//             body: WidgetTreePanel()
//         )
//     );
//   }),
