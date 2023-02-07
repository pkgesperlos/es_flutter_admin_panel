
import 'package:es_flutter_components/components/es_button/es_button.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';



class EsEnglishDatePicker extends StatefulWidget {
  String title;
  Widget? subTitleWidget;
  void Function(String?)? onChange;
  DateTime? initialTime;
  DateTime? minTime;
  DateTime? maxTime;

  EsEnglishDatePicker({required this.title,
    this.subTitleWidget,
    this.onChange,
    this.initialTime,
    this.minTime,
    this.maxTime,

  });

  @override
  State<EsEnglishDatePicker> createState() => _EsEnglishDatePicker();
}

class _EsEnglishDatePicker extends State<EsEnglishDatePicker> {

  DateTime data = DateTime(1410, 12, 31);
  int datamonth = 9;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    data =widget.initialTime?? DateTime.now();
    datamonth=data.month.abs();
  }

  @override
  Widget build(BuildContext context) {

    return IntrinsicWidth(
      child: Column(
        children: <Widget>[

          EsButton(
              text: widget.title,
              onTap: () {
                DatePicker.showDatePicker(context,
                    showTitleActions: true,
                    minTime:widget.minTime?? DateTime(1800, 1, 1),
                    maxTime:widget.maxTime?? DateTime(2040, 12, 31),
                    theme: DatePickerTheme(
                        headerColor: Colors.grey,
                        backgroundColor: Colors.white,
                        itemStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                        doneStyle: TextStyle(color: Colors.white, fontSize: 16)),
                    onChanged: (date) {}, onConfirm: (date) {
                  setState(() {
                    data = date.toLocal() ;
                    datamonth=(date.month-3);

                    // print(data);



                  });
                  widget.onChange!(data.year.toString()+"/"
                      +data.month.toString()+"/"+data.day.toString());
                  // print('confirm $date');
                }, currentTime: DateTime.now(), locale: LocaleType.en);
              }),
          EsVSpacer(),
          EsOrdinaryText(data.year.toString()+"/"+data.month.toString()+"/"+data.day.toString()),
          EsVSpacer(),
          widget.subTitleWidget ??Container(),
        ],
      ),
    );
  }
}
