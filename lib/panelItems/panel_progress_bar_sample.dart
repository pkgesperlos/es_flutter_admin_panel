import 'package:es_flutter_admin_panel/panelItems/widgets/container_items.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_group_list/es_group_list.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_label/es_content_label.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_table/es_simple_table.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_text/es_title.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/page_title_container.dart';
import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_image/es_avatar_image.dart';
import 'package:es_flutter_component/es_progressbar/es_circular_progressbar.dart';
import 'package:es_flutter_component/es_progressbar/es_linear_progressbar.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelProgressBarSample extends StatefulWidget {
  PanelProgressBarSample({Key? key}) : super(key: key);

  @override
  State<PanelProgressBarSample> createState() => _PanelProgressBarSampleState();
}

class _PanelProgressBarSampleState extends State<PanelProgressBarSample> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {

    List list = [
      ContainerItems(widget:EsLinearProgressbar(),
          title:AppLocalizations.of(context)!.linearProgressBar,
          information:"It is a linear progress bar located in: \n es_flutter_component>lib>es_progressbar>es_linear_progressbar.dart \n and is used as: \n "
              """EsLinearProgressbar()"""
      ),
      ContainerItems(widget:EsCircularProgressbar(),
          title:AppLocalizations.of(context)!.circularProgressBar,
          information:"It is a circular progress bar located in: \n es_flutter_component>lib>es_progressbar>es_circular_progressbar.dart \n and is used as: \n "
              """EsCircularProgressbar()"""
      )
    ];

    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);
    return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitleContainer(
                title: AppLocalizations.of(context)!.grouplisttitle,
              ),
              BootstrapContainer(

                  fluid: true,
                  padding: EdgeInsets.symmetric(
                      horizontal: StructureBuilder.dims!.h0Padding,),


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

        sizes: 'col-sm-12 col-ml-6 col-lg-4 col-xl-4', child: widget);
  }

  Widget listShow(Widget widget) {
    return Column(
      children: List.generate(3, (index) => widget),
    );
  }
}
