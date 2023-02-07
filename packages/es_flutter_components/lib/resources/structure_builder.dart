

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants/structure_config.dart';
import 'constants/structure_dims.dart';
import 'constants/structure_styles.dart';



class StructureBuilder extends InheritedWidget{

  final StatefulWidget child;
  static StructureStyles? styles;
  static StructureDims? dims;
  static StructureConfig? configs;


  StructureBuilder({
    required this.child,
     required StructureStyles styles,
    required StructureDims dims,
    required StructureConfig configs,
  }) : super(child: child){

    StructureBuilder.styles = styles;
    StructureBuilder.dims = dims;
    StructureBuilder.configs = configs;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }




}
//
//
//
//
//
// class StructureBuilder extends InheritedWidget{
//
//   final StatefulWidget child;
//   static StructureStyles styles;
//   static StructureDims dims;
//   static StructureConfig configs;
//
//
//   StructureBuilder({this.child,
//     StructureStyles styles,
//     StructureDims dims,
//     StructureConfig configs,
//   }){
//
//     StructureBuilder.styles = styles;
//     StructureBuilder.dims = dims;
//     StructureBuilder.configs = configs;
//   }
//
//   @override
//   bool updateShouldNotify(covariant InheritedWidget oldWidget) {
//     return true;
//   }
//
//
//
//
// }
//
//
//
//
//
//
//
