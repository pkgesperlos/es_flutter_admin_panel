
import 'package:es_flutter_components/components/es_button/es_button.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';

import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class EsAndroidTimePicker extends StatefulWidget {
  String title;
  Widget? subTitleWidget;
  void Function(String?)? onChange;
  TimeOfDay? initialTime;

  EsAndroidTimePicker({
    required this.title,
    this.subTitleWidget,
    this.onChange,
    this.initialTime,
  });
  @override
  _EsAndroidTimePicker createState()
  {
    return _EsAndroidTimePicker();
  }
}

class _EsAndroidTimePicker extends State<EsAndroidTimePicker> {
  late TimeOfDay selectedTime;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     selectedTime =widget.initialTime?? TimeOfDay.now();
  }
  @override
  Widget build(BuildContext context) {

    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          EsButton(
            onTap: () {
              _selectTime(context);
              widget.onChange!("${selectedTime.hour}:${selectedTime.minute}");
            },
            text:widget.title ,
          ),
          EsVSpacer(),
          EsOrdinaryText("${selectedTime.hour}:${selectedTime.minute}"),
          EsVSpacer(),
          widget.subTitleWidget ??Container(),

        ],
      ),
    );
  }
  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,

    );
    if(timeOfDay != null && timeOfDay != selectedTime)
    {
      setState(() {
        selectedTime = timeOfDay;

      });
    }
  }
}