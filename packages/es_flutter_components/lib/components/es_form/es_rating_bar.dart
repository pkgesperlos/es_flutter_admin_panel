import 'package:es_flutter_components/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class EsRatingBar extends StatefulWidget {
  double? initialRate;
  double? minRating;
  Widget? icon;

  EsRatingBar({Key? key, this.initialRate, this.minRating, this.icon})
      : super(key: key);

  @override
  _EsRatingBarState createState() => _EsRatingBarState();
}

class _EsRatingBarState extends State<EsRatingBar> {
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating:widget.initialRate?? 3,
      minRating:widget.minRating?? 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => widget.icon??EsSvgIcon(
        "packages/es_flutter_components/assets/svgs/star.svg",
        size: StructureBuilder.dims!.h2IconSize * 0.7,
        color: StructureBuilder.styles!.specificColor,
      ),
      onRatingUpdate: (rating) {},
    );
  }
}
