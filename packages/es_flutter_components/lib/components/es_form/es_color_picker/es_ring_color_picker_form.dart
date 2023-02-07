
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import 'es_color_picker.dart';




class EsRingColorPickerForm extends FormField<Color> {
  EsRingColorPickerForm(
      {
      required String title,
      required FormFieldSetter<Color> onSaved,
      required FormFieldValidator<Color> validator,
        Color initialValue = Colors.indigo,
      })
      : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            builder: (FormFieldState<Color> state) {
              return EsColorPicker(
                title: title,
           onChange: state.didChange,
           subTitleWidget: state.hasError
                      ? Builder(
                          builder: (BuildContext context) => EsOrdinaryText(
                            state.errorText.toString(),
                              color: Theme.of(context).errorColor
                          ),
                        )
                      : null,
              );

            });



}
