import 'package:es_flutter_component/constants.dart';
import 'package:es_flutter_component/es_form/es_animated_checkbox.dart';
import 'package:es_flutter_component/es_form/es_checkbox.dart';
import 'package:es_flutter_component/es_form/es_checkbox_vallidation.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker/es_android_time_picker.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker/es_cupertino_12h_time_picker.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker/es_cupertino_time_picker.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker/es_persian_date_picker.dart';
import 'package:es_flutter_component/es_form/es_drop_down_button.dart';
import 'package:es_flutter_component/es_form/es_file_picker.dart';
import 'package:es_flutter_component/es_form/es_ordinary_slider.dart';
import 'package:es_flutter_component/es_form/es_phone_number_field.dart';
import 'package:es_flutter_component/es_form/es_price_field.dart';
import 'package:es_flutter_component/es_form/es_radio_button.dart';
import 'package:es_flutter_component/es_form/es_ranged_slider.dart';
import 'package:es_flutter_component/es_form/es_rating_bar.dart';
import 'package:es_flutter_component/es_form/es_shaba_number_field.dart';
import 'package:es_flutter_component/es_form/es_text_area.dart';
import 'package:es_flutter_component/es_form/es_text_field.dart';
import 'package:es_flutter_component/es_form/es_toggle_button.dart';
import 'package:es_flutter_component/es_text/es_dotted_text.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/es_text/es_marked_text.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_crm/images/panelConstants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../images/panelConstants.dart';

class PanelForm extends StatelessWidget {
  const PanelForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String _data = AppLocalizations.of(context)!.samplButton;
    List list = [
      Center(
        child: EsTextField(
          type: AppLocalizations.of(context)!.textFieldType,
          hint: AppLocalizations.of(context)!.textFieldHint,
        ),
      ),

      Center(child: EsPhoneNumberField()),
      Center(child: EsShabaNumberField()),
      Center(child: EsPriceField()),

      Center(
          child: EsPersianDatePicker(
        title: AppLocalizations.of(context)!.persianDatePickerTitle,
      )),
      Center(
          child: EsAndroidTimePicker(
        title: AppLocalizations.of(context)!.androidTimePickerTitle,
      )),
      Center(
          child: EsCupertinoTimePicker(
        title: AppLocalizations.of(context)!.cupertinoTimePickerTitle,
      )),
      // Center(
      //     child: EsCupertino12HTimePicker(
      //       title:AppLocalizations.of(context)!.time12hPickerTitle ,
      //     )),

      Center(child: EsOrdinarySlider()),
      Center(child: EsRengedSlider()),
      Center(child: EsRadioButton()),
      Center(
          child: EsTextArea(
        type: AppLocalizations.of(context)!.textAreaType,
        hint: AppLocalizations.of(context)!.textAreaHint,
      )),
      Center(child: EsRatingBar()),
      Center(
          child: IntrinsicWidth(
        child: EsCheckBox(
          title: EsOrdinaryText(
            data: AppLocalizations.of(context)!.checkBoxTitle,
          ),
          onSaved: (bool) {},
          validator: (bool) {},
        ),
      )),
      Center(
          child: IntrinsicWidth(
        child: EsCheckBoxvalidation(
          title: AppLocalizations.of(context)!.checkBoxWithValidator,
          errorText: AppLocalizations.of(context)!.checkBoxErrorText,
          buttonText: AppLocalizations.of(context)!.checkBoxButtonText,
        ),
      )),
      Center(
          child: IntrinsicWidth(
        child: EsAnimatedCheckBox(
            title: AppLocalizations.of(context)!.animatedCheckBoxTitle),
      )),
      Center(
          child: EsDropDownButton(
        items: [
          AppLocalizations.of(context)!.dropDownButtonItem1,
          AppLocalizations.of(context)!.dropDownButtonItem2,
          AppLocalizations.of(context)!.dropDownButtonItem3,
        ],
        onTapItems: [() {}, () {}, () {}],
      )),
      Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          EsOrdinaryText(data: AppLocalizations.of(context)!.toggleButton),
          ESToggleButton(),
        ],
      )),
      Center(
          child: EsFilePicker(
        openText: AppLocalizations.of(context)!.openText,
        pickText: AppLocalizations.of(context)!.pickText,
        clearText: AppLocalizations.of(context)!.clearText,
      )),
    ];
    return Material(
        color: PanelConstants.backGround,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical:PanelConstants.paddingDimension),
                margin: EdgeInsets.all(PanelConstants.paddingDimension * 2),

                width: double.maxFinite,
                ////////////////////////
                child: EsOrdinaryText(data: "Hello World:)",),
                decoration: BoxDecoration(
                    color: PanelConstants.forGround,
                    borderRadius: BorderRadius.all(
                        Radius.circular(Constants.paddingDimension))),
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.all(PanelConstants.paddingDimension),
                  decoration: BoxDecoration(
                    color: PanelConstants.backGround,
                  ),
                  children: List.generate(
                      list.length, (index) => boxShow(list[index])))
            ],
          ),
        ));
  }

  Widget boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6',
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: PanelConstants.paddingDimension,
            vertical: PanelConstants.paddingDimension * 5,
          ),
          margin: EdgeInsets.all(PanelConstants.paddingDimension),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: PanelConstants.forGround),
          child: widget,
        ));
  }
}
