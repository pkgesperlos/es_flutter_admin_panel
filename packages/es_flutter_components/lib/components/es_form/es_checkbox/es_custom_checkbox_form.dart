import 'package:es_flutter_components/components/es_form/es_checkbox/es_custom_check_box.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

class EsCustomCheckBoxForm extends FormField<bool> {
  EsCustomCheckBoxForm(
      {
        Widget? nonSelectedIcon,
      Widget? selectedIcon,
      bool? disabled,
      required Widget titleWidget,
       FormFieldSetter<bool>? onSaved,
        required FormFieldValidator<bool> validator,
      bool initialValue = false,
      required bool value,
       ValueChanged<bool>? onSelect})
      : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            builder: (FormFieldState<bool> state) {
              return EsCustomCheckBox(
                selectedIcon: selectedIcon,
                nonSelectedIcon: nonSelectedIcon,
                disabled: disabled,
                titleWidget: titleWidget,
                value: value,
                // value: state.value??value,
                onChanged: state.didChange,
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
