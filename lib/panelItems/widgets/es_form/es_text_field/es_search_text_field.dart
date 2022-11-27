import 'dart:async';

import 'package:es_flutter_component/resources/Constants/styles.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';



class EsSearchTextField extends StatefulWidget {
  final String? hint;
  final Widget? icon;

  final Duration duration;
  final TextEditingController? controller;
  final Function(String text)? onChange;
  void Function()? onEditingComplete;

  final bool border;
  final Color? fillColor;
  final TextStyle? hintStyle;
  final Color? borderColor;
  final BorderRadius? borderRadius;


   EsSearchTextField({
    Key? key,
    this.hint,
    this.icon,
    this.onChange,
     this.onEditingComplete,
    this.controller,
     this.border=false,
    this.fillColor ,
    this.hintStyle,
    this.borderColor ,
     this.borderRadius,
    this.duration = const Duration(seconds: 1)
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _EsSearchTextField();
  }
}

class _EsSearchTextField extends State<EsSearchTextField> {
  late String _startText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: StructureBuilder.dims!.textFieldHight,
      child: TextField(
        onEditingComplete: widget.onEditingComplete,
        controller: widget.controller,
        onChanged: (String text) {
          _startText = text;

          Timer.periodic(widget.duration, (timer) {
            timer.cancel();
            if (_startText.length == text.length ) {

              try{
                widget.onChange!(_startText);
              }
              catch(e){

              }
            }
          });


        },
        style: Styles.inputStyle,
        decoration: InputDecoration(
          hintStyle: widget.hintStyle?? Styles.inputStyle,
          filled: true,
          fillColor: widget.fillColor ?? Styles.t6Color,
          contentPadding: EdgeInsets.symmetric(
              vertical: StructureBuilder.dims!.h0Padding,
              horizontal:  StructureBuilder.dims!.h0Padding),
          prefixIconConstraints: BoxConstraints(maxWidth: StructureBuilder.dims!.h0Padding*5,maxHeight: 5*StructureBuilder.dims!.h0Padding),
          prefixIcon: Padding(
            padding:  EdgeInsets.symmetric(horizontal: StructureBuilder.dims!.h2Padding),
            child: widget.icon,
          ),
          border:widget.border? OutlineInputBorder(
              borderRadius:widget.borderRadius?? BorderRadius.all(Radius.circular(StructureBuilder.dims!.h1BorderRadius))
          ):null,
          enabledBorder:widget.border? OutlineInputBorder(
              borderRadius:widget.borderRadius?? BorderRadius.all(Radius.circular(StructureBuilder.dims!.h1BorderRadius)),
              borderSide: BorderSide(color: widget.borderColor?? Styles.t7Color)):null,
          // border:UnderlineInputBorder(
          //   borderRadius: BorderRadius.circular(25),
          // ),

          // labelText: widget.type,
          hintText: widget.hint,

        ),
      ),
    );
  }
}
