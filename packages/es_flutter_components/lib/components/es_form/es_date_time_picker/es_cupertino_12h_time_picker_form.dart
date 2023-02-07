
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';

import 'es_cupertino_12h_time_picker.dart';




class EsCupertino12HTimePickerForm extends FormField<String> {
  EsCupertino12HTimePickerForm(
      {
      required String title,
      required FormFieldSetter<String> onSaved,
      required FormFieldValidator<String> validator,
        String initialValue = "",
      })
      : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            builder: (FormFieldState<String> state) {
              return EsCupertino12HTimePicker(
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
