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
import 'package:es_flutter_component/es_image/es_avatar_image.dart';
import 'package:es_flutter_component/es_image/es_responsive_image.dart';
import 'package:es_flutter_component/es_image/es_zooming_image.dart';
import 'package:es_flutter_component/es_table/es_editable_table.dart';
import 'package:es_flutter_component/es_table/es_simple_table.dart';
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

class PanelTable extends StatelessWidget {
  const PanelTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String _data = AppLocalizations.of(context)!.samplButton;
    List list = [
      Center(
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: EsDottedText(data: AppLocalizations.of(context)!.avatarImages,size: 20,),
            ),
            EsAvatarImage(path: "assets/images/img1.jpg", radius: 100,),
          ],
        ),
      ),
      Center(
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: EsDottedText(data: AppLocalizations.of(context)!.avatarImages,size: 20,),
            ),
            Expanded(child: EsEditableTable())
          ],
        ),
      ),
      Center(
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: EsDottedText(data:AppLocalizations.of(context)!.zoominImages,size: 20,),
            ),
            Container(child: EsZoomingImage(img: AssetImage("assets/images/img1.jpg"),),
            width: 300,
                height: 240,
            ),
          ],
        ))

      
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
        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12',
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
