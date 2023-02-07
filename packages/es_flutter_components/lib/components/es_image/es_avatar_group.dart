import 'package:es_flutter_components/components/es_image/es_avatar_image.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

class EsAvatarGroup extends StatelessWidget {
  List<Widget> avatarList;
  List<double>? alignList;
  double? width;
   EsAvatarGroup({Key? key,
     required this.avatarList,
      this.alignList,
     this.width
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<double> _alignfactor=alignList
        ??List.generate(avatarList.length, (index) => 0.4);
    double _width=width??StructureBuilder.dims!.h0Padding*10;
    return SizedBox(
      width: _width,
      child: Stack(
        children: [

          ...List.generate(avatarList.length,
                (index) => Align(
                    alignment: Alignment(index*_alignfactor[index],0),
                    child: avatarList[index]
                ),)

        ],
      ),
    );

  }
}
