
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsSlider extends StatefulWidget {
  double? initialvalue;
  Widget? subTitleWidget;
  void Function(double?)? onChanged;
  void Function(double?)? onChangeStart;
  void Function(double?)? onChangeEnd;
  double? max;
  double? min;
  int? divisions;
  Color? activeColor;
  Color? thumbColor;
  bool? disabled;


  EsSlider({Key? key,
    this.initialvalue,
    this.subTitleWidget,
     this.onChanged,
     this.onChangeStart,
     this.onChangeEnd,
     this.max,
     this.min,
     this.divisions,
     this.activeColor,
     this.thumbColor,
     this.disabled,
  }) : super(key: key);

  @override
  _EsSliderState createState() => _EsSliderState();
}

class _EsSliderState extends State<EsSlider> {
  late double _value;

  @override
  void initState() {
     _value = widget.initialvalue??10;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoSlider(
            activeColor: widget.activeColor??StructureBuilder.styles!.primaryDarkColor,
            divisions:widget.divisions,
            thumbColor:widget.thumbColor?? StructureBuilder.styles!.primaryLightColor,
            max: widget.max??100,
            min: widget.min??0,
            value: _value,
            onChangeEnd: widget.onChangeEnd,
            onChangeStart: widget.onChangeStart,
            onChanged: (value) {
              setState(() {
                widget.disabled??false
                    ?null
                    :
                  _value = value;


              });
              widget.onChanged!(value);

            }),
        widget.subTitleWidget??EsTitle(_value.round().toString())
      ],
    );
  }
}
