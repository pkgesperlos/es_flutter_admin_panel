import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_checkbox/es_custom_checkbox_form.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_checkbox/es_custom_checkbox_group_form.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_drop_down/es_drop_down_form.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_radio_button/es_radio_button_group_form.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_form/es_checkbox.dart';
import 'package:es_flutter_component/es_form/es_text_field/es_text_field_form.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:validators/validators.dart';

class EsLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EsLogin();
  }
}

String _value3 = "1";
bool _value2 = false;

class _EsLogin extends State<EsLogin> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // print(AppLocalizations.of(context)?.localeName=='en');
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
            padding: EdgeInsets.only(top: 50, right: 15, left: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.black54,
                      )),
                  Form(
                    key: _formkey,
                    child: _boxShow(Column(
                      children: <Widget>[
                        EsTextFieldForm(
                          // type: AppLocalizations.of(context)!.username,
                          hint: AppLocalizations.of(context)!.usernamehint,
                          validator: (text) {
                            if (text.toString().length < 4) {
                              return "It is too short";
                            } else if (!isEmail(text!)) {
                              return "It is not Email";
                            }

                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        EsTextFieldForm(
                          // type: AppLocalizations.of(context)!.password,
                          hint: AppLocalizations.of(context)!.passwordhint,
                          validator: (text) {
                            if (text.toString().length < 4) {
                              return "It is too short";
                            }
                          },
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        EsCheckBox(
                          title: Text("با قوانین و مقررات سایت موافقم."),
                          validator: (value) {
                            if (!value!) {
                              return "It is neccessary!";
                            }
                          },
                          onSaved: (bool? newValue) {},
                        ),
                        EsCustomCheckBoxForm(
                          validator: (value) {
                            if (value == false) {
                              return "It is neccessary!";
                            }
                          },
                          onSaved: (bool? newValue) {},
                          onSelect: (bool value) {
                              // setState((){
                              //   _value2 = value;
                              //              });
                          },

                          titleWidget: EsOrdinaryText("با قوانین و مقررات سایت موافقم."),
                          value: _value2,
                        ),
                        IntrinsicWidth(
                          child: EsDropDownForm(
                            list: [
                              {"title": "item1", "_id": "1"},
                              {"title": "item2", "_id": "2"},
                              {"title": "item3", "_id": "3"},
                            ],
                            value: _value3,
                            // onChanged: (value){
                            //   setState((){
                            //     _value3=value;
                            //   });
                            // },
                            onSaved: (String? newValue) {},
                            validator: (String? value) {
                              if (value == "") {
                                return "It is neccessary";
                              }
                            },
                          ),
                        ),
                        EsCustomCheckBoxGroupForm(
                          titleList: List.generate(
                              9, (index) => "Item number${index + 1}"),
                          axis: Axis.vertical,
                          valueList: List.generate(9, (index) => false),
                          controller: TextEditingController(),
                          controllerList:List.generate(
                              9, (index) =>  TextEditingController(),),
                          validator: (List<TextEditingController>? value) {
                            if (true) {
                              return "It is neccessary!";
                            }
                          },
                          onSelect: (bool value) {  },
                          onSaved: (List<TextEditingController>? newValue) {  },
                        ),
                        EsRadioButtonGroupForm(
                          titleList: List.generate(
                              9, (index) => "Item number${index + 1}"),
                          axis: Axis.vertical,
                          controller: TextEditingController(),
                          validator: (TextEditingController? value) {
                            if (true) {
                              return "It is neccessary!";
                            }
                          }, onSelect: (TextEditingController value) {  },
                          onSaved: (TextEditingController? newValue) {  },

                        ),
                      ],
                    )),
                  ),
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(AppLocalizations.of(context)!.login),
                    // child: Text(Translations.of(context).text("login")),
                    onPressed: () {
                      if (_formkey.currentState?.validate() == true) {
                        print("okkkkkkkkkkkkkkkkkkkkkkkkkkk");
                      }
                      // {Navigator.pushNamed(context, '/tree');}
                    },
                  )
                ],
              ),
            )));
  }

  Widget _boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6',
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: StructureBuilder.dims!.h0Padding,
            vertical: StructureBuilder.dims!.h0Padding,
          ),
          margin: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular(StructureBuilder.dims!.h0Padding * 2)),
              color: StructureBuilder.styles!.primaryDarkColor),
          child: widget,
        ));
  }
}
