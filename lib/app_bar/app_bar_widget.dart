import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:es_flutter_component/es_form/es_text_field/es_search_text_field.dart';
import 'package:es_flutter_component/es_image/es_avatar_image.dart';
import 'package:es_flutter_admin_panel/language_change_provider.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../images/responsive_layout.dart';
import '../panelItems/widgets/menu_dropdown_items.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class AppBarWidget extends StatefulWidget {
  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  List<DropdownMenuItem<String>> items = [];
  late GlobalKey dropdownKey;
   late String selectedValue;

  @override
  void initState() {
    // TODO: implement initState
    selectedValue="EN";
    super.initState();
    dropdownKey = GlobalKey();

  }

  @override
  Widget build(BuildContext context) {
    items = [
      DropdownMenuItem(
        child: MenuDropdownItems(
          title: "FA",
          onTap: () {
            Navigator.pop(dropdownKey.currentContext!);
            context.read<LanguageChangeProvider>().changLocale("fa");
            setState((){
              selectedValue="FA";
            });
          },
        ),
        value: "FA",
      ),
      DropdownMenuItem(
        child: MenuDropdownItems(
          title: "En",
          onTap: () {
            Navigator.pop(dropdownKey.currentContext!);
            context.read<LanguageChangeProvider>().changLocale("en");
              setState((){
                selectedValue="EN";
                           });
          },
        ),
        value: "EN",
      ),
    ];
    return Container(
      decoration: BoxDecoration(
        //set the color of app bar.
        color: StructureBuilder.styles!.primaryDarkColor,
      ),
      child: Row(
        children: [
          ResponsiveLayot.isComputer(context)?
          Expanded(flex: 1, child:
          profileAppBarCard()):Container(),
          Expanded(flex: 5, child: mainAppBarCard()),
        ],
      ),

    );
  }

  Widget mainAppBarCard() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: StructureBuilder.dims!.h0Padding,
        horizontal: StructureBuilder.dims!.h0Padding*2,
      ),
      decoration: BoxDecoration(
          color: StructureBuilder.styles!.primaryLightColor,
          border: Border.all(color: StructureBuilder.styles!.primaryColor),
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h1BorderRadius))),
      child: Container(
        padding:
            EdgeInsets.symmetric(vertical: StructureBuilder.dims!.h1Padding * 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                EsHSpacer(
                  big: true,
                ),
                Container(
                  width: StructureBuilder.dims!.h0Padding * 10,
                  // padding:EdgeInsets.all(StructureBuilder.dims!.h1Padding),
                  child: EsSearchTextField(
                    borderRadius: BorderRadius.all(Radius.circular(
                        StructureBuilder.dims!.h0BorderRadius * 0.7)),
                    fillColor: StructureBuilder.styles!.primaryColor,
                    border: true,
                    borderColor: StructureBuilder.styles!.primaryColor,
                    hint: AppLocalizations.of(context)!.search,
                    hintStyle: TextStyle(
                        color: StructureBuilder.styles!.primaryLightColor,
                        fontSize: StructureBuilder.dims!.h3FontSize),
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                EsSvgIcon(
                  "assets/svgs/setting.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                ),
                EsHSpacer(
                  big: true,
                  factor: 2,
                ),
                EsSvgIcon(
                  "assets/svgs/message.svg",
                  size: StructureBuilder.dims!.h2IconSize*0.9,
                ),
                EsHSpacer(
                  big: true,
                  factor: 2,
                ),
                EsSvgIcon(
                  "assets/svgs/notification.svg",
                  size: StructureBuilder.dims!.h2IconSize,
                ),
                EsHSpacer(
                  big: true,
                  factor: 2,
                ),
                languageDropDownMenu(items)
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget profileAppBarCard() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: StructureBuilder.dims!.h0Padding,
        horizontal: StructureBuilder.dims!.h0Padding,
      ),
      padding: EdgeInsets.only(
        // vertical: StructureBuilder.dims!.h0Padding,
        right: StructureBuilder.dims!.h1Padding,
      ),
      decoration: BoxDecoration(
          color: StructureBuilder.styles!.primaryLightColor,
          border: Border.all(color: StructureBuilder.styles!.primaryColor),
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h1BorderRadius))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          EsHSpacer(),
          Container(
            child: EsAvatarImage(
              path: "assets/images/img1.jpg",
              radius: StructureBuilder.dims!.h0BorderRadius * 1.5,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(
                  StructureBuilder.dims!.h0BorderRadius * 1.5,
                )),
                boxShadow: [
                  BoxShadow(
                      color: StructureBuilder.styles!.primaryColor,
                      spreadRadius: StructureBuilder.dims!.h3Padding
                      // spreadRadius: 0.5
                      )
                ]),
          ),
          EsHSpacer(
            big: true,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: StructureBuilder.dims!.h1Padding,
            ),
            child: Column(
              children: [
                EsLabelText("سجاد آروین"),
                Icon(
                  Icons.edit,
                  size: StructureBuilder.dims!.h3IconSize,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget languageDropDownMenu(List<DropdownMenuItem<String>> items) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        key: dropdownKey,
        customButton: Container(
          padding: EdgeInsets.symmetric(
            vertical: StructureBuilder.dims!.h1Padding,
            horizontal: StructureBuilder.dims!.h1Padding,
          ),
          margin: EdgeInsets.symmetric(
            horizontal: StructureBuilder.dims!.h1Padding,
          ),
          decoration: BoxDecoration(
              color: StructureBuilder.styles!.primaryColor,
              borderRadius: BorderRadius.all(
                  Radius.circular(StructureBuilder.dims!.h1BorderRadius))),
          child: Row(
            children: [
              EsSvgIcon(
                "assets/svgs/down.svg",
                color: StructureBuilder.styles!.primaryLightColor,
                size: StructureBuilder.dims!.h3IconSize * 0.5,
              ),
              EsHSpacer(),
              EsOrdinaryText(
                selectedValue,
                color: StructureBuilder.styles!.primaryLightColor,
              ),
            ],
          ),
        ),
        // customItemsIndexes: const [3],
        // customItemsHeight: 8,
        items: items,
        value: selectedValue,
        onChanged: (value) {
          /*setState(() {
            // print(value.toString());
            // print("value.toString()");
            selectedValue = value.toString();
          });*/
        },
        itemHeight: StructureBuilder.dims!.h0Padding * 1.9,
        // buttonWidth: 300,
        barrierDismissible: true,
        // alignment: Alignment.centerRight,
        // itemPadding: const EdgeInsets.only(left: 16, right: 16),
        dropdownWidth: StructureBuilder.dims!.h0Padding * 4,
        dropdownPadding: EdgeInsets.symmetric(vertical: 6),
        dropdownDecoration: BoxDecoration(
            color: StructureBuilder.styles!.primaryColor,
            borderRadius: BorderRadius.all(
                Radius.circular(StructureBuilder.dims!.h1BorderRadius))),
        // dropdownElevation: 10,
        offset: Offset(StructureBuilder.dims!.h0Padding * 2, 0),
      ),
    );
  }

}
