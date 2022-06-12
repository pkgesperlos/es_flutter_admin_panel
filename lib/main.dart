import 'package:es_flutter_component/es_button/es_radio_button.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker.dart';
import 'package:es_flutter_component/es_tab_navigator/es_side_navigator.dart';
import 'package:es_flutter_crm/es_form.dart';
import 'package:es_flutter_crm/images/widget_tree_panel.dart';
import 'package:es_flutter_crm/language_change_provider.dart';
import 'package:es_flutter_crm/drawer/center_computer_screen.dart';
import 'package:es_flutter_crm/panel_center/panel_center_page.dart';
import 'package:es_flutter_crm/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'drawer/panelItems/panel_text_sample/panel_text_sample.dart';
import 'images/constants.dart';

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
          builder: (context) => MaterialApp(
                // locale: Locale("fa"),
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
                  Locale('fa', ''), // Spanish, no country code
                ],
                // theme: ThemeData(
                //     primarySwatch: Colors.blue,
                //     scaffoldBackgroundColor: Constants.purpleDark,
                //     canvasColor: Constants.purpleLight
                // ),
                initialRoute: '/',
                routes: {
                  '/': (context) => WidgetTreePanel(),
                  // '/center': (context) => CenterComputerScreen(page: PanelCenterPage()),
                  // '/': (context) => Test(),
                  '/textSmple':(context) => PanelTextSample(),
                  '/login': (context) => EsForm(),
                },
                // home:WidgetTreePanel(),
              )),
    );
  }


}


