
import 'package:flutter/material.dart';
import 'package:es_flutter_component/es_textfield.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class EsForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EsForm();
  }

}
class _EsForm extends State<EsForm>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 150,horizontal: 15),
            child: Column(
              children: <Widget>[
                EsTextField(type: AppLocalizations.of(context)!.username,
                hint: AppLocalizations.of(context)!.usernamehint,),
                SizedBox(height: 50,),
                EsTextField(type: AppLocalizations.of(context)!.password,
                  hint: AppLocalizations.of(context)!.passwordhint,),
                SizedBox(height: 50,),

                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text(AppLocalizations.of(context)!.login),
                  // child: Text(Translations.of(context).text("login")),
                  onPressed: (){},
                )
              ],
            )
        )
    );
  }
}
