import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

class EsAvatarImage extends StatelessWidget {
  String path;
  double? radius;
  double? size;
  bool? isrectangle;

  EsAvatarImage({Key? key, required this.path, this.radius}) : super(key: key);

  EsAvatarImage.rectangle(
      {Key? key, required this.path, this.size, this.isrectangle,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _radius = radius ?? (StructureBuilder.dims!.h3IconSize);
    double _size = size ?? (StructureBuilder.dims!.h1IconSize);
    return isrectangle ?? false
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
                child:Image.asset(

                  path,
                  fit: BoxFit.cover,
                )))
        : CircleAvatar(
            backgroundColor: StructureBuilder.styles!.primaryDarkColor,
            radius: _radius,
            child: SizedBox(
                height: _radius * 2,
                width: _radius * 2,
                child: ClipOval(
                  child: Image.asset(
                    path,
                    fit: BoxFit.cover,
                  ),
                )));
  }
}
