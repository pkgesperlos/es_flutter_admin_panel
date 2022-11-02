import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:es_flutter_component/resources/Constants/styles.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
//
// import '../resources/Constants/dims.dart';
// import '../resources/Constants/styles.dart';
import 'es_ordinary_height_text.dart';

class EsIconText extends StatelessWidget {
  String data;
  Widget? icon;
  TextAlign? align;
  double? size;
  Color? color;
  bool isBold;

  EsIconText(this.data,
      {Key? key,
      this.icon,
      this.align ,
      this.size,
      this.color,
      this.isBold = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(

      child: RichText(

        textAlign: align??TextAlign.center,
        text: TextSpan(
          children: [
          WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: icon??Container()),
                WidgetSpan(child: EsHSpacer(),),
            WidgetSpan(alignment: PlaceholderAlignment.middle,
                child: EsOrdinaryHeightText(data,
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
