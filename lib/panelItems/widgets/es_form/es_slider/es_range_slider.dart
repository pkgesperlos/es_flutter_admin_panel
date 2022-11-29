import 'package:es_flutter_admin_panel/panelItems/widgets/es_text/es_header.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsRangeSlider extends StatefulWidget {
  RangeValues? initialvalue;
  Widget? subTitleWidget;
  void Function(RangeValues)? onChanged;
  void Function(RangeValues?)? onChangeStart;
  void Function(RangeValues?)? onChangeEnd;
  double? max;
  double? min;
  int? divisions;
  Color? activeColor;
  Color? inActiveColor;

  EsRangeSlider({
    Key? key,
    this.initialvalue,
    this.subTitleWidget,
    this.onChanged,
    this.onChangeStart,
    this.onChangeEnd,
    this.max,
    this.min,
    this.divisions,
    this.activeColor,
    this.inActiveColor,
  }) : super(key: key);

  @override
  _EsRangeSliderState createState() => _EsRangeSliderState();
}

class _EsRangeSliderState extends State<EsRangeSlider> {
  double _startValue = 0.0;
  double _endValue = 100.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startValue = widget.min ?? 0.0;
    _endValue = widget.max ?? 100.0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RangeSlider(
          min: widget.min ?? 0.0,
          max: widget.max ?? 100.0,

          divisions: widget.divisions,
          values:widget.initialvalue?? RangeValues(_startValue, _endValue),
          onChangeStart: widget.onChangeStart,
          onChangeEnd: widget.onChangeEnd,
          activeColor:
              widget.activeColor ?? StructureBuilder.styles!.primaryColor,
          inactiveColor:
              widget.inActiveColor ?? StructureBuilder.styles!.t3Color,
          onChanged: (values) {
            setState(() {
              _startValue = values.start;
              _endValue = values.end;

            });
            widget.onChanged!(values);
          },
        ),
        widget.subTitleWidget??Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            EsOrdinaryText("Start Value:" + _startValue.round().toString()),
            EsOrdinaryText("End Value:" + _endValue.round().toString()),
          ],
        )
      ],
    );
  }
}
