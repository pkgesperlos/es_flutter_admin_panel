import 'package:es_flutter_admin_panel/panelItems/widgets/es_form/es_checkbox/es_custom_check_box.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import 'es_custom_chechbox_group.dart';

class EsCustomCheckBoxGroupForm extends FormField<List<TextEditingController>> {
  EsCustomCheckBoxGroupForm(
      {required List<String> titleList,
      Axis? axis,
        bool? isScrollable,
      required List<bool> valueList,
      TextEditingController? controller,
      required List<TextEditingController> controllerList,
      FormFieldSetter<List<TextEditingController>>? onSaved,
      required FormFieldValidator<List<TextEditingController>> validator,
      ValueChanged<bool>? onSelect})
      : super(
            onSaved: onSaved,
            validator: validator,
            // initialValue: initialValue,
            builder: (FormFieldState<List<TextEditingController>> state) {
              return EsCustomCheckboxGroup(
                isScrollable: isScrollable,
                titleList: titleList,
                valueList: valueList,
                axis: axis,
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
                controllerList: controllerList,
              );
            });
}
