import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:es_flutter_admin_panel/panel_ui/app_bar/menu_drop_down_items.dart';
import 'package:es_flutter_component/components/es_button/es_block_button.dart';
import 'package:es_flutter_component/components/es_form/es_text_field/es_text_field_form.dart';
import 'package:es_flutter_component/components/es_image/es_avatar_image.dart';
import 'package:es_flutter_component/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/components/es_text/es_header.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'package:es_flutter_admin_panel/panel_ui/images/responsive_layout.dart';
import '../../language_change_provider.dart';


class EsLockScreen extends StatefulWidget {

  static const routeName = '/lockScreen';
  @override
  State<StatefulWidget> createState() {
    return _EsLockScreen();
  }
}

bool isChecked = true;

class _EsLockScreen extends State<EsLockScreen> {
  List<DropdownMenuItem<String>> items = [];
  late GlobalKey dropdownKey;
  late String selectedValue;

  final _formkey = GlobalKey<FormState>();



  @override
  void initState() {
    // TODO: implement initState
    selectedValue = "EN";
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
            setState(() {
              selectedValue = "FA";
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
            setState(() {
              selectedValue = "EN";
            });
          },
        ),
        value: "EN",
      ),
    ];

    return Scaffold(
        backgroundColor: StructureBuilder.styles!.primaryLightColor,
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: StructureBuilder.dims!.h0Padding,
                right: StructureBuilder.dims!.h0Padding,
                top: StructureBuilder.dims!.h0Padding,
              ),
              child: Wrap(children: [
                _boxShow(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.close,
                                color: Colors.black54,
                              )),
                          languageDropDownMenu(items)
                        ],
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                      EsVSpacer(
                        big: true,
                        factor: 5,
                      ),
                      EsHeader(
                        AppLocalizations.of(context)!.youraccessneedsunlocking,
                        isBold: true,
                        color: StructureBuilder.styles!.t1Color,
                      ),
                      EsVSpacer(
                        big: true,
                        factor: 5,
                      ),
                      Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                EsAvatarImage(
                                  path: "assets/images/img4.jpg",
                                ),
                                EsHSpacer(),
                                EsTextFieldForm(
                                  hint: "",
                                  label: AppLocalizations.of(context)!.password,
                                  textFieldSize: Size(
                                      StructureBuilder.dims!.h0Padding * 11,
                                      StructureBuilder.dims!.h0Padding * 2),
                                  validator: (value) {
                                    if (value!.length < 4) {
                                      return AppLocalizations.of(context)!
                                          .theinputlengthistooshort;
                                    }
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      EsVSpacer(
                        big: true,
                        factor: 2,
                      ),
                      EsBlockButton(
                        text: AppLocalizations.of(context)!.unlocking,
                        onTap: () {
                          if (_formkey.currentState?.validate() == true) {
                            {
                              Navigator.pushNamed(context, '/tree');
                            }
                          }
                        },
                      ),
                      EsVSpacer(
                        big: true,
                        factor: 2,
                      ),
                    ],
                  ),
                ),
                EsHSpacer(
                  big: true,
                  factor: ResponsiveLayot.isLargeTablet(context) ? 1 : 15,
                ),
                (ResponsiveLayot.isLargeTablet(context)
                    ? Image.asset(
                        "assets/images/signin.png",
                        width: StructureBuilder.dims!.h0Padding * 16,
                        height: StructureBuilder.dims!.h0Padding * 16,
                        fit: BoxFit.contain,
                      )
                    : SizedBox(
                        width: 0,
                        height: 0,
                      )),
                (ResponsiveLayot.isComputer(context)
                    ? Image.asset(
                        "assets/images/signin.png",
                        width: StructureBuilder.dims!.h0Padding * 20,
                        height: StructureBuilder.dims!.h0Padding * 20,
                        fit: BoxFit.contain,
                      )
                    : SizedBox(
                        width: 0,
                        height: 0,
                      )),
              ]),
            ),
          ),
        ));
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
          decoration: BoxDecoration(
              color: StructureBuilder.styles!.primaryColor,
              borderRadius: BorderRadius.all(
                  Radius.circular(StructureBuilder.dims!.h1BorderRadius))),
          child: Row(
            children: [
              EsSvgIcon(
                "packages/es_flutter_component/assets/svgs/down.svg",
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

  Widget _boxShow(Widget widget) {
    return Container(
      width: StructureBuilder.dims!.h0Padding * 16,
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.symmetric(
        horizontal: StructureBuilder.dims!.h0Padding,
        vertical: StructureBuilder.dims!.h0Padding,
      ),
      margin: EdgeInsets.only(
        left: StructureBuilder.dims!.h0Padding,
        right: StructureBuilder.dims!.h0Padding,
      ),
      decoration:
          BoxDecoration(color: StructureBuilder.styles!.primaryLightColor),
      child: widget,
    );
  }
}
