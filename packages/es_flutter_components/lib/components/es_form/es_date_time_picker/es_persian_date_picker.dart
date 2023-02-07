import 'package:es_flutter_components/components/es_button/es_button.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class EsPersianDatePicker extends StatefulWidget {
  String title;
  Widget? subTitleWidget;
  void Function(String?)? onChange;
  DateTime? initialTime;
  DateTime? minTime;
  DateTime? maxTime;

  EsPersianDatePicker({
    required this.title,
    this.subTitleWidget,
    this.onChange,
    this.initialTime,
    this.minTime,
    this.maxTime,
  });

  @override
  State<EsPersianDatePicker> createState() => _EsPersianDatePickerState();
}

class _EsPersianDatePickerState extends State<EsPersianDatePicker> {
  DateTime data = DateTime(1410, 12, 31);
  int datamonth = 9;
  int n = 0;


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
                    minTime: widget.minTime??DateTime(1350, 1, 1),
                    maxTime: widget.maxTime??DateTime(1410, 12, 1),
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
                    data = date.toLocal();
                    n = (date.month >= 4) ? -3 : 8;
                    datamonth = (date.month + n);

                    // print(data);
                  }


                  );
                  // print('confirm $date');
                  widget.onChange!(data.year.toString() +
                      "/" +
                      datamonth.toString() +
                      "/" +
                      data.day.toString());
                }, currentTime: DateTime.now(), locale: LocaleType.fa);
              }),
          EsVSpacer(),

              EsOrdinaryText(data.year.toString() +
                  "/" +
                  datamonth.toString() +
                  "/" +
                  data.day.toString()),
          EsVSpacer(),
          widget.subTitleWidget ??Container(),
        ],
      ),
    );
  }
}
