import 'package:es_flutter_components/components/es_table/es_simple_table.dart';
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_components/components/es_button/es_button.dart';
import 'package:es_flutter_components/components/es_image/es_avatar_image.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelSimpleTableSample extends StatefulWidget {

  static const routeName = '/panelSimpleTableSample';

  PanelSimpleTableSample({Key? key}) : super(key: key);

  @override
  State<PanelSimpleTableSample> createState() => _PanelSimpleTableSampleState();
}

class _PanelSimpleTableSampleState extends State<PanelSimpleTableSample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _height = 300;
    List list = [
      ContainerItems(
          widget: Container(
              height: _height,
              alignment: Alignment.topCenter,
              child: EsSimpleTable(
                rowsContent: [
                  [
                    EsOrdinaryText("ID1"),
                    EsOrdinaryText("Name1"),
                    EsOrdinaryText("Profession1"),
                  ],
                  [
                    EsOrdinaryText("ID2"),
                    EsOrdinaryText("Name2"),
                    EsOrdinaryText("Profession2"),
                  ],
                  [
                    EsOrdinaryText("ID3"),
                    EsOrdinaryText("Name3"),
                    EsOrdinaryText("Profession3"),
                  ],
                ],
                columnTitle: [
                  EsTitle("ID"),
                  EsTitle("Name"),
                  EsTitle("Profession")
                ],
              )),
          title: AppLocalizations.of(context)!.simpletable,
          information:
              "It is simple table located in: \n es_flutter_component/lib/components/es_table/es_simple_table.dart' \n and is used as: \n "
              """EsSimpleTable(

                rowsContent: [
                  [
                    EsOrdinaryText("ID1"),
                    EsOrdinaryText("Name1"),
                    EsOrdinaryText("Profession1"), ],
                  [
                    EsOrdinaryText("ID2"),
                    EsOrdinaryText("Name2"),
                    EsOrdinaryText("Profession2"), ],
                  [
                    EsOrdinaryText("ID3"),
                    EsOrdinaryText("Name3"),
                    EsOrdinaryText("Profession3"), ],
                ],
                columnTitle: ["ID", "Name", "Profession"],)"""),
      ContainerItems(
          widget: Container(
              height: _height,
              alignment: Alignment.topCenter,
              child: EsSimpleTable(
                dataRowHeight: StructureBuilder.dims!.h0Padding * 3,
                rowsContent: [
                  [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical:StructureBuilder.dims!.h1Padding ),
                      child: EsAvatarImage(
                        path: "assets/images/img1.jpg",
                        radius: StructureBuilder.dims!.h0Padding,
                      ),

                    ),
                    EsOrdinaryText("Name1"),
                    EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                  ],
                  [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical:StructureBuilder.dims!.h1Padding ),
                      child: EsAvatarImage(
                        path: "assets/images/img2.jpg",
                        radius: StructureBuilder.dims!.h0Padding,
                      ),
                    ),
                    EsOrdinaryText("Name2"),
                    EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                  ],
                  [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical:StructureBuilder.dims!.h1Padding ),
                      child: EsAvatarImage(
                        path: "assets/images/img3.jpg",
                        radius: StructureBuilder.dims!.h0Padding,
                      ),
                    ),
                    EsOrdinaryText("Name3"),
                    EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),
                  ],
                ],
                columnTitle: [
                  EsTitle("ID"),
                  EsTitle("Name"),
                  EsTitle("Profession")
                ],
              )),
          title: AppLocalizations.of(context)!.simpletablewithcustomwidgets,
          information:
              "It is simple table with custom widgets located in: \n es_flutter_component/lib/components/es_table/es_simple_table.dart' \n and is used as: \n "
              """EsSimpleTable(

                dataRowHeight: StructureBuilder.dims!.h0Padding*3,
                rowsContent: [
                  [
                    Padding(
                      padding:  EdgeInsets.all(StructureBuilder.dims!.h1Padding),
                      child: EsAvatarImage(path: "assets/images/img1.jpg",
                        radius: StructureBuilder.dims!.h0Padding,),
                    ),
                    EsOrdinaryText("Name1"),
                    EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ),],
                  [
                    Padding(
                      padding:  EdgeInsets.all(StructureBuilder.dims!.h1Padding),
                      child: EsAvatarImage(path: "assets/images/img2.jpg",
                        radius: StructureBuilder.dims!.h0Padding,),
                    ),
                    EsOrdinaryText("Name2"),
                    EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ), ],
                  [
                    Padding(
                      padding:  EdgeInsets.all(StructureBuilder.dims!.h1Padding),
                      child: EsAvatarImage(path: "assets/images/img3.jpg",
                        radius: StructureBuilder.dims!.h0Padding,),
                    ),
                    EsOrdinaryText("Name3"),
                    EsButton(
                      text: AppLocalizations.of(context)!.button,
                    ), ],
                ],
                columnTitle: ["ID", "Name", "Profession"],)"""),
      ContainerItems(
          widget: Container(
              height: _height,
              alignment: Alignment.topCenter,
              child: EsSimpleTable(
                decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryDarkColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius * 2))),
                headingColor: StructureBuilder.styles!.primaryDarkColor,
                dataRowHeight: StructureBuilder.dims!.h0Padding * 2.5,
                rowsContent: [
                  [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical:StructureBuilder.dims!.h1Padding),
                      child: EsAvatarImage(
                        path: "assets/images/img1.jpg",
                        radius: StructureBuilder.dims!.h0Padding,
                      ),
                    ),
                    EsOrdinaryText(
                      "Name1",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsButton(
                      fillColor: StructureBuilder.styles!.secondaryColor,
                      textColor: StructureBuilder.styles!.primaryDarkColor,
                      text: AppLocalizations.of(context)!.button,
                    ),
                  ],
                  [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical:StructureBuilder.dims!.h1Padding),
                      child: EsAvatarImage(
                        path: "assets/images/img2.jpg",
                        radius: StructureBuilder.dims!.h0Padding,
                      ),
                    ),
                    EsOrdinaryText(
                      "Name2",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsButton(
                      fillColor: StructureBuilder.styles!.secondaryColor,
                      textColor: StructureBuilder.styles!.primaryDarkColor,
                      text: AppLocalizations.of(context)!.button,
                    ),
                  ],
                  [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical:StructureBuilder.dims!.h1Padding),
                      child: EsAvatarImage(
                        path: "assets/images/img3.jpg",
                        radius: StructureBuilder.dims!.h0Padding,
                      ),
                    ),
                    EsOrdinaryText(
                      "Name3",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsButton(
                      fillColor: StructureBuilder.styles!.secondaryColor,
                      textColor: StructureBuilder.styles!.primaryDarkColor,
                      text: AppLocalizations.of(context)!.button,
                    ),
                  ],
                ],
                columnTitle: [
                  EsTitle(
                    "ID",
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  EsTitle(
                    "Name",
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  EsTitle(
                    "Profession",
                    color: StructureBuilder.styles!.primaryLightColor,
                  )
                ],
              )),
          title: AppLocalizations.of(context)!
              .simpletablewithcustomwidgetsindesiredcolor,
          information:
              "It is simple table with custom widgets in desired color located in: \n es_flutter_component/lib/components/es_table/es_simple_table.dart' \n and is used as: \n "
              """EsSimpleTable(
                decoration: BoxDecoration(
                  color: StructureBuilder.styles!.primaryDarkColor,
                  borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h0BorderRadius))
                ),
                headingColor: StructureBuilder.styles!.primaryDarkColor,
                dataRowHeight: StructureBuilder.dims!.h0Padding * 3,
                rowsContent: [
                  [
                    Padding(
                      padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
                      child: EsAvatarImage(
                        path: "assets/images/img1.jpg",
                        radius: StructureBuilder.dims!.h0Padding,
                      ),
                    ),
                    EsOrdinaryText(
                      "Name1",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsButton(
                      fillColor: StructureBuilder.styles!.secondaryColor,
                      textColor: StructureBuilder.styles!.primaryDarkColor,
                      text: AppLocalizations.of(context)!.button,
                    ),
                  ],
                  [
                    Padding(
                      padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
                      child: EsAvatarImage(
                        path: "assets/images/img2.jpg",
                        radius: StructureBuilder.dims!.h0Padding,
                      ),
                    ),
                    EsOrdinaryText(
                      "Name2",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsButton(
                      fillColor: StructureBuilder.styles!.secondaryColor,
                      textColor: StructureBuilder.styles!.primaryDarkColor,
                      text: AppLocalizations.of(context)!.button,
                    ),
                  ],
                  [
                    Padding(
                      padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
                      child: EsAvatarImage(
                        path: "assets/images/img3.jpg",
                        radius: StructureBuilder.dims!.h0Padding,
                      ),
                    ),
                    EsOrdinaryText(
                      "Name3",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsButton(
                      fillColor: StructureBuilder.styles!.secondaryColor,
                      textColor: StructureBuilder.styles!.primaryDarkColor,
                      text: AppLocalizations.of(context)!.button,
                    ),
                  ],
                ],
                columnTitle: [
                  EsTitle(
                    "ID",
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  EsTitle(
                    "Name",
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  EsTitle(
                    "Profession",
                    color: StructureBuilder.styles!.primaryLightColor,
                  )
                ],
              )"""),
      ContainerItems(
          widget: Container(
              height: _height,
              alignment: Alignment.topCenter,
              child: EsSimpleTable(
                headingColor: StructureBuilder.styles!.primaryColor,
                rowsContent: [
                  [
                    EsOrdinaryText("ID1"),
                    EsOrdinaryText("Name1"),
                    EsOrdinaryText("Profession1"),
                  ],
                  [
                    EsOrdinaryText("ID2"),
                    EsOrdinaryText("Name2"),
                    EsOrdinaryText("Profession2"),
                  ],
                  [
                    EsOrdinaryText("ID3"),
                    EsOrdinaryText("Name3"),
                    EsOrdinaryText("Profession3"),
                  ],
                ],
                columnTitle: [
                  EsTitle("ID"),
                  EsTitle("Name"),
                  EsTitle("Profession")
                ],
              )),
          title:
              AppLocalizations.of(context)!.simpletablewithdesiredheadingcolor,
          information:
              "It is simple table with desired heading color located in: \n es_flutter_component/lib/components/es_table/es_simple_table.dart' \n and is used as: \n "
              """EsSimpleTable(
                headingColor:  StructureBuilder.styles!.primaryColor,
                rowsContent: [
                  [
                    EsOrdinaryText("ID1"),
                    EsOrdinaryText("Name1"),
                    EsOrdinaryText("Profession1"),
                  ],
                  [
                    EsOrdinaryText("ID2"),
                    EsOrdinaryText("Name2"),
                    EsOrdinaryText("Profession2"),
                  ],
                  [
                    EsOrdinaryText("ID3"),
                    EsOrdinaryText("Name3"),
                    EsOrdinaryText("Profession3"),
                  ],
                ],
                columnTitle: [EsTitle("ID"),EsTitle("Name"),EsTitle("Profession")],
              )"""),
      ContainerItems(
          widget: Container(
              height: _height,
              alignment: Alignment.topCenter,
              child: EsSimpleTable(
                headingColor: StructureBuilder.styles!.primaryColor,
                // zebraColor:  StructureBuilder.styles!.primaryColor,
                zebraMode: true,
                rowsContent: [
                  [
                    EsOrdinaryText("ID1"),
                    EsOrdinaryText("Name1"),
                    EsOrdinaryText("Profession1"),
                  ],
                  [
                    EsOrdinaryText("ID2"),
                    EsOrdinaryText("Name2"),
                    EsOrdinaryText("Profession2"),
                  ],
                  [
                    EsOrdinaryText("ID3"),
                    EsOrdinaryText("Name3"),
                    EsOrdinaryText("Profession3"),
                  ],
                  [
                    EsOrdinaryText("ID4"),
                    EsOrdinaryText("Name4"),
                    EsOrdinaryText("Profession4"),
                  ],
                ],
                columnTitle: [
                  EsTitle("ID"),
                  EsTitle("Name"),
                  EsTitle("Profession")
                ],
              )),
          title: AppLocalizations.of(context)!.simpletableinzebramode,
          information:
              "It is simple table in zebra mode located in: \n es_flutter_component/lib/components/es_table/es_simple_table.dart' \n and is used as: \n "
              """EsSimpleTable(
                headingColor:  StructureBuilder.styles!.primaryColor,
                // zebraColor:  StructureBuilder.styles!.primaryColor,
                zebraMode: true,
                rowsContent: [
                  [
                    EsOrdinaryText("ID1"),
                    EsOrdinaryText("Name1"),
                    EsOrdinaryText("Profession1"),
                  ],
                  [
                    EsOrdinaryText("ID2"),
                    EsOrdinaryText("Name2"),
                    EsOrdinaryText("Profession2"),
                  ],
                  [
                    EsOrdinaryText("ID3"),
                    EsOrdinaryText("Name3"),
                    EsOrdinaryText("Profession3"),
                  ],[
                    EsOrdinaryText("ID4"),
                    EsOrdinaryText("Name4"),
                    EsOrdinaryText("Profession4"),
                  ],
                ],
                columnTitle: [EsTitle("ID"),EsTitle("Name"),EsTitle("Profession")],
              )"""),
      ContainerItems(
          widget: Container(
              height: _height,
              alignment: Alignment.topCenter,
              child: EsSimpleTable(
                headingColor: StructureBuilder.styles!.primaryDarkColor,
                zebraColor: StructureBuilder.styles!.primaryDarkColor,
                zebraMode: true,
                decoration: BoxDecoration(
                    color: StructureBuilder.styles!.secondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
                rowsContent: [
                  [
                    EsOrdinaryText(
                      "ID1",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsOrdinaryText(
                      "Name1",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsOrdinaryText(
                      "Profession1",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                  ],
                  [
                    EsOrdinaryText(
                      "ID2",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsOrdinaryText(
                      "Name2",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsOrdinaryText(
                      "Profession2",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                  ],
                  [
                    EsOrdinaryText(
                      "ID3",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsOrdinaryText(
                      "Name3",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsOrdinaryText(
                      "Profession3",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                  ],
                  [
                    EsOrdinaryText(
                      "ID4",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsOrdinaryText(
                      "Name4",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsOrdinaryText(
                      "Profession4",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                  ],
                ],
                columnTitle: [
                  EsTitle(
                    "ID",
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  EsTitle(
                    "Name",
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  EsTitle(
                    "Profession",
                    color: StructureBuilder.styles!.primaryLightColor,
                  )
                ],
              )),
          title: AppLocalizations.of(context)!.simpletableindarkzebramode,
          information:
              "It is simple table in dark zebra mode located in: \n es_flutter_component/lib/components/es_table/es_simple_table.dart' \n and is used as: \n "
              """EsSimpleTable(
                headingColor: StructureBuilder.styles!.primaryDarkColor,
                zebraColor: StructureBuilder.styles!.primaryDarkColor,
                zebraMode: true,
                decoration: BoxDecoration(
                  color: StructureBuilder.styles!.secondaryColor,
                ),
                rowsContent: [
                  [
                    EsOrdinaryText(
                      "ID1",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsOrdinaryText(
                      "Name1",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsOrdinaryText(
                      "Profession1",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                  ],
                  [
                    EsOrdinaryText(
                      "ID2",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsOrdinaryText(
                      "Name2",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsOrdinaryText(
                      "Profession2",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                  ],
                  [
                    EsOrdinaryText(
                      "ID3",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsOrdinaryText(
                      "Name3",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsOrdinaryText(
                      "Profession3",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                  ],
                  [
                    EsOrdinaryText(
                      "ID4",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsOrdinaryText(
                      "Name4",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                    EsOrdinaryText(
                      "Profession4",
                      color: StructureBuilder.styles!.primaryLightColor,
                    ),
                  ],
                ],
                columnTitle: [
                  EsTitle("ID",color: StructureBuilder.styles!.primaryLightColor,),
                  EsTitle("Name",color: StructureBuilder.styles!.primaryLightColor,),
                  EsTitle("Profession",color: StructureBuilder.styles!.primaryLightColor,)
                ],
              )"""),
      ContainerItems(
          widget: Container(
              height: _height,
              alignment: Alignment.topCenter,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: StructureBuilder.styles!.primaryDarkColor),
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
                child: EsSimpleTable(
                  rowsContent: [
                    [
                      EsOrdinaryText("ID1"),
                      EsOrdinaryText("Name1"),
                      EsOrdinaryText("Profession1"),
                    ],
                    [
                      EsOrdinaryText("ID2"),
                      EsOrdinaryText("Name2"),
                      EsOrdinaryText("Profession2"),
                    ],
                    [
                      EsOrdinaryText("ID3"),
                      EsOrdinaryText("Name3"),
                      EsOrdinaryText("Profession3"),
                    ],
                  ],
                  columnTitle: [
                    EsTitle("ID"),
                    EsTitle("Name"),
                    EsTitle("Profession")
                  ],
                ),
              )),
          title: AppLocalizations.of(context)!.simpletablewithlineframe,
          information:
              "It is simple table with line frame located in: \n es_flutter_component/lib/components/es_table/es_simple_table.dart' \n and is used as: \n "
              """Container(
                decoration: BoxDecoration(
                    border:
                    Border.all(color: StructureBuilder.styles!.primaryDarkColor),
                    borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h0BorderRadius))

                ),
                child: EsSimpleTable(


                  rowsContent: [
                    [
                      EsOrdinaryText("ID1"),
                      EsOrdinaryText("Name1"),
                      EsOrdinaryText("Profession1"),
                    ],
                    [
                      EsOrdinaryText("ID2"),
                      EsOrdinaryText("Name2"),
                      EsOrdinaryText("Profession2"),
                    ],
                    [
                      EsOrdinaryText("ID3"),
                      EsOrdinaryText("Name3"),
                      EsOrdinaryText("Profession3"),
                    ],
                  ],
                  columnTitle: [
                    EsTitle("ID"),
                    EsTitle("Name"),
                    EsTitle("Profession")
                  ],
                ),
              )"""),
      ContainerItems(
          widget: Container(
              height: _height,
              alignment: Alignment.topCenter,
              child: EsSimpleTable(
                dividerThickness: 0.000001,
                rowsContent: [
                  [
                    EsOrdinaryText("ID1"),
                    EsOrdinaryText("Name1"),
                    EsOrdinaryText("Profession1"),
                  ],
                  [
                    EsOrdinaryText("ID2"),
                    EsOrdinaryText("Name2"),
                    EsOrdinaryText("Profession2"),
                  ],
                  [
                    EsOrdinaryText("ID3"),
                    EsOrdinaryText("Name3"),
                    EsOrdinaryText("Profession3"),
                  ],
                ],
                columnTitle: [
                  EsTitle("ID"),
                  EsTitle("Name"),
                  EsTitle("Profession")
                ],
              )),
          title: AppLocalizations.of(context)!.nolinetable,
          information:
              "It is noline table located in: \n es_flutter_component/lib/components/es_table/es_simple_table.dart' \n and is used as: \n "
              """EsSimpleTable(
                dividerThickness: 0.000001,
                rowsContent: [
                  [
                    EsOrdinaryText("ID1"),
                    EsOrdinaryText("Name1"),
                    EsOrdinaryText("Profession1"),
                  ],
                  [
                    EsOrdinaryText("ID2"),
                    EsOrdinaryText("Name2"),
                    EsOrdinaryText("Profession2"),
                  ],
                  [
                    EsOrdinaryText("ID3"),
                    EsOrdinaryText("Name3"),
                    EsOrdinaryText("Profession3"),
                  ],
                ],
                columnTitle: [
                  EsTitle("ID"),
                  EsTitle("Name"),
                  EsTitle("Profession")
                ],
              )"""),
    ];

    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.decorationColor().background,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.decorationColor().background,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.simpletabletitle,
                ),
                BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h0Padding,
                    ),
                    decoration: BoxDecoration(
                      color: StructureBuilder.styles!.primaryColor,
                    ),
                    children: List.generate(
                        list.length, (index) => boxShow(list[index])))
              ],
            ),
          ),
        ));
  }

  Widget boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
