
import 'package:es_flutter_components/components/es_form/es_slider/es_slider.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

class EsSliderForm extends FormField<double> {
  EsSliderForm({
    double? initialvalue,
    void Function(double?)? onChangeStart,
    void Function(double?)? onChangeEnd,
    double? max,
    double? min,
    int? divisions,
    Color? activeColor,
    Color? thumbColor,
     FormFieldSetter<double>? onSaved,
    required FormFieldValidator<double> validator,
     ValueChanged<double>? onSelect,
  }) : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialvalue,
            builder: (FormFieldState<double> state) {
              return EsSlider(
                initialvalue: initialvalue,
                max: max,
                min: min,
                divisions: divisions,
                activeColor: activeColor,
                thumbColor: thumbColor,
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
