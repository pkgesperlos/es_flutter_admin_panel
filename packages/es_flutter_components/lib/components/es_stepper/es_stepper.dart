import 'package:es_flutter_components/components/es_button/es_button.dart';
import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import '../es_form/es_text_field/es_text_field_form.dart';

class EsStepper extends StatefulWidget {
  StepperType? direction;
  List<Widget> stepWidgets;
  List<String> titleList;


  EsStepper({
    Key? key,
    required this.stepWidgets,
    required this.titleList,
    this.direction,
  }) : super(key: key);

  @override
  State<EsStepper> createState() => _EsStepperState();
}



class _EsStepperState extends State<EsStepper> {
  List<GlobalKey<FormState>> _formKeys = [];
  int _currentStep = 0;
  _stepState(int step) {
    if (_currentStep > step) {
      return StepState.complete;
    } else {
      return StepState.editing;
    }
  }

  _steps() => List.generate(
        widget.stepWidgets.length,
        (index) => Step(
          title: EsTitle(widget.titleList[index]),
          content:
              Form(key: _formKeys[index], child: widget.stepWidgets[index]),
          state: _stepState(index),
          isActive: _currentStep == index,
        ),
      );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _formKeys = List.generate(
        widget.stepWidgets.length, (index) => GlobalKey<FormState>());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h0BorderRadius))),
      child: Stepper(
        type: widget.direction ?? StepperType.horizontal,
        controlsBuilder: (BuildContext context, ControlsDetails controls) {
          return Padding(
            padding: EdgeInsets.symmetric(
                vertical: StructureBuilder.dims!.h0Padding),
            child: Row(
              children: <Widget>[
                if (_currentStep != 0)
                  EsButton(
                    text: "Back",
                    fillColor: StructureBuilder.styles!.secondaryColor,
                    onTap: controls.onStepCancel,
                  ),
                EsHSpacer(),
                if (_currentStep != _steps().length - 1)
                  EsButton(
                    text: "Next",
                    onTap: controls.onStepContinue,
                  ),
              ],
            ),
          );
        },
        onStepTapped: (step) => setState(() => _currentStep = step),
        onStepContinue: () {
          setState(() {
            if (_currentStep < _steps().length - 1) {
              if (_formKeys[_currentStep].currentState!.validate()) {
                _currentStep += 1;
              }
            } else {
              _currentStep = 0;
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (_currentStep > 0) {
              _currentStep -= 1;
            } else {
              _currentStep = 0;
            }
          });
        },
        steps: _steps(),
        currentStep: _currentStep,
      ),
    );
  }
}

class _AddressForm extends StatelessWidget {
  const _AddressForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EsTextFieldForm(
          hint: "aaa",
          label: "bbb",
          maxLines: 7,
          validator: (value) {
            if (value!.length < 4) {
              return "!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
            }
          },
        ),
      ],
    );
  }
}

class _CardForm extends StatelessWidget {
  const _CardForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Card number',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Expiry date',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'CVV',
          ),
        ),
      ],
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(child: Text('Thank you for your order!')),
      ],
    );
  }
}
