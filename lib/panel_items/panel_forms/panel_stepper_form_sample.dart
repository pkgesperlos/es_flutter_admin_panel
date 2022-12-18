
import 'package:es_flutter_component/components/es_form/es_checkbox/es_custom_checkbox_form.dart';
import 'package:es_flutter_component/components/es_form/es_drop_down/es_drop_down_form.dart';
import 'package:es_flutter_component/components/es_stepper/es_stepper.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/container_items.dart';
import 'package:es_flutter_admin_panel/panel_ui/components/page_title_container.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PanelStepperFormSample extends StatefulWidget {

  static const routeName = '/panelStepperFormSample';

  PanelStepperFormSample({Key? key}) : super(key: key);

  @override
  State<PanelStepperFormSample> createState() => _PanelStepperFormSampleState();
}

class _PanelStepperFormSampleState extends State<PanelStepperFormSample> {


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
    bool _value1 = false;
    String _value3 = "";

    List<Widget> _stepWidgets1 = [
      EsOrdinaryText(StructureBuilder.configs!.lorm),
      EsOrdinaryText(StructureBuilder.configs!.lorm),
      EsOrdinaryText(StructureBuilder.configs!.lorm),
    ];
    List<Widget> _stepWidgets2 = [
      IntrinsicWidth(
        child: EsDropDownForm(
          initialTitle: AppLocalizations.of(context)!.select,
          list: [
            {"title": "item1", "_id": "1"},
            {"title": "item2", "_id": "2"},
            {"title": "item3", "_id": "3"},
          ],
          value: _value3,
          validator: (value) {
            if (value == "") {
              return AppLocalizations.of(context)!.pleaseselectoneitem;
            }
          },
        ),
      ),
      EsCustomCheckBoxForm(
        titleWidget: EsTitle(
          AppLocalizations.of(context)!.pleaseselectme,
        ),
        value: _value1,
        validator: (value) {
          if (value == false) {
            return AppLocalizations.of(context)!
                .youshouldacceptthetermsandconditionsbeforeregister;
          }
        },
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          EsOrdinaryText(
            StructureBuilder.configs!.lorm,
            color: StructureBuilder.styles!.t1Color,
          ),
          EsVSpacer(
            big: true,
          ),
        ],
      ),
    ];

    List list = [
      ContainerItems(
          widget: Container(
              width: double.infinity,
              height: 500,
              child: EsStepper(
                stepWidgets: _stepWidgets1,
                titleList: ["step1", "step2", "step3"],
              )),
          title: AppLocalizations.of(context)!.stepperwithoutvalidationfield,
          information:
              "It is a stepper without  validation field located in: \n es_flutter_component>lib/es_stepper/es_stepper.dart \n and is used as: \n "
              """EsStepper(
                stepWidgets: _stepWidgets1,
                titleList: ["step1","step2","step3"],
              ),
                 \n   where \n
       List<Widget> _stepWidgets1 = [
      EsOrdinaryText(StructureBuilder.configs!.lorm),
      EsOrdinaryText(StructureBuilder.configs!.lorm),
      EsOrdinaryText(StructureBuilder.configs!.lorm),
    ];      
              """),
      ContainerItems(
          widget: Container(
              width: double.infinity,
              height: 500,
              child: EsStepper(
                stepWidgets: _stepWidgets2,
                titleList: ["step1", "step2", "step3"],
              )),
          title: AppLocalizations.of(context)!.stepperformwithvalidationfields,
          information:
              "It is a stepper form with validation fields located in: \n es_flutter_component>lib/es_stepper/es_stepper.dart \n and is used as: \n "
              """ EsStepper(
                stepWidgets: _stepWidgets2,
                titleList: ["step1","step2","step3"],
              ),
                 \n   where \n
                  List<Widget> _stepWidgets2 = [
      IntrinsicWidth(
        child: EsDropDownForm(
          initialTitle: AppLocalizations.of(context)!.select,
          list: [
            {"title": "item1", "_id": "1"},
            {"title": "item2", "_id": "2"},
            {"title": "item3", "_id": "3"},
          ],
          value: _value3,
          validator: (value) {
            if (value == "") {
              return AppLocalizations.of(context)!.pleaseselectoneitem;
            }
          },
        ),
      ),
      EsCustomCheckBoxForm(
        titleWidget: EsTitle(
          AppLocalizations.of(context)!.pleaseselectme,
        ),
        value: _value1,
        validator: (value) {
          if (value == false) {
            return AppLocalizations.of(context)!
                .youshouldacceptthetermsandconditionsbeforeregister;
          }
        },
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          EsOrdinaryText(
            StructureBuilder.configs!.lorm,
            color: StructureBuilder.styles!.t1Color,
          ),
          EsVSpacer(
            big: true,
          ),
        ],
      ),
    ];
              """),
      ContainerItems(
          widget: Container(
              width: double.infinity,
              height: 500,
              child: EsStepper(
                direction: StepperType.vertical,
                stepWidgets: _stepWidgets1,
                titleList: ["step1", "step2", "step3"],
              )),
          title: AppLocalizations.of(context)!.verticalstepperform,
          information:
              "It is a vertical stepper form located in: \n es_flutter_component>lib/es_stepper/es_stepper.dart \n and is used as: \n "
              """ EsStepper(
                direction: StepperType.vertical,
                stepWidgets: _stepWidgets1,
                titleList: ["step1","step2","step3"],
              ),
                    \n   where \n
       List<Widget> _stepWidgets1 = [
      EsOrdinaryText(StructureBuilder.configs!.lorm),
      EsOrdinaryText(StructureBuilder.configs!.lorm),
      EsOrdinaryText(StructureBuilder.configs!.lorm),
    ]; 
              """),
    ];
    bootstrapGridParameters(gutterSize: StructureBuilder.dims!.h0Padding);return Material(
        color: StructureBuilder.styles!.primaryDarkColor,
        child:  Scaffold(
          backgroundColor: StructureBuilder.styles!.primaryDarkColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitleContainer(
                  title: AppLocalizations.of(context)!.stepperformtitle,
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
