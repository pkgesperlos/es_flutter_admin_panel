import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';






class EsRadioButtonGroup extends StatefulWidget {

  List<String> titleList;
  Widget? subTitleWidget;
  Axis? axis;
  TextEditingController controller;
  void Function(TextEditingController?)? onChanged;


   EsRadioButtonGroup({Key? key,
     required this.titleList,
     this.onChanged,
     this.subTitleWidget,
     this.axis,
     required this.controller}) : super(key: key);



  @override
  State<EsRadioButtonGroup> createState() => _EsRadioButton();
}
String? _character;
class _EsRadioButton extends State<EsRadioButtonGroup> {




  @override
  Widget build(BuildContext context) {

return Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
        Wrap(
      direction: widget.axis??Axis.horizontal,
      children:List.generate(widget.titleList.length, (index) =>
          IntrinsicWidth(
        child: Row(
              children: [
                EsOrdinaryText( widget.titleList[index],),
                radioWidget(index)
              ],),
      )


    )),
    widget.subTitleWidget??Container()
  ],
);
  }
Widget radioWidget(int index){
    return IntrinsicWidth(
      child: Radio(
        activeColor: StructureBuilder.styles!.primaryColor,
        fillColor: MaterialStateProperty.all(  StructureBuilder.styles!.primaryColor,),

        value: widget.titleList[index],
        groupValue: _character,
        onChanged: ( value) {

          setState(() {
            _character = value.toString();
            widget.controller.text=value.toString();


          });
          widget.onChanged!(widget.controller);
        },
      ),
    );
}
}
