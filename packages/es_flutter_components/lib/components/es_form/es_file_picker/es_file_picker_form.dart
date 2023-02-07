
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';

import 'es_file_picker.dart';


class EsFilePickerForm extends FormField<String> {
  EsFilePickerForm(
      {required EsFilePickerController controller,
      required FormFieldSetter<String> onSaved,
      required FormFieldValidator<String> validator,
        String initialValue = "",
      })
      : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            builder: (FormFieldState<String> state) {
              return EsFilePicker(
                  controller: controller,

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
