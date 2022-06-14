
import 'package:es_flutter_component/es_tab_navigator/es_side_navigator.dart';
import 'package:es_flutter_crm/drawer/panelItems/panel_dialog_box.dart';
import 'package:es_flutter_crm/drawer/panelItems/panel_progressbar.dart';
import 'package:es_flutter_crm/es_form.dart';
import 'package:es_flutter_crm/images/widget_tree_panel.dart';
import 'package:es_flutter_crm/language_change_provider.dart';
import 'package:es_flutter_crm/drawer/center_computer_screen.dart';
import 'package:es_flutter_crm/test.dart';
import 'package:es_flutter_crm/test2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'drawer/panelItems/panel_form.dart';
import 'drawer/panelItems/panel_image.dart';
import 'drawer/panelItems/panel_slider.dart';
import 'drawer/panelItems/panel_table.dart';
import 'drawer/panelItems/panel_text_sample.dart';
import 'images/panelConstants.dart';

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
                  '/table':(context) => PanelTable(),
                  '/progressbar':(context) => PanelProgressBar(),
                  '/slider':(context) => PanelSlider(),
                  '/image':(context) => PanelImage(),
                  '/form':(context) => PanelForm(),
                  '/dialog':(context) => PanelDialogBox(),
                  '/textSample':(context) => PanelTextSample(),
                  '/buttonSample':(context) => PanelTextSample(),
                  '/login': (context) => EsForm(),
                },
                // home:DemoPage(),
              )),
    );
  }


}


