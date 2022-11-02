import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:es_flutter_component/resources/Constants/styles.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

// import '../es_spacer/es_h_spacer.dart';
// import '../resources/Constants/dims.dart';
// import '../resources/Constants/styles.dart';

class EsDottedText extends StatelessWidget {
  String data;
  TextAlign? align;
  double? size;
  Color? color;
  bool isBold;

  EsDottedText(this.data,
      {Key? key,
      this.align ,
      this.size,
      this.color,
      this.isBold = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return IntrinsicWidth(
      child: RichText(
        textAlign: align??TextAlign.start,
        text: TextSpan(
          children: [

            WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child:Icon(Icons.circle,
                  size: size??StructureBuilder.dims!.h3FontSize/2,
                  color: color??StructureBuilder.styles!.textColor().primary,
                )
            ),
            WidgetSpan(child: EsHSpacer()),
            WidgetSpan(alignment: PlaceholderAlignment.bottom,
                child: EsOrdinaryText(data,
                  size: size??StructureBuilder.dims!.h3FontSize,
                  color: color??StructureBuilder.styles!.textColor().primary,
                isBold: isBold,
                )),


          ],
        ),

      ),
    );
  }
}