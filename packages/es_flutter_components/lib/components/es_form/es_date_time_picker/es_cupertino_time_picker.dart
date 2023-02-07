
import 'package:es_flutter_components/components/es_button/es_button.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';



class EsCupertinoTimePicker extends StatefulWidget {
  String title;
  Widget? subTitleWidget;
  void Function(String?)? onChange;
  TimeOfDay? initialTime;

  EsCupertinoTimePicker({
    required this.title,
    this.subTitleWidget,
    this.onChange,
    this.initialTime,
  });

  @override
  State<EsCupertinoTimePicker> createState() => _EsCupertinoTimePicker();
}

class _EsCupertinoTimePicker extends State<EsCupertinoTimePicker> {

  String dataH= "07";
  String dataM= "07";
  String dataS= "07";
  late TimeOfDay _initialTime;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initialTime=widget.initialTime??TimeOfDay.now();
     dataH=_initialTime.hour.toString();
     dataM= _initialTime.minute.toString();
     dataS= "00";

  }
  @override
  Widget build(BuildContext context) {

    return IntrinsicWidth(
      child: Column(
        children: <Widget>[

          EsButton(

              onTap: () {
                DatePicker.showTimePicker(context, showTitleActions: true,
                    onChanged: (date) {
                      print('change $date in time zone ' +
                          date.timeZoneOffset.inHours.toString());
                    }, onConfirm: (date) {
                  setState(() {
                    dataH=date.hour.toString();
                    dataM=date.minute.toString();
                    dataS=date.second.toString();



                  });
                  widget.onChange!(dataH+":"+dataM+":"+dataS);
                      // print('confirm $date');
                    }, currentTime: DateTime.now());
              }, text: widget.title,
              ),
          EsVSpacer(),
          EsOrdinaryText(dataH+":"+dataM+":"+dataS),
          EsVSpacer(),
          widget.subTitleWidget ??Container(),


        ],
      ),
    );
  }
}
