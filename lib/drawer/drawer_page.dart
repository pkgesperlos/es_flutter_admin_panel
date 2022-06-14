import 'package:es_flutter_component/es_dialog/es_awesome_dialog/es_success_dialog.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker/es_date_time_picker.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_crm/drawer/panelItems/panel_button_sample.dart';
import 'package:es_flutter_crm/drawer/panelItems/panel_dialog_box.dart';
import 'package:es_flutter_crm/drawer/panelItems/panel_form.dart';
import 'package:es_flutter_crm/drawer/panelItems/panel_image.dart';
import 'package:es_flutter_crm/drawer/panelItems/panel_progressbar.dart';
import 'package:es_flutter_crm/drawer/panelItems/panel_slider.dart';
import 'package:es_flutter_crm/drawer/panelItems/panel_table.dart';
import 'package:es_flutter_crm/drawer/panelItems/panel_text_sample.dart';
import 'package:flutter/material.dart';
import '../dashboard/panel_center/panel_center_page.dart';
import '../es_form.dart';
import '../images/panelConstants.dart';
import 'center_computer_screen.dart';
import '../images/responsive_layout.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            pageRout: '/textSample'),
      ],
      [
        buttonsInfo(
            title: AppLocalizations.of(context)!.dialogBox,
            icon: Icons.messenger_outline,
            page: PanelDialogBox(),
            pageRout: '/dialog'),
      ],
      [
        buttonsInfo(
            title: AppLocalizations.of(context)!.button,
            icon: Icons.radio_button_checked_sharp,
            page: PanelButtonSample(),
            pageRout: '/buttonSample'),
      ],
      [
        buttonsInfo(
            title: AppLocalizations.of(context)!.forms,
            icon: Icons.list_alt,
            page: PanelForm(),
            pageRout: '/form')
      ],
      [
        buttonsInfo(
            title: AppLocalizations.of(context)!.images,
            icon: Icons.image_outlined,
            page: PanelImage(),
            pageRout: '/image')
      ],
      [
        buttonsInfo(
            title: AppLocalizations.of(context)!.progressBar,
            icon: Icons.timelapse_rounded,
            page: PanelProgressBar(),
            pageRout: '/progressbar')
      ],
      [
        buttonsInfo(
            title: AppLocalizations.of(context)!.tables,
            icon: Icons.table_chart_outlined,
            page: PanelTable(),
            pageRout: '/table')
      ],
      [
        buttonsInfo(
            title: AppLocalizations.of(context)!.slider,
            icon: Icons.slideshow_rounded,
            page: PanelSlider(),
            pageRout: '/slider')
      ],
      [
        "Accardeion",
        buttonsInfo(
            title: AppLocalizations.of(context)!.text,
            icon: Icons.edit,
            page: PanelTextSample(),
            pageRout: '/textSample'),
        buttonsInfo(
            title: AppLocalizations.of(context)!.dialogBox,
            icon: Icons.check_circle_rounded,
            page: PanelDialogBox(),
            pageRout: '/dialog'),
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
          padding: const EdgeInsets.all(PanelConstants.paddingDimension),
          child: Column(
            children: [
              ListTile(
                title: EsOrdinaryText(
                  data: AppLocalizations.of(context)!.adminMenu,
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
                                      border: Border.all(
                                          color:
                                              PanelConstants.drawerSelectColor1,
                                          width: 3),
                                      // gradient: LinearGradient(colors: [
                                      //   PanelConstants.drawerSelectColor2
                                      //       .withOpacity(0.9),
                                      //   PanelConstants.drawerSelectColor1
                                      //       .withOpacity(0.9),
                                      // ])
                                    )
                                  : null,
                              child: ListTile(
                                title: EsOrdinaryText(
                                  // data: _buttonNames2[index][0].title,
                                  data: _buttonNames[index][0].title,
                                  color:(index == _currentIndex) ? PanelConstants
                                    .drawerSelectColor1
                                    : PanelConstants
                                    .drawerFontColor,
                                  // style: TextStyle(color: Colors.white),
                                ),
                                leading: Padding(
                                  padding: EdgeInsets.all(
                                      PanelConstants.paddingDimension),
                                  child: Icon(
                                    _buttonNames[index][0].icon,
                                    // _buttonNames2[index][0].icon,
                                    color:(index == _currentIndex) ? PanelConstants
                                        .drawerSelectColor1
                                        : PanelConstants
                                        .drawerFontColor,
                                  ),
                                ),
                                onTap: () {
                                  setState(() {
                                    _currentIndex = index;

                                    !ResponsiveLayot.isComputer(context)
                                        // ? Navigator.pushNamed(context,
                                        //     _buttonNames[index][0].pageRout)
                                        ? CenterComputerScreen
                                            .globalKey.currentState
                                            ?.changePage(
                                                _buttonNames[index][0].page)
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
                              color: PanelConstants.drawerFontColor,
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
                              //           PanelConstants.redDark.withOpacity(0.9),
                              //           PanelConstants.orangeDark.withOpacity(0.9),
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
                                                        border: Border.all(
                                                            color: PanelConstants
                                                                .drawerSelectColor1,
                                                            width: 3),
                                                        // gradient:
                                                        //     LinearGradient(
                                                        //         colors: [
                                                        //       PanelConstants
                                                        //           .drawerSelectColor2
                                                        //           .withOpacity(
                                                        //               0.9),
                                                        //       PanelConstants
                                                        //           .drawerSelectColor1
                                                        //           .withOpacity(
                                                        //               0.9),
                                                        //     ])
                                                      )
                                                    : null,
                                                child: ListTile(
                                                  title: EsOrdinaryText(
                                                    data: _buttonNames[index]
                                                            [index2 + 1]
                                                        .title,
                                                    color: (index2 ==
                                                                _currentIndex2 &&
                                                            _acardionList[
                                                                    _currentIndex] !=
                                                                0)
                                                        ? PanelConstants
                                                            .drawerSelectColor1
                                                        : PanelConstants
                                                            .drawerFontColor,
                                                  ),
                                                  leading: Padding(
                                                    padding: EdgeInsets.all(
                                                        PanelConstants
                                                            .paddingDimension),
                                                    child: Icon(
                                                      _buttonNames[index]
                                                              [index2 + 1]
                                                          .icon,
                                                      color: (index2 ==
                                                                  _currentIndex2 &&
                                                              _acardionList[
                                                                      _currentIndex] !=
                                                                  0)
                                                          ? PanelConstants
                                                              .drawerSelectColor1
                                                          : PanelConstants
                                                              .drawerFontColor,
                                                    ),
                                                  ),
                                                  onTap: () {
                                                    setState(() {
                                                      _currentIndex2 = index2;
                                                      _currentIndex = index;

                                                      !ResponsiveLayot
                                                              .isComputer(
                                                                  context)
                                                          // ? Navigator.pushNamed(
                                                          //     context, '/login')
                                                          ? CenterComputerScreen
                                                              .globalKey
                                                              .currentState
                                                              ?.changePage(
                                                                  _buttonNames[index]
                                                                          [
                                                                          index2 +
                                                                              1]
                                                                      .page)
                                                          : CenterComputerScreen
                                                              .globalKey
                                                              .currentState
                                                              ?.changePage(
                                                                  _buttonNames[index]
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
                                                color: PanelConstants
                                                    .drawerFontColor,
                                                thickness: 0.2,
                                              )
                                            ],
                                          ))
                                ],
                              ),
                            ),
                            Divider(
                              color: PanelConstants.drawerFontColor,
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
