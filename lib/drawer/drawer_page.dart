import 'package:es_flutter_component/es_form/es_date_time_picker.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_crm/drawer/panelItems/panel_text_sample/panel_text_sample.dart';
import 'package:flutter/material.dart';

import '../es_form.dart';
import 'center_computer_screen.dart';
import '../images/constants.dart';
import '../images/responsive_layout.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../panel_center/panel_center_page.dart';

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

int _currentIndex = 0;
int _currentIndex2 = 0;

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    List<List> _buttonNames = [
      [
        buttonsInfo(
            title: AppLocalizations.of(context)!.text,
            icon: Icons.edit,
            page: PanelTextSample(),
            pageRout: '/textSmple'),

      ],
      [
        "Forms",
        buttonsInfo(
            title: AppLocalizations.of(context)!.forms,
            icon: Icons.dynamic_form_outlined,
            page: EsForm(),
            pageRout: '/textSmple'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.fileManager,
            icon: Icons.cloud_outlined,
            page: PanelCenterPage(),
            pageRout: '/textSmple'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.calender,
            icon: Icons.calendar_today,
            page: EsDateTimePicker(),
            pageRout: '/textSmple'),
      ],
      [
        buttonsInfo(
            title: AppLocalizations.of(context)!.emailBox,
            icon: Icons.inbox_rounded,
            page: EsDateTimePicker(),
            pageRout: '/textSmple')
      ],
    ];
    List _acardionList = [];
    for (int i = 0; i < _buttonNames.length; i++) {
      _acardionList.add(_buttonNames[i].length != 1 ? 1 : 0);
    }

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
                  (index) => _buttonNames[index].length == 1
                      ? Column(
                          children: [
                            Container(
                              decoration: (index == _currentIndex)
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(colors: [
                                        Constants.redLight.withOpacity(0.9),
                                        Constants.blueDark.withOpacity(0.9),
                                      ]))
                                  : null,
                              child: ListTile(
                                title: EsOrdinaryText(
                                  // data: _buttonNames2[index][0].title,
                                  data: _buttonNames[index][0].title,
                                  // style: TextStyle(color: Colors.white),
                                ),
                                leading: Padding(
                                  padding: EdgeInsets.all(Constants.kPadding),
                                  child: Icon(
                                    _buttonNames[index][0].icon,
                                    // _buttonNames2[index][0].icon,
                                    color: Colors.black54,
                                  ),
                                ),
                                onTap: () {
                                  setState(() {
                                    _currentIndex = index;

                                    !ResponsiveLayot.isComputer(context)
                                        ? Navigator.pushNamed(context,
                                            _buttonNames[index][0].pageRout)
                                        : CenterComputerScreen
                                            .globalKey.currentState
                                            ?.changePage(
                                                _buttonNames[index][0].page);
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
                        )
                      : Column(
                          children: [
                            Container(
                              // decoration: index == _currentIndex
                              //     ? BoxDecoration(
                              //         borderRadius: BorderRadius.circular(20),
                              //         gradient: LinearGradient(colors: [
                              //           Constants.redDark.withOpacity(0.9),
                              //           Constants.orangeDark.withOpacity(0.9),
                              //         ]))
                              //     : null,
                              child: ExpansionTile(
                                title: ListTile(
                                  title: EsOrdinaryText(
                                    data: _buttonNames[index][0],
                                    // style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                children: [
                                  ...List.generate(
                                      _buttonNames[index].length - 1,
                                      (index2) => Column(
                                            children: [
                                              Container(
                                                decoration: (index2 ==
                                                            _currentIndex2 &&
                                                        _acardionList[
                                                                _currentIndex] !=
                                                            0)
                                                    ? BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        gradient:
                                                            LinearGradient(
                                                                colors: [
                                                              Constants.redLight
                                                                  .withOpacity(
                                                                      0.9),
                                                              Constants.blueDark
                                                                  .withOpacity(
                                                                      0.9),
                                                            ]))
                                                    : null,
                                                child: ListTile(
                                                  title: EsOrdinaryText(
                                                    data: _buttonNames[index]
                                                            [index2 + 1]
                                                        .title,
                                                    // style: TextStyle(color: Colors.white),
                                                  ),
                                                  leading: Padding(
                                                    padding: EdgeInsets.all(
                                                        Constants.kPadding),
                                                    child: Icon(
                                                      _buttonNames[index]
                                                              [index2 + 1]
                                                          .icon,
                                                      color: Colors.black54,
                                                    ),
                                                  ),
                                                  onTap: () {
                                                    setState(() {
                                                      _currentIndex2 = index2;
                                                      _currentIndex = index;

                                                      !ResponsiveLayot
                                                              .isComputer(
                                                                  context)
                                                          ? Navigator.pushNamed(
                                                              context, '/login')
                                                          : CenterComputerScreen
                                                              .globalKey
                                                              .currentState
                                                              ?.changePage(
                                                                  _buttonNames[
                                                                              index]
                                                                          [
                                                                          index2 +
                                                                              1]
                                                                      .page);
                                                    });
                                                  },
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
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
