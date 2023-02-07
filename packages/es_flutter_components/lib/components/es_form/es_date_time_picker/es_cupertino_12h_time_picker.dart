
import 'package:es_flutter_components/components/es_button/es_button.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';


class EsCupertino12HTimePicker extends StatefulWidget {
  String title;
  Widget? subTitleWidget;
  void Function(String?)? onChange;
  TimeOfDay? initialTime;

  EsCupertino12HTimePicker({
    required this.title,
    this.subTitleWidget,
    this.onChange,
    this.initialTime,
  });

  @override
  State<EsCupertino12HTimePicker> createState() => _EsCupertino12HTimePicker();
}

class _EsCupertino12HTimePicker extends State<EsCupertino12HTimePicker> {


  String dataH= "07";
  String dataM= "07";
  bool PM=true;

  late TimeOfDay _initialTime;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initialTime=widget.initialTime??TimeOfDay.now();
    dataH=_initialTime.hour.toString();
    dataM= _initialTime.minute.toString();


  }


  @override
  Widget build(BuildContext context) {

    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          EsButton(
              onTap: () {
                DatePicker.showTime12hPicker(context, showTitleActions: true,
                    onChanged: (date) {
                      // print('change $date in time zone ' +
                      //     date.timeZoneOffset.inHours.toString());
                    }, onConfirm: (date) {
                  setState(() {
                    dataH=date.hour.toString();
                    dataM=date.minute.toString();
                    // dataM=date.isAfter(DateTime(12,00,00));

                  });
                  widget.onChange!(dataH+":"+dataM);
                      // print('confirm $date');
                    }, currentTime: DateTime.now());
              },
              text: widget.title),
          EsVSpacer(),
          EsOrdinaryText(dataH+":"+dataM),
          EsVSpacer(),
          widget.subTitleWidget ??Container(),


        ],
      ),
    );
  }
}
