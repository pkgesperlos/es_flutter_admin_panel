
import 'package:es_flutter_components/components/es_form/es_slider/es_range_slider.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

class EsDropDownForm extends FormField<RangeValues> {
  EsDropDownForm({
    RangeValues? initialvalue,
    void Function(RangeValues?)? onChangeStart,
    void Function(RangeValues?)? onChangeEnd,
    double? max,
    double? min,
    int? divisions,
    Color? activeColor,
    Color? inActiveColor,
     FormFieldSetter<RangeValues>? onSaved,
    required FormFieldValidator<RangeValues> validator,
     ValueChanged<RangeValues>? onSelect,
  }) : super(
            onSaved: onSaved,
            validator: validator,
            builder: (FormFieldState<RangeValues> state) {
              return EsRangeSlider(
                initialvalue: initialvalue,
                max: max,
                min: min,
                divisions: divisions,
                activeColor: activeColor,
                inActiveColor: inActiveColor,
                onChanged: state.didChange,
                onChangeEnd: onChangeEnd,
                onChangeStart: onChangeStart,
                subTitleWidget: state.hasError
                    ? Builder(
                        builder: (BuildContext context) => EsOrdinaryText(
                            state.errorText.toString(),
                            color: StructureBuilder.styles!
                                .dangerColor()
                                .dangerRegular),
                      )
                    : null,
              );
            });
}
