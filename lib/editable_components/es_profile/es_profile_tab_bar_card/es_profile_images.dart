
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

import '../../es_card/es_image_card/es_image_card_7.dart';


class EsProfileImagesCard extends StatelessWidget {
  List<String> imagePathList;




   EsProfileImagesCard({Key? key,
   required this.imagePathList,


   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bootstrapGridParameters(
      gutterSize: 10,
    );
    return SingleChildScrollView(
      child: BootstrapContainer(

          fluid: true,
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: StructureBuilder.styles!.primaryLightColor,
          ),
          children: List.generate(imagePathList.length, (index) {

            return _boxShow(EsImageCard7(imagePath: imagePathList[index],));
          })

      ),
    );
  }


  Widget _boxShow(Widget widget) {
    return BootstrapCol(
        sizes: 'col-sm-6 col-ml-4 col-lg-3 col-xl-2', child: widget);
  }

}
