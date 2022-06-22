// import 'package:es_flutter_component/es_form/es_file_picker.dart';
import 'package:es_flutter_admin_panel/drawer/panelItems/panel_chart.dart';
import 'package:es_flutter_admin_panel/drawer/panelItems/panel_dialog_box.dart';
import 'package:es_flutter_admin_panel/drawer/panelItems/panel_progressbar.dart';
import 'package:es_flutter_admin_panel/es_form.dart';
import 'package:es_flutter_admin_panel/images/widget_tree_panel.dart';
import 'package:es_flutter_admin_panel/language_change_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'drawer/panelItems/Panel_tabel/panel_editable_table.dart';
import 'drawer/panelItems/panel_form.dart';
import 'drawer/panelItems/panel_image.dart';
import 'drawer/panelItems/panel_notification.dart';
import 'drawer/panelItems/panel_slider.dart';
import 'drawer/panelItems/Panel_tabel/panel_simple_table.dart';
import 'drawer/panelItems/panel_text_sample.dart';

void main() {
  // [
    // {
    //   "route": "/home",
    //   "subRoute"null
    // },
    // {
    //   "route": "/users",
    //   "subRoute"[
    //   {
    //     "route": "/add",
    //     "subRoute"null
    //   },
    // {
    // "route": "/delete",
    // "subRoute"null
    // },
    //   ]
    // }

  // ]


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
          builder: (context) =>
              MaterialApp(
                // locale: Locale("fa"),
                locale:
                Provider
                    .of<LanguageChangeProvider>(context, listen: true)
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
                  Locale('fa', ''), // Spanish, no country code
                ],

                initialRoute: '/',
                routes: {

                  '/': (context) => WidgetTreePanel(),
                  '/notification': (context) => PanelNotification(),
                  '/chart': (context) => PanelChart(),
                  '/responsiveTable': (context) => PanelEditableTable(),
                  '/editableTable': (context) => PanelEditableTable(),
                  '/simpleTable': (context) => PanelSimpleTable(),
                  '/progressbar': (context) => PanelProgressBar(),
                  '/slider': (context) => PanelSlider(),
                  '/image': (context) => PanelImage(),
                  '/form': (context) => PanelForm(),
                  '/dialog': (context) => PanelDialogBox(),
                  '/textSample': (context) => PanelTextSample(),
                  '/buttonSample': (context) => PanelTextSample(),
                  '/login': (context) => EsForm(),
                },
                // home:EsSimpleTable(),
              )),
    );
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
// );


