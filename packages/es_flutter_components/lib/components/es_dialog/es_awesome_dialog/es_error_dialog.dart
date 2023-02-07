import 'package:es_flutter_components/components/es_button/es_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import '../../../resources/structure_builder.dart';




class EsErrorDialog extends StatefulWidget {
  String text;
  String title;
  String desc;
  Color? ColorAsset;
  Color? buttonFontColor;
  EsErrorDialog({
    required this.text,
    required this.title,
    required this.desc,
    this.ColorAsset,
    this.buttonFontColor});

  @override
  State<StatefulWidget> createState() {
    return _EsErrorDialog();
  }

}
class _EsErrorDialog extends State<EsErrorDialog>{
  @override
  Widget build(BuildContext context) {
    return Center(
        child: EsButton(
          text: widget.text,
          fillColor: widget.ColorAsset,
          textColor: widget.buttonFontColor ??StructureBuilder.styles!.textColor().primary,
          onTap: () {
            AwesomeDialog(
                context: context,
                dialogType: DialogType.ERROR,
                animType: AnimType.RIGHSLIDE,
                headerAnimationLoop: false,
                title: widget.title,
                desc: widget.desc,
                btnOkOnPress: () {},
                btnOkIcon: Icons.cancel,
                btnOkColor: Colors.red)
              ..show();



          },
        )

    );
  }

}
