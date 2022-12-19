
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/components/es_form/es_text_editor/es_html_text_editor.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class PanelHtmlTextEditorSample extends StatefulWidget {

  static const routeName = '/panelHtmlTextEditorSample';

  PanelHtmlTextEditorSample({Key? key}) : super(key: key);

  @override
  State<PanelHtmlTextEditorSample> createState() => _PanelHtmlTextEditorSampleState();
}

class _PanelHtmlTextEditorSampleState extends State<PanelHtmlTextEditorSample> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    List list = [
      ContainerItems(
          widget: Container(
            width: double.infinity,
            height: 1000,
            child: HtmlTextEditor(title: '',),

          ),
          title:AppLocalizations.of(context)!.htmltexteditor,
          information:
          "It is a html_editor_enhanced Text Editor located in: \n es_flutter_component/lib/components/es_form/es_text_editor/es_html_text_editor.dart"
              "\n the html_editor_enhanced package is added in pubspec.yaml 's dependencies \n "
              "\n and is used as: \n "
              """EsTextEditor(),"""),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.primaryDarkColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.htmltexteditortitle,
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
