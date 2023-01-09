
import 'package:es_flutter_component/components/es_text/es_dotted_text.dart';
import 'package:es_flutter_component/components/es_text/es_header.dart';
import 'package:es_flutter_component/components/es_text/es_icon_text.dart';
import 'package:es_flutter_component/components/es_text/es_label_text.dart';
import 'package:es_flutter_component/components/es_text/es_marked_text.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/components/es_text/es_subtitle.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/Constants/styles.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelTextSample extends StatelessWidget {

  static const routeName = '/panelTextSample';

  const PanelTextSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list = [
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.vertical,
            alignment: WrapAlignment.start,
            children: [
              EsHeader(
                "Header : " + AppLocalizations.of(context)!.sampleText,
              ),
              EsTitle(
                "Title : " + AppLocalizations.of(context)!.sampleText,
              ),
              EsOrdinaryText(
                "OrdinaryText : " + AppLocalizations.of(context)!.sampleText,
              ),
              EsSubtitle(
                "Subtitle : " + AppLocalizations.of(context)!.sampleText,
              ),
              EsLabelText(
                "LabelText : " + AppLocalizations.of(context)!.sampleText,
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.textindifferentposition,
          information:
              "these are text in deifferent positions located in: \n es_flutter_component/lib/components/es_text;' \n and is used as: \n "
              """EsHeader("Header : "+AppLocalizations.of(context)!.sampleText,),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding * 2,
            runSpacing: StructureBuilder.dims!.h0Padding,
            crossAxisAlignment: WrapCrossAlignment.start,
            alignment: WrapAlignment.start,
            children: [
              Column(
                children: [
                  EsDottedText(
                    AppLocalizations.of(context)!.sampleText,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsDottedText(
                    AppLocalizations.of(context)!.sampleText,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsDottedText(
                    AppLocalizations.of(context)!.sampleText,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsDottedText(
                    AppLocalizations.of(context)!.sampleText,
                  ),
                ],
              ),
              Column(
                children: [
                  EsIconText(
                    AppLocalizations.of(context)!.sampleText,
                    icon: EsSvgIcon("packages/es_flutter_component/assets/svgs/GraduationCap.svg",
                        color: StructureBuilder.styles!.textColor().primary,
                        size: StructureBuilder.dims!.h0FontSize),
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsIconText(
                    AppLocalizations.of(context)!.sampleText,
                    icon: EsSvgIcon("packages/es_flutter_component/assets/svgs/GraduationCap.svg",
                        color: StructureBuilder.styles!.textColor().primary,
                        size: StructureBuilder.dims!.h0FontSize),
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsIconText(
                    AppLocalizations.of(context)!.sampleText,
                    icon: EsSvgIcon("packages/es_flutter_component/assets/svgs/GraduationCap.svg",
                        color: StructureBuilder.styles!.textColor().primary,
                        size: StructureBuilder.dims!.h0FontSize),
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsIconText(
                    AppLocalizations.of(context)!.sampleText,
                    icon: EsSvgIcon("packages/es_flutter_component/assets/svgs/GraduationCap.svg",
                        color: StructureBuilder.styles!.textColor().primary,
                        size: StructureBuilder.dims!.h0FontSize),
                  ),
                ],
              ),
              Column(
                children: [
                  EsMarkedText(
                    AppLocalizations.of(context)!.sampleText,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsMarkedText(
                    AppLocalizations.of(context)!.sampleText,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsMarkedText(
                    AppLocalizations.of(context)!.sampleText,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsMarkedText(
                    AppLocalizations.of(context)!.sampleText,
                  ),
                ],
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.textforuseinlist,
          information:
              "these are Texts for use in list located in: \n es_flutter_component/lib/components/es_text;' \n and is used as: \n "
              """Column(
                    children: [
                      EsDottedText(AppLocalizations.of(context)!.sampleText,),
                      EsVSpacer(big: true,),
                      EsDottedText(AppLocalizations.of(context)!.sampleText,),
                      EsVSpacer(big: true,),
                      EsDottedText(AppLocalizations.of(context)!.sampleText,),
                      EsVSpacer(big: true,),
                      EsDottedText(AppLocalizations.of(context)!.sampleText,),
                    ],
                  ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding * 2,
            runSpacing: StructureBuilder.dims!.h0Padding,
            crossAxisAlignment: WrapCrossAlignment.start,
            // direction: Axis.vertical,
            alignment: WrapAlignment.start,
            children: [
              Column(
                children: [
                  EsHeader(
                    "Header : " + AppLocalizations.of(context)!.sampleText,
                  ),
                  EsHeader(
                    "Header : " + AppLocalizations.of(context)!.sampleText,
                    color: StructureBuilder.styles!.textColor().danger,
                  ),
                  EsHeader(
                    "Header : " + AppLocalizations.of(context)!.sampleText,
                    color: StructureBuilder.styles!.textColor().titleText,
                  ),
                ],
              ),
              Column(
                children: [
                  EsTitle(
                    "Title : " + AppLocalizations.of(context)!.sampleText,
                  ),
                  EsTitle(
                    "Title : " + AppLocalizations.of(context)!.sampleText,
                    color: StructureBuilder.styles!.textColor().danger,
                  ),
                  EsTitle(
                    "Title : " + AppLocalizations.of(context)!.sampleText,
                    color: StructureBuilder.styles!.textColor().titleText,
                  ),
                ],
              ),
              Column(
                children: [
                  EsDottedText(
                    "DottedText : " + AppLocalizations.of(context)!.sampleText,
                  ),
                  EsDottedText(
                    "DottedText : " + AppLocalizations.of(context)!.sampleText,
                    color: StructureBuilder.styles!.textColor().danger,
                  ),
                  EsDottedText(
                    "DottedText : " + AppLocalizations.of(context)!.sampleText,
                    color: StructureBuilder.styles!.textColor().titleText,
                  ),
                ],
              ),
              Column(
                children: [
                  EsIconText(
                    "IconText : " + AppLocalizations.of(context)!.sampleText,
                    icon: EsSvgIcon("packages/es_flutter_component/assets/svgs/GraduationCap.svg",
                        color: StructureBuilder.styles!.textColor().primary,
                        size: StructureBuilder.dims!.h0FontSize),
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsIconText(
                    "IconText : " + AppLocalizations.of(context)!.sampleText,
                    color: StructureBuilder.styles!.textColor().danger,
                    icon: EsSvgIcon("packages/es_flutter_component/assets/svgs/GraduationCap.svg",
                        color: StructureBuilder.styles!.textColor().danger,
                        size: StructureBuilder.dims!.h0FontSize),
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsIconText(
                    "IconText : " + AppLocalizations.of(context)!.sampleText,
                    color: StructureBuilder.styles!.textColor().titleText,
                    icon: EsSvgIcon("packages/es_flutter_component/assets/svgs/GraduationCap.svg",
                        color: StructureBuilder.styles!.textColor().titleText,
                        size: StructureBuilder.dims!.h0FontSize),
                  ),
                ],
              ),
              Column(
                children: [
                  EsMarkedText(
                    "MarkedText : " + AppLocalizations.of(context)!.sampleText,
                  ),
                  EsMarkedText(
                    "MarkedText : " + AppLocalizations.of(context)!.sampleText,
                    color: StructureBuilder.styles!.textColor().danger,
                  ),
                  EsMarkedText(
                    "MarkedText : " + AppLocalizations.of(context)!.sampleText,
                    color: StructureBuilder.styles!.textColor().titleText,
                  ),
                ],
              ),
              Column(
                children: [
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                  ),
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    color: StructureBuilder.styles!.textColor().danger,
                  ),
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    color: StructureBuilder.styles!.textColor().titleText,
                  ),
                ],
              ),
              Column(
                children: [
                  EsSubtitle(
                    "Subtitle : " + AppLocalizations.of(context)!.sampleText,
                  ),
                  EsSubtitle(
                    "Subtitle : " + AppLocalizations.of(context)!.sampleText,
                    color: StructureBuilder.styles!.textColor().danger,
                  ),
                  EsSubtitle(
                    "Subtitle : " + AppLocalizations.of(context)!.sampleText,
                    color: StructureBuilder.styles!.textColor().titleText,
                  ),
                ],
              ),
              Column(
                children: [
                  EsLabelText(
                    "LabelText : " + AppLocalizations.of(context)!.sampleText,
                  ),
                  EsLabelText(
                    "LabelText : " + AppLocalizations.of(context)!.sampleText,
                    color: StructureBuilder.styles!.textColor().danger,
                  ),
                  EsLabelText(
                    "LabelText : " + AppLocalizations.of(context)!.sampleText,
                    color: StructureBuilder.styles!.textColor().titleText,
                  ),
                ],
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.textindifferentcolors,
          information:
              "these are texts in different colors located in: \n es_flutter_component/lib/components/es_text;' \n and is used as: \n "
              """Column(
                    children: [
                      EsHeader("Header : "+AppLocalizations.of(context)!.sampleText,),
                      EsHeader("Header : "+AppLocalizations.of(context)!.sampleText,
                      color: StructureBuilder.styles!.textColor().danger,
                      ),
                      EsHeader("Header : "+AppLocalizations.of(context)!.sampleText,
                        color: StructureBuilder.styles!.textColor().titleText,),
                    ],
                  ),"""),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding * 2,
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            alignment: WrapAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EsHeader(
                    "Header : " + AppLocalizations.of(context)!.sampleText,
                    backgroundColor:
                        StructureBuilder.styles!.warningColor().warningLight,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsTitle(
                    "Title : " + AppLocalizations.of(context)!.sampleText,
                    backgroundColor:
                        StructureBuilder.styles!.warningColor().warningLight,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    backgroundColor:
                        StructureBuilder.styles!.warningColor().warningLight,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsSubtitle(
                    "Subtitle : " + AppLocalizations.of(context)!.sampleText,
                    backgroundColor:
                        StructureBuilder.styles!.warningColor().warningLight,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsLabelText(
                    "LabelText : " + AppLocalizations.of(context)!.sampleText,
                    backgroundColor:
                        StructureBuilder.styles!.warningColor().warningLight,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EsHeader(
                    "Header : " + AppLocalizations.of(context)!.sampleText,
                    decoration: TextDecoration.lineThrough,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsTitle(
                    "Title : " + AppLocalizations.of(context)!.sampleText,
                    decoration: TextDecoration.lineThrough,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    decoration: TextDecoration.lineThrough,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsSubtitle(
                    "Subtitle : " + AppLocalizations.of(context)!.sampleText,
                    decoration: TextDecoration.lineThrough,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsLabelText(
                    "LabelText : " + AppLocalizations.of(context)!.sampleText,
                    decoration: TextDecoration.lineThrough,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EsHeader(
                    "Header : " + AppLocalizations.of(context)!.sampleText,
                    decoration: TextDecoration.underline,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsTitle(
                    "Title : " + AppLocalizations.of(context)!.sampleText,
                    decoration: TextDecoration.underline,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    decoration: TextDecoration.underline,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsSubtitle(
                    "Subtitle : " + AppLocalizations.of(context)!.sampleText,
                    decoration: TextDecoration.underline,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsLabelText(
                    "LabelText : " + AppLocalizations.of(context)!.sampleText,
                    decoration: TextDecoration.underline,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EsHeader(
                    "Header : " + AppLocalizations.of(context)!.sampleText,
                    decoration: TextDecoration.overline,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsTitle(
                    "Title : " + AppLocalizations.of(context)!.sampleText,
                    decoration: TextDecoration.overline,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    decoration: TextDecoration.overline,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsSubtitle(
                    "Subtitle : " + AppLocalizations.of(context)!.sampleText,
                    decoration: TextDecoration.overline,
                  ),
                  EsVSpacer(
                    big: true,
                  ),
                  EsLabelText(
                    "LabelText : " + AppLocalizations.of(context)!.sampleText,
                    decoration: TextDecoration.overline,
                  ),
                ],
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.textindifferentemphsizestyles,
          information:
              "these are Text in deifferent sizes located in: \n es_flutter_component/lib/components/es_text;' \n and is used as: \n "
              """ EsHeader("Header : "+AppLocalizations.of(context)!.sampleText,
                      backgroundColor: StructureBuilder.styles!.warningColor().warningLight,),
                      \n and \n
                      EsHeader("Header : "+AppLocalizations.of(context)!.sampleText,
                      decoration: TextDecoration.lineThrough,),
                      """),
      ContainerItems(
          widget: Container(
              child: Wrap(
            spacing: StructureBuilder.dims!.h0Padding,
            runSpacing: StructureBuilder.dims!.h0Padding,
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            alignment: WrapAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    size: StructureBuilder.dims!.h0FontSize,
                  ),
                  EsVSpacer(),
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    size: StructureBuilder.dims!.h1FontSize,
                  ),
                  EsVSpacer(),
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    size: StructureBuilder.dims!.h2FontSize,
                  ),
                  EsVSpacer(),
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    size: StructureBuilder.dims!.h3FontSize,
                  ),
                  EsVSpacer(),
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    size: StructureBuilder.dims!.h4FontSize,
                  ),
                  EsVSpacer(),
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    size: StructureBuilder.dims!.h5FontSize,
                  ),
                  EsVSpacer(),

                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    size: StructureBuilder.dims!.h0FontSize,
                    isBold: true,
                  ),
                  EsVSpacer(),
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    size: StructureBuilder.dims!.h1FontSize,
                    isBold: true,
                  ),
                  EsVSpacer(),
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    size: StructureBuilder.dims!.h2FontSize,
                    isBold: true,
                  ),
                  EsVSpacer(),
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    size: StructureBuilder.dims!.h3FontSize,
                    isBold: true,
                  ),
                  EsVSpacer(),
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    size: StructureBuilder.dims!.h4FontSize,
                    isBold: true,
                  ),
                  EsVSpacer(),
                  EsOrdinaryText(
                    "OrdinaryText : " +
                        AppLocalizations.of(context)!.sampleText,
                    size: StructureBuilder.dims!.h5FontSize,
                    isBold: true,
                  ),
                  EsVSpacer(),
                ],
              ),
            ],
          )),
          title: AppLocalizations.of(context)!.textindifferentsizes,
          information:
              "these are Text in deifferent sizes located in: \n es_flutter_component/lib/components/es_text;' \n and is used as: \n "
              """EsOrdinaryText(
                        "OrdinaryText : " + AppLocalizations.of(context)!.sampleText,
                        size: StructureBuilder.dims!.h1FontSize,
                      ), \n and \n 
                      EsOrdinaryText(
                        "OrdinaryText : " + AppLocalizations.of(context)!.sampleText,
                        size: StructureBuilder.dims!.h0FontSize,
                        isBold: true,
                      ),"""),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.decorationColor().background,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.decorationColor().background,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.groupbuttontitle,
                ),
                BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.all(StructureBuilder.dims!.h0Padding),
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
