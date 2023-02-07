import 'package:es_flutter_components/components/es_button/es_button.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class EsColorPicker extends StatefulWidget {

  String? title;
  Widget? subTitleWidget;
  void Function(Color?)? onChange;

  EsColorPicker({
   this.title,
  this.subTitleWidget,
  this.onChange, });

  @override
  _EsColorPickerState createState() => _EsColorPickerState();
}

class _EsColorPickerState extends State<EsColorPicker> {

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
                    content: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ColorPicker(
                            pickerColor: StructureBuilder.styles!.primaryDarkColor,
                            onColorChanged: (value) {
                              setState(() {
                                _buttonColor = value;

                              });
                              widget.onChange!(value);
                            },
                            colorPickerWidth: 300,
                            pickerAreaHeightPercent: 0.7,
                            enableAlpha: true,
                            labelTypes: [
                              ColorLabelType.rgb,
                              ColorLabelType.hsl,
                              ColorLabelType.hsv,
                              ColorLabelType.hex,
                            ],
                            displayThumbColor: true,
                            paletteType: PaletteType.hsl,
                            pickerAreaBorderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(2),
                              topRight: Radius.circular(2),
                            ),
                            hexInputBar: true,
                            colorHistory: [Colors.white],
                            onHistoryChanged: (value) {},
                          ),
                          EsVSpacer(big: true,),
                          EsButton(text: "Confirm",
                          onTap: (){
                            Navigator.pop(context);
                          },
                          )
                          ,EsVSpacer(big: true,),
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
