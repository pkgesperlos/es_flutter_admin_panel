import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//carouselSlider and  packages are used
class PanelColorsSample extends StatefulWidget {

  static const routeName = '/panelColorsSample';

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
        EsTitle(title,color: StructureBuilder.styles!.primaryDarkColor,)
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
                colorBox( StructureBuilder.styles!.secondaryDarkColor,
                    AppLocalizations.of(context)!.secondarydarkcolor),
                colorBox( StructureBuilder.styles!.secondaryLightColor,
                  AppLocalizations.of(context)!.secondarylightcolor,),
                colorBox( StructureBuilder.styles!.secondaryColor,
                  AppLocalizations.of(context)!.secondarycolor,),

                colorBox( StructureBuilder.styles!.specificColor,
                  AppLocalizations.of(context)!.specificColor,),

                colorBox( StructureBuilder.styles!.onPrimaryColor,
                  AppLocalizations.of(context)!.onprimarycolor,
                ),
                colorBox( StructureBuilder.styles!.onSecondaryColor,
                  AppLocalizations.of(context)!.onsecondarycolor,
                ),
                /////////////////////////DecorationColor
                colorBox( StructureBuilder.styles!.decorationColor().background,
                  AppLocalizations.of(context)!.backgroundcolor,
                ),
                colorBox( StructureBuilder.styles!.decorationColor().border,
                  AppLocalizations.of(context)!.bordercolor,
                ),
                colorBox( StructureBuilder.styles!.decorationColor().hover,
                  AppLocalizations.of(context)!.hovercolor,
                ),
                colorBox( StructureBuilder.styles!.decorationColor().buttonHover,
                  AppLocalizations.of(context)!.buttonhovercolor,
                ),
                colorBox( StructureBuilder.styles!.decorationColor().textHover,
                  AppLocalizations.of(context)!.texthovercolor,
                ),
                colorBox( StructureBuilder.styles!.decorationColor().card,
                  AppLocalizations.of(context)!.cardcolor,
                ),
                colorBox( StructureBuilder.styles!.decorationColor().shadow,
                  AppLocalizations.of(context)!.shadowcolor,
                ),
                colorBox( StructureBuilder.styles!.decorationColor().divider,
                  AppLocalizations.of(context)!.dividercolor,
                ),
                colorBox( StructureBuilder.styles!.decorationColor().icon,
                  AppLocalizations.of(context)!.iconcolor,
                ),
                colorBox( StructureBuilder.styles!.decorationColor().menu,
                  AppLocalizations.of(context)!.menucolor,
                ),
/////////////////////////////////////////////
              ],
            ) ,
          ),
          title:AppLocalizations.of(context)!.primarycolor,
          information:
              "these are main colors that are used in Panel"),
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
          title:AppLocalizations.of(context)!.errorcolors,
          information:
              "these are error colors that are used in Panel"),
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
          title:AppLocalizations.of(context)!.warningcolors,
          information:
              "these are warning colors that are used in Panel"),
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
          title:AppLocalizations.of(context)!.successcolors,
          information:
              "these are success colors that are used in Panel"),
      ContainerItems(
          widget: Container(

            child:Wrap(
              spacing: StructureBuilder.dims!.h0Padding ,
              runSpacing: StructureBuilder.dims!.h0Padding ,
              children: [
                colorBox( StructureBuilder.styles!.informationColor().informationRegular,
                  AppLocalizations.of(context)!.informationregularcolor,
                ),
                colorBox( StructureBuilder.styles!.informationColor().informationLight,
                  AppLocalizations.of(context)!.informationlightcolor,
                ),
                colorBox( StructureBuilder.styles!.informationColor().informationDark,
                  AppLocalizations.of(context)!.informationdarkcolor,
                ),



              ],
            ) ,
          ),
          title:AppLocalizations.of(context)!.informationcolors,
          information:
              "these are information colors that are used in Panel"),

    ];
    return Material(
        color: StructureBuilder.styles!.decorationColor().background,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.decorationColor().background,
          body: SingleChildScrollView(
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
                      color: StructureBuilder.styles!.primaryColor,
                    ),
                    children: List.generate(
                        list.length, (index) => boxShow(list[index])))
              ],
            ),
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
