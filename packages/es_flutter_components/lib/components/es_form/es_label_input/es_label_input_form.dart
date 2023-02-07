
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import 'es_label_input.dart';


class EsLabelInputForm extends FormField<List<String>> {
  EsLabelInputForm(
      {




        String? initialTitle,
        required List labelList,
        FormFieldSetter<List<String>>? onSaved,
        required FormFieldValidator<List<String>> validator,
        // String initialValue =[],
        required String value ,
        ValueChanged<List<String>>? onSelect,


      })
      : super(
      onSaved: onSaved,
      validator: validator,
      // initialValue: initialValue,

      builder: (FormFieldState<List<String>> state) {
        return EsLabelInput(

          // value: state.value??value,
          onChanged: state.didChange,
          subTitleWidget: state.hasError
              ? Builder(
            builder: (BuildContext context) => EsOrdinaryText(
                state.errorText.toString(),
                color: StructureBuilder.styles!.dangerColor().dangerRegular
            ),
          )
              : null,
          labelList: labelList,
        );
      });
}
