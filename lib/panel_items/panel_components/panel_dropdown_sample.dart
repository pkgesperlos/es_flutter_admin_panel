
import 'package:es_flutter_components/components/es_button/es_button.dart';
import 'package:es_flutter_components/components/es_drop_down/es_drop_down_button.dart';
import 'package:es_flutter_components/components/es_text/es_header.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_components/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//DropDown2 package is used
class PanelDropDownSample extends StatelessWidget {

  static const routeName = '/panelDropDownSample';

  PanelDropDownSample({Key? key}) : super(key: key);
  int num = 3;

  @override
  Widget build(BuildContext context) {


   List<Widget> _menuWidgetList=List.generate(
        num,
            (index) => EsOrdinaryText(
          "item$index",
          color: StructureBuilder.styles!.primaryLightColor,
        ));

    List list = [
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/down.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
              ),
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  borderColor: StructureBuilder.styles!.primaryDarkColor,
                  textColor: StructureBuilder.styles!.primaryDarkColor,
                  fillColor: StructureBuilder.styles!.primaryLightColor,
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/down.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryDarkColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
              ),
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  fillColor: StructureBuilder.styles!.secondaryColor,
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/down.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: List.generate(
                    num,
                    (index) => EsHeader(
                          "item$index",
                          color: StructureBuilder.styles!.primaryLightColor,
                        )),
                menufunctionList: List.generate(num, (index) => () {}),
              ),
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  fillColor: StructureBuilder.styles!.specificColor,
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/down.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
              ),
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  fillColor:
                      StructureBuilder.styles!.dangerColor().dangerRegular,
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/down.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.dropdownbuttonsindifferentcolors,
          information:
              "these are dropdown Buttons in different colors located in: \n es_flutter_component/lib/components/es_drop_down/es_drop_down_button.dart \n and is used as: \n "
              """EsDropdownButton(
                    num:num,
                    buttonWidget: EsButton(text: "Dropdown",
                      icon: EsSvgIcon('packages/es_flutter_component/assets/svgs/down.svg",
                        size: StructureBuilder.dims!.h3IconSize*0.7,
                        color:StructureBuilder.styles!.primaryLightColor,),
                      clickable: false,),
                    menuWidgetList: List.generate(num, (index) =>
                        EsHeader("item",color: StructureBuilder.styles!.primaryLightColor,)),
                    menufunctionList: List.generate(num, (index) => (){}),

                  ), \n this widget uses DropDown2 please add it in pubspec.yaml 's dependencies"""
                  "\n   where \n"
          """
          List<Widget> _menuWidgetList=List.generate(
        num,
            (index) => EsOrdinaryText(
          "item\$index",
          color: StructureBuilder.styles!.primaryLightColor,
        ));
          """
      ),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding * 3,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/down.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
                menuOffset: Offset(StructureBuilder.dims!.h0Padding, 0),
              ),
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/CaretRight.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: List.generate(
                    num,
                    (index) => EsHeader(
                          "item$index",
                          color: StructureBuilder.styles!.primaryLightColor,
                        )),
                menufunctionList: List.generate(num, (index) => () {}),
                menuOffset: Offset(StructureBuilder.dims!.h0Padding * 4,
                    StructureBuilder.dims!.h0Padding),
              ),
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/CaretLeft.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.8,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
                menuOffset: Offset(StructureBuilder.dims!.h0Padding * -4,
                    StructureBuilder.dims!.h0Padding),
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.dropdownbuttonsindifferentpositions,
          information:
              "these are dropdown Buttons in different positions located in: \n es_flutter_component/lib/components/es_drop_down/es_drop_down_button.dart \n and is used as: \n "
              """EsDropdownButton(
                num: num,
                buttonWidget: EsButton(

                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/CaretLeft.svg",
                    size: StructureBuilder.dims!.h3IconSize *0.8,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: List.generate(
                    num,
                    (index) => EsHeader(
                          "item",
                          color: StructureBuilder.styles!.primaryLightColor,
                        )),
                menufunctionList: List.generate(num, (index) => () {}),
                menuOffset: Offset(StructureBuilder.dims!.h0Padding*-4,
                    StructureBuilder.dims!.h0Padding),
              ), \n this widget uses DropDown2 please add it in pubspec.yaml 's dependencies"""
                  "\n   where \n"
                  """
          List<Widget> _menuWidgetList=List.generate(
        num,
            (index) => EsOrdinaryText(
          "item\$index",
          color: StructureBuilder.styles!.primaryLightColor,
        ));
          """
      ),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/infocircle.svg",
                    size: StructureBuilder.dims!.h3IconSize,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
              ),
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  borderColor: StructureBuilder.styles!.primaryDarkColor,
                  textColor: StructureBuilder.styles!.primaryDarkColor,
                  fillColor: StructureBuilder.styles!.primaryLightColor,
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/infocircle.svg",
                    size: StructureBuilder.dims!.h3IconSize,
                    color: StructureBuilder.styles!.primaryDarkColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
              ),
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  fillColor: StructureBuilder.styles!.secondaryColor,
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/infocircle.svg",
                    size: StructureBuilder.dims!.h3IconSize,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
              ),
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  fillColor: StructureBuilder.styles!.specificColor,
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/infocircle.svg",
                    size: StructureBuilder.dims!.h3IconSize,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
              ),
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  fillColor:
                      StructureBuilder.styles!.dangerColor().dangerRegular,
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/infocircle.svg",
                    size: StructureBuilder.dims!.h3IconSize,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.dropdownbuttonsincustomicons,
          information:
              "these are dropdown Buttons in custom icons located in: \n es_flutter_component/lib/components/es_drop_down/es_drop_down_button.dart \n and is used as: \n "
              """EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/infocircle.svg",
                    size: StructureBuilder.dims!.h3IconSize ,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: List.generate(
                    num,
                    (index) => EsHeader(
                          "item",
                          color: StructureBuilder.styles!.primaryLightColor,
                        )),
                menufunctionList: List.generate(num, (index) => () {}),
              ), \n this widget uses DropDown2 please add it in pubspec.yaml 's dependencies"""
                  "\n   where \n"
                  """
          List<Widget> _menuWidgetList=List.generate(
        num,
            (index) => EsOrdinaryText(
          "item\$index",
          color: StructureBuilder.styles!.primaryLightColor,
        ));
          """
      ),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/down.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
              ),
              EsDropdownButton(
                num: num,
                dropdownDecoration: BoxDecoration(
                    color: StructureBuilder.styles!.secondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/down.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
              ),
              EsDropdownButton(
                num: num,
                dropdownDecoration: BoxDecoration(
                  color: StructureBuilder.styles!.specificColor,
                  // borderRadius: BorderRadius.all(
                  //     Radius.circular(StructureBuilder.dims!.h1BorderRadius))
                ),
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/down.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
              ),
              EsDropdownButton(
                num: num,
                dropdownDecoration: BoxDecoration(
                    color: StructureBuilder.styles!
                        .informationColor()
                        .informationRegular,
                    borderRadius: BorderRadius.all(
                        Radius.circular(StructureBuilder.dims!.h1BorderRadius)),
                    border: Border.all(
                        color: StructureBuilder.styles!.t1Color, width: 1)),
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/down.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.dropdownbuttonsindifferentmenudecoration,
          information:
              "these are dropdown buttons in different menu decoration located in: \n es_flutter_component/lib/components/es_drop_down/es_drop_down_button.dart \n and is used as: \n "
              """EsDropdownButton(
                num: num,
                dropdownDecoration: BoxDecoration(
                    color: StructureBuilder.styles!.secondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/down.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: List.generate(
                    num,
                    (index) => EsHeader(
                          "item",
                          color: StructureBuilder.styles!.primaryLightColor,
                        )),
                menufunctionList: List.generate(num, (index) => () {}),
              ), \n this widget uses DropDown2 please add it in pubspec.yaml 's dependencies"""
                  "\n   where \n"
                  """
          List<Widget> _menuWidgetList=List.generate(
        num,
            (index) => EsOrdinaryText(
          "item\$index",
          color: StructureBuilder.styles!.primaryLightColor,
        ));
          """
      ),
      ContainerItems(
          widget: Container(
              child: Wrap(
                spacing: StructureBuilder.dims!.h0Padding,
                runSpacing: StructureBuilder.dims!.h0Padding,
                children: [
                  EsDropdownButton(
                    num: num,
                    buttonWidget: EsButton(
                      text: "Dropdown",
                      icon: EsSvgIcon("packages/es_flutter_components/assets/svgs/down.svg",
                        size: StructureBuilder.dims!.h3IconSize * 0.7,
                        color: StructureBuilder.styles!.primaryLightColor,
                      ),
                      size: StructureBuilder.dims!.h0FontSize,
                      clickable: false,
                    ),
                    menuWidgetList: _menuWidgetList,
                    menufunctionList: List.generate(num, (index) => () {}),
                  ),
                  EsDropdownButton(
                    num: num,
                    buttonWidget: EsButton(
                      text: "Dropdown",
                      icon: EsSvgIcon("packages/es_flutter_components/assets/svgs/down.svg",
                        size: StructureBuilder.dims!.h3IconSize * 0.7,
                        color: StructureBuilder.styles!.primaryLightColor,
                      ),
                      size: StructureBuilder.dims!.h1FontSize,
                      clickable: false,
                    ),
                    menuWidgetList: _menuWidgetList,
                    menufunctionList: List.generate(num, (index) => () {}),
                  ),
                  EsDropdownButton(
                    num: num,
                    buttonWidget: EsButton(
                      text: "Dropdown",
                      icon: EsSvgIcon("packages/es_flutter_components/assets/svgs/down.svg",
                        size: StructureBuilder.dims!.h3IconSize * 0.7,
                        color: StructureBuilder.styles!.primaryLightColor,
                      ),
                      size: StructureBuilder.dims!.h2FontSize,
                      clickable: false,
                    ),
                    menuWidgetList: _menuWidgetList,
                    menufunctionList: List.generate(num, (index) => () {}),
                  ),
                  EsDropdownButton(
                    num: num,
                    buttonWidget: EsButton(
                      text: "Dropdown",
                      icon: EsSvgIcon("packages/es_flutter_components/assets/svgs/down.svg",
                        size: StructureBuilder.dims!.h3IconSize * 0.7,
                        color: StructureBuilder.styles!.primaryLightColor,
                      ),
                      size: StructureBuilder.dims!.h4FontSize,
                      clickable: false,
                    ),
                    menuWidgetList: _menuWidgetList,
                    menufunctionList: List.generate(num, (index) => () {}),
                  ),

                ],
              )),
          title: AppLocalizations.of(context)!.dropdownbuttonsindifferentsizes,
          information:
          "these are dropdown Buttons in different sizes located in: \n es_flutter_component/lib/components/es_drop_down/es_drop_down_button.dart \n and is used as: \n "
              """EsDropdownButton(
                    num: num,
                    buttonWidget: EsButton(
                      text: "Dropdown",
                      icon: EsSvgIcon("packages/es_flutter_components/assets/svgs/down.svg",
                        size: StructureBuilder.dims!.h3IconSize * 0.7,
                        color: StructureBuilder.styles!.primaryLightColor,
                      ),
                      size: StructureBuilder.dims!.h1FontSize,
                      clickable: false,
                    ),
                    menuWidgetList: List.generate(
                        num,
                            (index) => EsHeader(
                          "item",
                          color: StructureBuilder.styles!.primaryLightColor,
                        )),
                    menufunctionList: List.generate(num, (index) => () {}),
                  ), \n this widget uses DropDown2 please add it in pubspec.yaml 's dependencies"""
              "\n   where \n"
              """
          List<Widget> _menuWidgetList=List.generate(
        num,
            (index) => EsOrdinaryText(
          "item\$index",
          color: StructureBuilder.styles!.primaryLightColor,
        ));
          """
      ),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            children: [
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/down.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
                dropdownWidth: StructureBuilder.dims!.h0Padding * 3,
              ),
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/down.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
                dropdownWidth: StructureBuilder.dims!.h0Padding * 5,
              ),
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/down.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
                dropdownWidth: StructureBuilder.dims!.h0Padding * 10,
              ),
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/down.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
                dropdownWidth: StructureBuilder.dims!.h0Padding * 10,
                dropdownItemsHeight: StructureBuilder.dims!.h0Padding * 1,
              ),
              EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_components/assets/svgs/down.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                  clickable: false,
                ),
                menuWidgetList: _menuWidgetList,
                menufunctionList: List.generate(num, (index) => () {}),
                dropdownWidth: StructureBuilder.dims!.h0Padding * 10,
                dropdownItemsHeight: StructureBuilder.dims!.h0Padding * 5,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.dropdownbuttonsindifferentmenusizes,
          information:
              "these are dropdown Buttons in different menu sizes located in: \n es_flutter_component/lib/components/es_drop_down/es_drop_down_button.dart \n and is used as: \n "
              """EsDropdownButton(
                    num:num,
                    buttonWidget: EsButton(text: "Dropdown",
                      icon: EsSvgIcon('packages/es_flutter_component/assets/svgs/down.svg",
                        size: StructureBuilder.dims!.h3IconSize*0.7,
                        color:StructureBuilder.styles!.primaryLightColor,),
                      clickable: false,),
                    menuWidgetList: List.generate(num, (index) =>
                        EsHeader("item",color: StructureBuilder.styles!.primaryLightColor,)),
                    menufunctionList: List.generate(num, (index) => (){}),

                  ), \n this widget uses DropDown2 please add it in pubspec.yaml 's dependencies"""
                  "\n   where \n"
                  """
          List<Widget> _menuWidgetList=List.generate(
        num,
            (index) => EsOrdinaryText(
          "item\$index",
          color: StructureBuilder.styles!.primaryLightColor,
        ));
          """
      ),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.decorationColor().background,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.decorationColor().background,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.dropdownbuttontitle,
                ),
                BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.symmetric(
                        horizontal: StructureBuilder.dims!.h0Padding),
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
        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
