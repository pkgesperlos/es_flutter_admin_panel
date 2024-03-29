import 'package:es_flutter_components/resources/Constants/dims.dart';
import 'package:flutter/material.dart';


class EsVSpacer extends StatelessWidget{

  final bool big;
  final double factor;


  EsVSpacer({this.big = false,this.factor=1});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: big?factor*Dims.h1Padding:factor*Dims.h2Padding,
    );
  }
}