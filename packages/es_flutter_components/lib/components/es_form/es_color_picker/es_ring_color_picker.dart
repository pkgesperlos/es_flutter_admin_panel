import 'package:es_flutter_components/components/es_button/es_button.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class EsRingColorPicker extends StatefulWidget {

  String? title;
  Widget? subTitleWidget;
  void Function(Color?)? onChange;

  EsRingColorPicker({
   this.title,
  this.subTitleWidget,
  this.onChange, });

  @override
  _EsRingColorPickerState createState() => _EsRingColorPickerState();
}

class _EsRingColorPickerState extends State<EsRingColorPicker> {

  Color _buttonColor=StructureBuilder.styles!.primaryDarkColor;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          EsButton(
            text: widget.title,
            fillColor: _buttonColor,
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    titlePadding: const EdgeInsets.all(0),
                    contentPadding: const EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: MediaQuery.of(context).orientation ==
                          Orientation.portrait
                          ? const BorderRadius.vertical(
                        top: Radius.circular(500),
                        bottom: Radius.circular(100),
                      )
                          : const BorderRadius.horizontal(
                          right: Radius.circular(500)),
                    ),
                    content: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          HueRingPicker(
                            pickerColor: StructureBuilder.styles!.primaryDarkColor,
                            onColorChanged: (value) {
                              setState(() {
                                _buttonColor = value;

                              });
                              widget.onChange!(value);
                            },
                            enableAlpha: true,
                            displayThumbColor: true,
                          ),
                          EsVSpacer(big: true,),
                          EsButton(text: "Confirm",
                            onTap: (){
                              Navigator.pop(context);
                            },
                          ),
                          EsVSpacer(big: true,),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
          EsVSpacer(),
          widget.subTitleWidget ??Container(),
        ],
      ),
    );
  }
}
