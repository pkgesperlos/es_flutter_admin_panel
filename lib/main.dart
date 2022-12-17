// @dart=2.9
import 'package:es_flutter_admin_panel/language_change_provider.dart';
import 'package:es_flutter_admin_panel/panelItems/panel_authenticate/es_lock_screen.dart';
import 'package:es_flutter_admin_panel/panelItems/panel_authenticate/es_login.dart';
import 'package:es_flutter_admin_panel/panelItems/panel_authenticate/es_recover_password.dart';
import 'package:es_flutter_admin_panel/panelItems/panel_authenticate/es_signin.dart';
import 'package:es_flutter_admin_panel/panel_ui/images/widget_tree_panel.dart';
import 'package:es_flutter_component/components/es_bread_crumb/app_navigator_observer.dart';
import 'package:es_flutter_component/resources/constants/structure_config.dart';
import 'package:es_flutter_component/resources/constants/structure_dims.dart';
import 'package:es_flutter_component/resources/constants/structure_styles.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

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
                  primaryColor: Color(0xff092640),
                  secondaryColor: Color(0xff737373),
                  tritiaryColor: Colors.pink,
                  primaryDarkColor: Color(0xffF0F4F9),
                  primaryLightColor: Colors.white,
                ),
                dims: InitialDims(),
                configs: InitialConfig(),
                child: MaterialApp(
                  // locale: Locale("fa"),
                  navigatorObservers: [AppNavigatorObserver()],//it is initialized for breadcrumb
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
                    Locale('fa', ''),
                    Locale('en', ''), // English, no country code
                    // Spanish, no country code
                  ],

                  initialRoute: '/',
                  routes: {
                    '/': (context) => WidgetTreePanel(),
                    // '/': (context) => PanelAvatarSample(),


                      '/locksceen': (context) => EsLockScreen(),
                      '/recoverpass': (context) => EsRecoverPassword(),
                      '/signin': (context) => EsSignin(),
                      '/login': (context) => EsLogin(),



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
      Color primaryDarkColor,
      Color primaryLightColor,
      Color textPrimaryColor,
      Color textSecondaryColor,
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
            primaryDarkColor,
            primaryLightColor,
            textPrimaryColor,
            textSecondaryColor,
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
