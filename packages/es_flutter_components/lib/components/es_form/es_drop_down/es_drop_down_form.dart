import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import 'es_drop_down.dart';

class EsDropDownForm extends FormField<String> {
  EsDropDownForm(
      {
        String? initialTitle,
       required List list,
        String idName="_id",
        String valueName= "title",
       FormFieldSetter<String>? onSaved,
      required FormFieldValidator<String> validator,
        String initialValue ="",
      required String value ,
       ValueChanged<String>? onSelect,

        Widget? buttonWidget,
        Offset? menuOffset,
        BoxDecoration? dropdownDecoration,
        double? dropdownWidth,
        double? dropdownItemsHeight,
        EdgeInsetsGeometry? buttonPadding,

      })
      : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,

            builder: (FormFieldState<String> state) {
              return EsDropDown(
                buttonWidget: buttonWidget,
                menuOffset: menuOffset,
                dropdownDecoration: dropdownDecoration,
                dropdownWidth: dropdownWidth,
                dropdownItemsHeight: dropdownItemsHeight,
                initialTitle: initialTitle??"انتخاب کنید:",
                value: state.value??"",
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
                list: list,
              );
            });
}
