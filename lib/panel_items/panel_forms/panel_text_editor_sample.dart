
import 'package:es_flutter_components/components/es_form/es_text_editor/es_text_editor.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class PanelTextEditorSample extends StatefulWidget {

  static const routeName = '/panelTextEditorSample';

  PanelTextEditorSample({Key? key}) : super(key: key);

  @override
  State<PanelTextEditorSample> createState() => _PanelTextEditorSampleState();
}

class _PanelTextEditorSampleState extends State<PanelTextEditorSample> {


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
            height: 500,
            child: EsTextEditor(),

          ),
          title:AppLocalizations.of(context)!.quilltexteditor,
          information:
          "It is a quill Text Editor located in: \n es_flutter_component/lib/components/es_form/es_text_editor/es_text_editor.dart"
              "\n the  quill Text Editor package is added in pubspec.yaml 's dependencies \n "
              " \n and is used as: \n "
              """EsTextEditor(),"""),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.decorationColor().background,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.decorationColor().background,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.quilltexteditortitle,
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
