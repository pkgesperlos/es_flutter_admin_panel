import 'package:es_flutter_component/constants.dart';
import 'package:es_flutter_component/es_form/es_animated_checkbox.dart';
import 'package:es_flutter_component/es_form/es_checkbox.dart';
import 'package:es_flutter_component/es_form/es_checkbox_vallidation.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker/es_android_time_picker.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker/es_cupertino_12h_time_picker.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker/es_cupertino_time_picker.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker/es_english_date_picker.dart';
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: EsDottedText(
                data: AppLocalizations.of(context)!.textField,
                size: 20,
                color: PanelConstants.itemColor,
              ),
            ),
            EsTextField(
              type: AppLocalizations.of(context)!.textFieldType,
              hint: AppLocalizations.of(context)!.textFieldHint,
            ),
          ],
        ),
      ),

      Center(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: EsDottedText(
              data: AppLocalizations.of(context)!.phoneNumbertextField,
              size: 20,
              color: PanelConstants.itemColor,
            ),
          ),
          EsPhoneNumberField(),
        ],
      )),
      Center(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: EsDottedText(
              data: AppLocalizations.of(context)!.shabaNumbertextField,
              size: 20,
              color: PanelConstants.itemColor,
            ),
          ),
          EsShabaNumberField(),
        ],
      )),
      Center(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: EsDottedText(
              data: AppLocalizations.of(context)!.priceTextField,
              size: 20,
              color: PanelConstants.itemColor,
            ),
          ),
          EsPriceField(),
        ],
      )),

      Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: EsDottedText(
                  data: AppLocalizations.of(context)!.datePickerfa,
                  size: 20,
                  color: PanelConstants.itemColor,
                ),
              ),
              EsPersianDatePicker(
        title: AppLocalizations.of(context)!.datePickerTitle,
      ),
            ],
          )),
      Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: EsDottedText(
                  data: AppLocalizations.of(context)!.datePickeren,
                  size: 20,
                  color: PanelConstants.itemColor,
                ),
              ),
              EsEnglishDatePicker(
        title: AppLocalizations.of(context)!.datePickerTitle,
      ),
            ],
          )),
      Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: EsDottedText(
                  data: AppLocalizations.of(context)!.timePickerHM,
                  size: 20,
                  color: PanelConstants.itemColor,
                ),
              ),
              EsAndroidTimePicker(
        title: AppLocalizations.of(context)!.androidTimePickerTitle,
      ),
            ],
          )),
      Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: EsDottedText(
                  data: AppLocalizations.of(context)!.timePickerHMS,
                  size: 20,
                  color: PanelConstants.itemColor,
                ),
              ),
              EsCupertinoTimePicker(
        title: AppLocalizations.of(context)!.cupertinoTimePickerTitle,
      ),
            ],
          )),
      // Center(
      //     child: EsCupertino12HTimePicker(
      //       title:AppLocalizations.of(context)!.time12hPickerTitle ,
      //     )),

      Center(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: EsDottedText(
              data: AppLocalizations.of(context)!.ordinarySlider,
              size: 20,
              color: PanelConstants.itemColor,
            ),
          ),
          EsOrdinarySlider(),
        ],
      )),
      Center(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: EsDottedText(
              data: AppLocalizations.of(context)!.rangedSlider,
              size: 20,
              color: PanelConstants.itemColor,
            ),
          ),
          EsRengedSlider(),
        ],
      )),
      Center(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: EsDottedText(
              data: AppLocalizations.of(context)!.radioButons,
              size: 20,
              color: PanelConstants.itemColor,
            ),
          ),
          EsRadioButton(),
        ],
      )),
      Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: EsDottedText(
                  data: AppLocalizations.of(context)!.textArea,
                  size: 20,
                  color: PanelConstants.itemColor,
                ),
              ),
              EsTextArea(
        type: AppLocalizations.of(context)!.textAreaType,
        hint: AppLocalizations.of(context)!.textAreaHint,
      ),
            ],
          )),
      Center(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: EsDottedText(
              data: AppLocalizations.of(context)!.starRateBar,
              size: 20,
              color: PanelConstants.itemColor,
            ),
          ),
          EsRatingBar(),
        ],
      )),
      Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: EsDottedText(
                  data: AppLocalizations.of(context)!.ordinaryCheckBox,
                  size: 20,
                  color: PanelConstants.itemColor,
                ),
              ),
              IntrinsicWidth(
        child: EsCheckBox(
              title: EsOrdinaryText(
                data: AppLocalizations.of(context)!.checkBoxTitle,
              ),
              onSaved: (bool) {},
              validator: (bool) {},
        ),
      ),
            ],
          )),
      Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: EsDottedText(
                  data: AppLocalizations.of(context)!.validationCheckBox,
                  size: 20,
                  color: PanelConstants.itemColor,
                ),
              ),
              IntrinsicWidth(
        child: EsCheckBoxvalidation(
              title: AppLocalizations.of(context)!.checkBoxWithValidator,
              errorText: AppLocalizations.of(context)!.checkBoxErrorText,
              buttonText: AppLocalizations.of(context)!.checkBoxButtonText,
        ),
      ),
            ],
          )),
      Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: EsDottedText(
                  data: AppLocalizations.of(context)!.animationCheckBox,
                  size: 20,
                  color: PanelConstants.itemColor,
                ),
              ),
              IntrinsicWidth(
        child: EsAnimatedCheckBox(
                title: AppLocalizations.of(context)!.animatedCheckBoxTitle),
      ),
            ],
          )),
      Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: EsDottedText(
                  data: AppLocalizations.of(context)!.dropDownButton,
                  size: 20,
                  color: PanelConstants.itemColor,
                ),
              ),
              EsDropDownButton(
        items: [
              AppLocalizations.of(context)!.dropDownButtonItemfirst,
              AppLocalizations.of(context)!.dropDownButtonItemsecond,
              AppLocalizations.of(context)!.dropDownButtonItemthird,
        ],
        onTapItems: [() {}, () {}, () {}],
      ),
            ],
          )),
      Center(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: EsDottedText(
              data: AppLocalizations.of(context)!.toggleButton,
              size: 20,
              color: PanelConstants.itemColor,
            ),
          ),
          ESToggleButton(),
        ],
      ),),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: EsDottedText(
              data: AppLocalizations.of(context)!.filePicker,
              size: 20,
              color: PanelConstants.itemColor,
            ),
          ),
          Center(
              child: EsFilePicker(
            openText: AppLocalizations.of(context)!.openText,
            pickText: AppLocalizations.of(context)!.pickText,
            clearText: AppLocalizations.of(context)!.clearText,
          )),
        ],
      ),
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
                child: EsOrdinaryText(data:AppLocalizations.of(context)!.formDescription,),
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
