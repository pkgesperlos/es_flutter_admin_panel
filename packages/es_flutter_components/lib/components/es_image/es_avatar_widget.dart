
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import '../es_text/es_title.dart';

class EsAvatarWidget extends StatelessWidget {
  Widget widget;
  Color? backGroundColor;
  double? radius;
  double? size;
  bool? isrectangle;
  EsAvatarWidget({Key? key,required this.widget,
    this.radius,
    this.backGroundColor,
  }) : super(key: key);


  EsAvatarWidget.rectangle(
      {Key? key, required this.widget, this.size, this.isrectangle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double _radius =radius??(StructureBuilder.dims!.h3IconSize);
    double _size = size ?? (StructureBuilder.dims!.h1IconSize);

    return  isrectangle ?? false
        ? Container(
        clipBehavior: Clip.antiAlias,
        width: _size,
        height: _size,
        decoration: BoxDecoration(
            color: StructureBuilder.styles!.primaryDarkColor,
            borderRadius: BorderRadius.all(Radius.circular(_size/4))),
        child: Container(

            height: _size ,
            width: _size,
            child:SizedBox(
                height: _size,
                width: _size,
                child: Center(child: widget))))
        : CircleAvatar(

        backgroundColor: backGroundColor??StructureBuilder.styles!.primaryDarkColor,
        radius:_radius,
        child: SizedBox(
            height: _size,
            width: _size,
            child: Center(child: widget))
    );

  }


}
