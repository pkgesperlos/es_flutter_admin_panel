
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';

import 'es_persian_date_picker.dart';



class EsPersianDatePickerForm extends FormField<String> {
  EsPersianDatePickerForm(
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
              return EsPersianDatePicker(
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
