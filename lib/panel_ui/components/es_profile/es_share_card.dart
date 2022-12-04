import 'package:es_flutter_component/components/es_form/es_text_field/es_text_field_form.dart';
import 'package:es_flutter_component/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/components/es_text/es_header.dart';
import 'package:es_flutter_component/es_button/es_icon_button.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../main.dart';

class EsShareCard extends StatelessWidget {
  String? name;

  void Function()? onSave;
  void Function()? onaddPictureFunction;
  void Function()? onaddVideoFunction;
  void Function()? onaddFileFunction;

  EsShareCard({
    Key? key,
    this.name,
    this.onSave,
    this.onaddPictureFunction,
    this.onaddVideoFunction,
    this.onaddFileFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
      margin: EdgeInsets.symmetric(
        vertical: StructureBuilder.dims!.h1Padding,
      ),
      decoration: BoxDecoration(
          color: MyStyle.cardColor,
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h0BorderRadius))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          EsHeader(
            AppLocalizations.of(context)!.shareanactivity,
          ),
          EsVSpacer(big: true,factor: 4,),
          EsTextFieldForm(
            maxLines: 10,
            hint: AppLocalizations.of(context)!.sharesomthing,

          ),
          EsVSpacer(big: true,factor:2,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  EsIconButton(
                    EsSvgIcon(
                        // "packages/es_flutter_component/"
                        "assets/svgs/video.svg",
                        color: StructureBuilder.styles!.primaryLightColor,
                        size: StructureBuilder.dims!.h3IconSize),
                    onTap: onaddVideoFunction,
                  ),
                  EsHSpacer(
                    big: true,
                  ),
                  EsIconButton(
                    EsSvgIcon(
                        // "packages/es_flutter_component/"
                        "assets/svgs/image.svg",
                        color: StructureBuilder.styles!.primaryLightColor,
                        size: StructureBuilder.dims!.h3IconSize),
                    onTap: onaddPictureFunction,
                  ),
                  EsHSpacer(
                    big: true,
                  ),
                  EsIconButton(
                    EsSvgIcon(
                        // "packages/es_flutter_component/"
                        "assets/svgs/document.svg",
                        color: StructureBuilder.styles!.primaryLightColor,
                        size: StructureBuilder.dims!.h3IconSize),
                    onTap: onaddFileFunction,
                  ),
                ],
              ),
              EsIconButton(
                EsSvgIcon(
                  // "packages/es_flutter_component/"
                    "assets/svgs/send.svg",
                    color: StructureBuilder.styles!.primaryLightColor,
                    size: StructureBuilder.dims!.h3IconSize),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
