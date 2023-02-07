import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';


class EsCheckBoxForm extends FormField<bool> {
  EsCheckBoxForm(
      {required Widget titleWidget,
      required FormFieldSetter<bool> onSaved,
      required FormFieldValidator<bool> validator,
      bool initialValue = false,
      })
      : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            builder: (FormFieldState<bool> state) {
              return CheckboxListTile(
                contentPadding: EdgeInsets.all(0),
                dense: state.hasError,
                title: titleWidget,
                value: state.value,
                onChanged: state.didChange,
                subtitle: state.hasError
                    ? Builder(
                        builder: (BuildContext context) => EsOrdinaryText(
                            state.errorText.toString(),
                            color: Theme.of(context).errorColor
                        ),
                      )
                    : null,
                controlAffinity: ListTileControlAffinity.leading,
              );
            });



}
