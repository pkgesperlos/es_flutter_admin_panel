import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_checkbox/es_custom_check_box.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_drop_down/es_label_input.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import 'es_drop_down.dart';

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
