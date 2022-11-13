import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/container_items.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_text/es_title.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/page_title_container.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:intl/intl.dart' as intl;

//carouselSlider and  packages are used
class PanelColorsSample extends StatefulWidget {
  PanelColorsSample({Key? key}) : super(key: key);

  @override
  State<PanelColorsSample> createState() => _PanelColorsSampleState();
}

class _PanelColorsSampleState extends State<PanelColorsSample> {


  Widget colorBox(Color color,String title) {
    return Column(
      children: [
        Container(
          width: StructureBuilder.dims!.h0Padding*3,
          height: StructureBuilder.dims!.h0Padding*3,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(
                  Radius.circular(StructureBuilder.dims!.h0BorderRadius))),

        ),
        EsVSpacer(big: true,),
        EsTitle(title,color: StructureBuilder.styles!.primaryColor,)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {


    List list = [
      ContainerItems(
          widget: Container(

            child:Wrap(
              spacing: StructureBuilder.dims!.h0Padding ,
              runSpacing: StructureBuilder.dims!.h0Padding ,
              children: [
                colorBox( StructureBuilder.styles!.primaryColor,
                  AppLocalizations.of(context)!.primarycolor),
                colorBox( StructureBuilder.styles!.primaryLightColor,
                  AppLocalizations.of(context)!.primarylightcolor),
                colorBox( StructureBuilder.styles!.primaryDarkColor,
                  AppLocalizations.of(context)!.primarydarkcolor,),
                colorBox( StructureBuilder.styles!.secondaryColor,
                  AppLocalizations.of(context)!.secondarycolor,),
                colorBox( StructureBuilder.styles!.tritiaryColor,
                  AppLocalizations.of(context)!.tritiarycolor,),

              ],
            ) ,
          ),
          title: AppLocalizations.of(context)!.simplecarouselsliderwithoutanimation,
          information:
              "They are main colors that are used in Panel"),
      ContainerItems(
          widget: Container(

            child:Wrap(
              spacing: StructureBuilder.dims!.h0Padding ,
              runSpacing: StructureBuilder.dims!.h0Padding ,
              children: [
                colorBox( StructureBuilder.styles!.dangerColor().dangerRegular,
                  AppLocalizations.of(context)!.errorregularcolor,
                ), colorBox( StructureBuilder.styles!.dangerColor().dangerLight,
                  AppLocalizations.of(context)!.errorlightcolor,
                ), colorBox( StructureBuilder.styles!.dangerColor().dangerDark,
                  AppLocalizations.of(context)!.errordarkcolor,
                ),


              ],
            ) ,
          ),
          title: AppLocalizations.of(context)!.simplecarouselsliderwithoutanimation,
          information:
              "They are danger colors that are used in Panel"),
      ContainerItems(
          widget: Container(

            child:Wrap(
              spacing: StructureBuilder.dims!.h0Padding ,
              runSpacing: StructureBuilder.dims!.h0Padding ,
              children: [
                colorBox( StructureBuilder.styles!.warningColor().warningRegular,
                  AppLocalizations.of(context)!.warningregularcolor,
                ),
                colorBox( StructureBuilder.styles!.warningColor().warningLight,
                  AppLocalizations.of(context)!.warninglightcolor,
                ),
                colorBox( StructureBuilder.styles!.warningColor().warningDark,
                  AppLocalizations.of(context)!.warningdarkcolor,
                ),


              ],
            ) ,
          ),
          title: AppLocalizations.of(context)!.simplecarouselsliderwithoutanimation,
          information:
              "They are warning colors that are used in Panel"),
      ContainerItems(
          widget: Container(

            child:Wrap(
              spacing: StructureBuilder.dims!.h0Padding ,
              runSpacing: StructureBuilder.dims!.h0Padding ,
              children: [
                colorBox( StructureBuilder.styles!.successColor().successRegular,
                  AppLocalizations.of(context)!.successregularcolor,
                ), colorBox( StructureBuilder.styles!.successColor().successLight,
                  AppLocalizations.of(context)!.successlightcolor,
                ), colorBox( StructureBuilder.styles!.successColor().successDark,
                  AppLocalizations.of(context)!.successdarkcolor,
                ),


              ],
            ) ,
          ),
          title: AppLocalizations.of(context)!.simplecarouselsliderwithoutanimation,
          information:
              "They are success colors that are used in Panel"),
      ContainerItems(
          widget: Container(

            child:Wrap(
              spacing: StructureBuilder.dims!.h0Padding ,
              runSpacing: StructureBuilder.dims!.h0Padding ,
              children: [
                colorBox( StructureBuilder.styles!.informationColor().informationRegular,
                  AppLocalizations.of(context)!.informationregularcolor,
                ),  colorBox( StructureBuilder.styles!.informationColor().informationLight,
                  AppLocalizations.of(context)!.informationlightcolor,
                ),  colorBox( StructureBuilder.styles!.informationColor().informationDark,
                  AppLocalizations.of(context)!.informationdarkcolor,
                ),


              ],
            ) ,
          ),
          title: AppLocalizations.of(context)!.simplecarouselsliderwithoutanimation,
          information:
              "They are success colors that are used in Panel"),

    ];
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.colorstitle,
              ),
              BootstrapContainer(
                  fluid: true,
                  padding: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h0Padding),
                  decoration: BoxDecoration(
                    color: StructureBuilder.styles!.primaryDarkColor,
                  ),
                  children: List.generate(
                      list.length, (index) => boxShow(list[index])))
            ],
          ),
        ));
  }

  Widget boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-12 col-ml-12 col-lg-12 col-xl-12', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
