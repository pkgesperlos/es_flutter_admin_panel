import 'package:es_flutter_admin_panel/panelItems/widgets/container_items.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_button/es_button.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_drop_down/es_drop_down_button.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_text/es_header.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/page_title_container.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//DropDown2 package is used
class PanelDropDownSample extends StatelessWidget {
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
                    "packages/es_flutter_component/assets/svgs/down.svg",
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
                  borderColor: StructureBuilder.styles!.primaryColor,
                  textColor: StructureBuilder.styles!.primaryColor,
                  fillColor: StructureBuilder.styles!.primaryLightColor,
                  icon: EsSvgIcon(
                    "packages/es_flutter_component/assets/svgs/down.svg",
                    size: StructureBuilder.dims!.h3IconSize * 0.7,
                    color: StructureBuilder.styles!.primaryColor,
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
                    "packages/es_flutter_component/assets/svgs/down.svg",
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
                  fillColor: StructureBuilder.styles!.tritiaryColor,
                  icon: EsSvgIcon(
                    "packages/es_flutter_component/assets/svgs/down.svg",
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
                    "packages/es_flutter_component/assets/svgs/down.svg",
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
              "They are dropdown Buttons in different colors located in: \n es_flutter_component>lib>es_drop_down/es_drop_down_button.dart \n and is used as: \n "
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

                  ), \n this widget uses DropDown2 please add it in pubspec.yaml 's dependencies"""),
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
                    "packages/es_flutter_component/assets/svgs/down.svg",
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
                    "packages/es_flutter_component/assets/svgs/CaretRight.svg",
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
                    "packages/es_flutter_component/assets/svgs/CaretLeft.svg",
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
              "They are dropdown Buttons in different positions located in: \n es_flutter_component>lib>es_drop_down/es_drop_down_button.dart \n and is used as: \n "
              """EsDropdownButton(
                num: num,
                buttonWidget: EsButton(

                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_component/assets/svgs/CaretLeft.svg",
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
              ), \n this widget uses DropDown2 please add it in pubspec.yaml 's dependencies"""),
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
                    "packages/es_flutter_component/assets/svgs/infocircle.svg",
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
                  borderColor: StructureBuilder.styles!.primaryColor,
                  textColor: StructureBuilder.styles!.primaryColor,
                  fillColor: StructureBuilder.styles!.primaryLightColor,
                  icon: EsSvgIcon(
                    "packages/es_flutter_component/assets/svgs/infocircle.svg",
                    size: StructureBuilder.dims!.h3IconSize,
                    color: StructureBuilder.styles!.primaryColor,
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
                    "packages/es_flutter_component/assets/svgs/infocircle.svg",
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
                  fillColor: StructureBuilder.styles!.tritiaryColor,
                  icon: EsSvgIcon(
                    "packages/es_flutter_component/assets/svgs/infocircle.svg",
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
                    "packages/es_flutter_component/assets/svgs/infocircle.svg",
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
              "They are dropdown Buttons in custom icons located in: \n es_flutter_component>lib>es_drop_down/es_drop_down_button.dart \n and is used as: \n "
              """EsDropdownButton(
                num: num,
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_component/assets/svgs/infocircle.svg",
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
              ), \n this widget uses DropDown2 please add it in pubspec.yaml 's dependencies"""),
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
                    "packages/es_flutter_component/assets/svgs/down.svg",
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
                    "packages/es_flutter_component/assets/svgs/down.svg",
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
                  color: StructureBuilder.styles!.tritiaryColor,
                  // borderRadius: BorderRadius.all(
                  //     Radius.circular(StructureBuilder.dims!.h1BorderRadius))
                ),
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_component/assets/svgs/down.svg",
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
                    "packages/es_flutter_component/assets/svgs/down.svg",
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
              "They are dropdown buttons in different menu decoration located in: \n es_flutter_component>lib>es_drop_down/es_drop_down_button.dart \n and is used as: \n "
              """EsDropdownButton(
                num: num,
                dropdownDecoration: BoxDecoration(
                    color: StructureBuilder.styles!.secondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius))),
                buttonWidget: EsButton(
                  text: "Dropdown",
                  icon: EsSvgIcon(
                    "packages/es_flutter_component/assets/svgs/down.svg",
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
              ), \n this widget uses DropDown2 please add it in pubspec.yaml 's dependencies"""),

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
                      icon: EsSvgIcon("packages/es_flutter_component/assets/svgs/down.svg",
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
                      icon: EsSvgIcon("packages/es_flutter_component/assets/svgs/down.svg",
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
                      icon: EsSvgIcon("packages/es_flutter_component/assets/svgs/down.svg",
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
                      icon: EsSvgIcon("packages/es_flutter_component/assets/svgs/down.svg",
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
          "They are dropdown Buttons in different sizes located in: \n es_flutter_component>lib>es_drop_down/es_drop_down_button.dart \n and is used as: \n "
              """EsDropdownButton(
                    num: num,
                    buttonWidget: EsButton(
                      text: "Dropdown",
                      icon: EsSvgIcon("packages/es_flutter_component/assets/svgs/down.svg",
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
                  ), \n this widget uses DropDown2 please add it in pubspec.yaml 's dependencies"""),
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
                    "packages/es_flutter_component/assets/svgs/down.svg",
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
                    "packages/es_flutter_component/assets/svgs/down.svg",
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
                    "packages/es_flutter_component/assets/svgs/down.svg",
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
                    "packages/es_flutter_component/assets/svgs/down.svg",
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
                    "packages/es_flutter_component/assets/svgs/down.svg",
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
              "They are dropdown Buttons in different menu sizes located in: \n es_flutter_component>lib>es_drop_down/es_drop_down_button.dart \n and is used as: \n "
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

                  ), \n this widget uses DropDown2 please add it in pubspec.yaml 's dependencies"""),
    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
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
                    color: StructureBuilder.styles!.primaryDarkColor,
                  ),
                  children: List.generate(
                      list.length, (index) => boxShow(list[index])))
            ],
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
