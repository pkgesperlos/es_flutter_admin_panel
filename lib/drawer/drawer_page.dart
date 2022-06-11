
import 'package:es_flutter_component/es_form/es_date_time_picker.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';

import '../es_form.dart';
import '../panel/center_computer_screen.dart';
import '../images/constants.dart';
import '../images/responsive_layout.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../panel_center/panel_center_page.dart';

class DrawerPage extends StatefulWidget {

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class ButtonsInfo {
  String title;
  IconData icon;
  Widget page;

  ButtonsInfo({required this.title, required this.icon, required this.page});
}

int _currentIndex = 0;


class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    List<ButtonsInfo> _buttonNames = [
      ButtonsInfo(
          title: AppLocalizations.of(context)!.forms,
          icon: Icons.edit,
          page: PanelCenterPage()),
      ButtonsInfo(
          title: AppLocalizations.of(context)!.dashBoard,
          icon: Icons.dashboard,
          page: EsForm()),
      ButtonsInfo(
          title: AppLocalizations.of(context)!.emailBox,
          icon: Icons.inbox_rounded,
          page: EsDateTimePicker()),
      ButtonsInfo(
          title: AppLocalizations.of(context)!.fileManager,
          icon: Icons.cloud_outlined,
          page: EsForm()),
      ButtonsInfo(
          title: AppLocalizations.of(context)!.calender,
          icon: Icons.calendar_today,
          page: EsForm()),
      ButtonsInfo(
          title: AppLocalizations.of(context)!.toDo,
          icon: Icons.check_rounded,
          page: EsForm()),
      ButtonsInfo(
          title: AppLocalizations.of(context)!.pages,
          icon: Icons.star_border,
          page: EsForm()),
      ButtonsInfo(
          title: AppLocalizations.of(context)!.styles,
          icon: Icons.color_lens,
          page: EsForm()),
      ButtonsInfo(
          title: AppLocalizations.of(context)!.forms,
          icon: Icons.edit,
          page: PanelCenterPage()),
      ButtonsInfo(
          title: AppLocalizations.of(context)!.dashBoard,
          icon: Icons.dashboard,
          page: EsForm()),
      ButtonsInfo(
          title: AppLocalizations.of(context)!.emailBox,
          icon: Icons.inbox_rounded,
          page: EsDateTimePicker()),
      ButtonsInfo(
          title: AppLocalizations.of(context)!.fileManager,
          icon: Icons.cloud_outlined,
          page: EsForm()),
      ButtonsInfo(
          title: AppLocalizations.of(context)!.calender,
          icon: Icons.calendar_today,
          page: EsForm()),
      ButtonsInfo(
          title: AppLocalizations.of(context)!.toDo,
          icon: Icons.check_rounded,
          page: EsForm()),
      ButtonsInfo(
          title: AppLocalizations.of(context)!.pages,
          icon: Icons.star_border,
          page: EsForm()),
      ButtonsInfo(
          title: AppLocalizations.of(context)!.styles,
          icon: Icons.color_lens,
          page: EsForm()),

      // ButtonsInfo(title: AppLocalizations.of(context)!.tabls, icon: Icons.table_chart),
      // ButtonsInfo(title: AppLocalizations.of(context)!.elements, icon: Icons.emoji_emotions_outlined),
      // ButtonsInfo(title: AppLocalizations.of(context)!.components, icon: Icons.card_giftcard),
      // ButtonsInfo(title: AppLocalizations.of(context)!.widgets, icon: Icons.widgets),
      // ButtonsInfo(title: AppLocalizations.of(context)!.charts, icon: Icons.insert_chart),
      // ButtonsInfo(title: AppLocalizations.of(context)!.content, icon: Icons.table_rows),
      // ButtonsInfo(title: AppLocalizations.of(context)!.menu, icon: Icons.menu),
      // ButtonsInfo(title: AppLocalizations.of(context)!.headLine, icon: Icons.view_headline),
      // ButtonsInfo(title: AppLocalizations.of(context)!.documents, icon: Icons.bookmark_border),
      // ButtonsInfo(title: AppLocalizations.of(context)!.changeReport, icon: Icons.access_time),
    ];
    return Drawer(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Constants.kPadding),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Admin Menu",
                  style: TextStyle(color: Colors.white),
                ),
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
              ...List.generate(
                  _buttonNames.length,
                      (index) =>
                      Column(
                        children: [
                          Container(
                            decoration: index == _currentIndex
                                ? BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(colors: [
                                  Constants.redDark.withOpacity(0.9),
                                  Constants.orangeDark.withOpacity(0.9),
                                ]))
                                : null,
                            child: ListTile(
                              title: EsOrdinaryText(
                                data: _buttonNames[index].title,
                                // style: TextStyle(color: Colors.white),
                              ),
                              leading: Padding(
                                padding: EdgeInsets.all(Constants.kPadding),
                                child: Icon(
                                  _buttonNames[index].icon,
                                  color: Colors.black54,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  _currentIndex = index;
                                  !ResponsiveLayot.isComputer(context)
                                      ? Navigator.pushNamed(context, '/login')
                                      :CenterComputerScreen.globalKey.currentState?.changePage(_buttonNames[index].page);

                                });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),

                            ),
                          ),
                          Divider(
                            color: Colors.white,
                            thickness: 0.2,
                          )
                        ],
                      ))
            ],
          ),
        ),
      ),
    );
  }

}