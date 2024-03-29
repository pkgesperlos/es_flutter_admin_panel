import 'package:es_flutter_components/components/es_button/es_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import '../../../resources/structure_builder.dart';



class EsInfoDialog extends StatefulWidget {
  String text;
  String title;
  String desc;
  Color? ColorAsset;
  Color? buttonFontColor;
  EsInfoDialog({
    required this.text,
    required this.title,
    required this.desc,
    this.ColorAsset,
    this.buttonFontColor});

  @override
  State<StatefulWidget> createState() {
    return _EsInfoDialog();
  }

}
class _EsInfoDialog extends State<EsInfoDialog>{
  @override
  Widget build(BuildContext context) {
    return Center(
        child: EsButton(
          text: widget.text,
          fillColor: widget.ColorAsset,
          textColor: widget.buttonFontColor ?? StructureBuilder.styles!.textColor().primary,
          onTap: () {
            AwesomeDialog(
              context: context,
              animType: AnimType.SCALE,
              dialogType: DialogType.INFO,
              body: Center(
                child: Text(widget.text,
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              title: widget.title,
              desc: widget.desc,
            )..show();



          },
        )

    );
  }

}
