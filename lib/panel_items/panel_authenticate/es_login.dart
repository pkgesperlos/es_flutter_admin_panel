import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:es_flutter_admin_panel/panel_ui/app_bar/menu_drop_down_items.dart';
import 'package:es_flutter_component/components/es_button/es_block_button.dart';
import 'package:es_flutter_component/components/es_button/es_button.dart';
import 'package:es_flutter_component/components/es_form/es_checkbox/es_custom_check_box.dart';
import 'package:es_flutter_component/components/es_form/es_text_field/es_text_field_form.dart';
import 'package:es_flutter_component/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/components/es_text/es_header.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'package:es_flutter_admin_panel/panel_ui/structure_images/responsive_layout.dart';
import '../../language_change_provider.dart';
import 'es_lock_screen.dart';
import 'es_signin.dart';

class EsLogin extends StatefulWidget {

  static const routeName = '/esLogin';


  @override
  State<StatefulWidget> createState() {
    return _EsLogin();
  }
}

bool isChecked = true;

class _EsLogin extends State<EsLogin> {
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
        backgroundColor: StructureBuilder.styles!.decorationColor().background,
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
                        AppLocalizations.of(context)!.panelmanagement,
                        isBold: true,
                        color: StructureBuilder.styles!.t1Color,
                      ),
                      EsVSpacer(
                        big: true,
                        factor: 2,
                      ),
                      EsOrdinaryText(
                        AppLocalizations.of(context)!.fillfieldstocontinue,
                        color: StructureBuilder.styles!.secondaryColor,
                      ),
                      EsVSpacer(
                        big: true,
                        factor: 5,
                      ),
                      Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            EsTextFieldForm(
                              hint: "",
                              label:
                                  AppLocalizations.of(context)!.emailoruserName,
                              validator: (value) {
                                if (value!.length < 4) {
                                  return AppLocalizations.of(context)!
                                      .theinputlengthistooshort;
                                }
                              },
                            ),
                            EsVSpacer(
                              big: true,
                              factor: 2,
                            ),
                            EsTextFieldForm(
                              hint: "",
                              label: AppLocalizations.of(context)!.password,
                              validator: (value) {
                                if (value!.length < 4) {
                                  return AppLocalizations.of(context)!
                                      .theinputlengthistooshort;
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      EsVSpacer(
                        big: true,
                        factor: 2,
                      ),
                      EsBlockButton(
                        text: AppLocalizations.of(context)!.login,
                        onTap: () {
                          if (_formkey.currentState?.validate() == true) {
                            // {Navigator.pushNamed(context, '/tree');}
                          }
                        },
                      ),
                      EsVSpacer(
                        big: true,
                        factor: 2,
                      ),
                     (
                         MediaQuery.of(context).size.width<=300
                     )
                          ?Column(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: EsOrdinaryText(
                                AppLocalizations.of(context)!.forgetthepassword,
                                isBold: true,
                              )),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              EsOrdinaryText(
                                AppLocalizations.of(context)!.rememberme,
                              ),
                              EsHSpacer(),
                              EsCustomCheckBox(
                                  value: isChecked,
                                  onChanged: (value) {
                                    setState(() {
                                      isChecked = value;
                                    });
                                  }),
                            ],
                          ),
                        ],
                        // mainAxisSize: MainAxisSize.max,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      )
                          :Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: EsOrdinaryText(
                                AppLocalizations.of(context)!.forgetthepassword,
                                isBold: true,
                              )),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              EsOrdinaryText(
                                AppLocalizations.of(context)!.rememberme,
                              ),
                              EsHSpacer(),
                              EsCustomCheckBox(
                                  value: isChecked,
                                  onChanged: (value) {
                                    setState(() {
                                      isChecked = value;
                                    });
                                  }),
                            ],
                          ),
                        ],
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                      EsVSpacer(
                        big: true,
                        factor: 2,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: EsBlockButton(
                              text: AppLocalizations.of(context)!.withgoogle,
                              // icon: EsSvgIcon(
                              //   "packages/es_flutter_component/assets/svgs/google.svg",
                              //   size: StructureBuilder.dims!.h3IconSize,
                              //   color: StructureBuilder.styles!
                              //       .socialNetworkColor()
                              //       .google,
                              // ),
                              fillColor:
                                  StructureBuilder.styles!.primaryLightColor,
                              borderColor: StructureBuilder.styles!
                                  .socialNetworkColor()
                                  .google,
                              textColor: StructureBuilder.styles!
                                  .socialNetworkColor()
                                  .google,
                            ),
                          ),
                          EsHSpacer(),
                          Expanded(
                            child: EsBlockButton(
                              text: AppLocalizations.of(context)!.withfacebook,
                              // icon: EsSvgIcon(
                              //   "packages/es_flutter_component/assets/svgs/FacebookLogo.svg",
                              //   size: StructureBuilder.dims!.h3IconSize,
                              //   color: StructureBuilder.styles!
                              //       .socialNetworkColor()
                              //       .facebook,
                              // ),
                              fillColor:
                                  StructureBuilder.styles!.primaryLightColor,
                              borderColor: StructureBuilder.styles!
                                  .socialNetworkColor()
                                  .facebook,
                              textColor: StructureBuilder.styles!
                                  .socialNetworkColor()
                                  .facebook,
                            ),
                          ),
                        ],
                      ),
                      EsVSpacer(
                        big: true,
                        factor: 2,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          EsOrdinaryText(
                            AppLocalizations.of(context)!.donothaveanaccount,
                            isBold: true,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, EsSignin.routeName);

                            },
                            child: EsOrdinaryText(
                              AppLocalizations.of(context)!.create,
                              color: StructureBuilder.styles!.secondaryColor,
                            ),
                          )
                        ],
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
                        "assets/images/illustaration3.png",
                        width: StructureBuilder.dims!.h0Padding * 16,
                        height: StructureBuilder.dims!.h0Padding * 16,
                        fit: BoxFit.cover,
                      )
                    : SizedBox(
                        width: 0,
                        height: 0,
                      )),
                (ResponsiveLayot.isComputer(context)
                    ? Image.asset(
                        "assets/images/illustaration3.png",
                        width: StructureBuilder.dims!.h0Padding * 20,
                        height: StructureBuilder.dims!.h0Padding * 20,
                        fit: BoxFit.cover,
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
          // margin: EdgeInsets.symmetric(
          //   horizontal: StructureBuilder.dims!.h1Padding,
          // ),
          decoration: BoxDecoration(
              color: StructureBuilder.styles!.primaryDarkColor,
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
            color: StructureBuilder.styles!.primaryDarkColor,
            borderRadius: BorderRadius.all(
                Radius.circular(StructureBuilder.dims!.h1BorderRadius))),
        // dropdownElevation: 10,
        offset: Offset(StructureBuilder.dims!.h0Padding * 2, 0),
      ),
    );
  }

  Widget _boxShow(Widget widget) {
    return Container(
      width: StructureBuilder.dims!.h0Padding * 14,
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.symmetric(
        horizontal: StructureBuilder.dims!.h2Padding,
        vertical: StructureBuilder.dims!.h2Padding,
      ),
      margin: EdgeInsets.only(
        left: StructureBuilder.dims!.h2Padding,
        right: StructureBuilder.dims!.h2Padding,
      ),
      decoration:
          BoxDecoration(color: StructureBuilder.styles!.primaryLightColor),
      child: widget,
    );
  }
}
