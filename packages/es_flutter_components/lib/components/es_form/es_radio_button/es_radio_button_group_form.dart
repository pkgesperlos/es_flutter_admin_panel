import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import '../es_checkbox/es_custom_chechbox_group.dart';
import 'es_radio_button_group.dart';

class EsRadioButtonGroupForm extends FormField<TextEditingController> {
  EsRadioButtonGroupForm(
      {Widget? subTitleWidget,
        Axis? axis,
  bool? isScrollable,
      void Function(TextEditingController?)? onChanged,
      required List<String> titleList,
      required TextEditingController controller,
       FormFieldSetter<TextEditingController>? onSaved,
      required FormFieldValidator<TextEditingController> validator,
       ValueChanged<TextEditingController>? onSelect})
      : super(
            onSaved: onSaved,
            validator: validator,
            // initialValue: initialValue,
            builder: (FormFieldState<TextEditingController> state) {
              return EsRadioButtonGroup(
                titleList: titleList,
                axis: axis,
                isScrollable: isScrollable,
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
                controller: controller,
              );
            });
}
