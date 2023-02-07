import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class EsSliderWithIndicator extends StatefulWidget {
  List<Widget> items;
  CarouselController controller;


   EsSliderWithIndicator({Key? key,
     required this.items,
     required this.controller
   }) : super(key: key);

  @override
  State<EsSliderWithIndicator> createState() => _EsSliderWithIndicatorState();
}

class _EsSliderWithIndicatorState extends State<EsSliderWithIndicator> {

  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: CarouselSlider(
            carouselController: widget.controller,
            items: widget.items,
            options: CarouselOptions(
                viewportFraction: 0.8,
                // height: 270,
                initialPage: 2,
                disableCenter: true,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(milliseconds: 100),
                // aspectRatio: 0.1,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        EsVSpacer(),
        Align(
          alignment: Alignment(0, 0.8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.items.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () =>
                    widget.controller.animateToPage(entry.key),
                child: Container(
                    width: StructureBuilder.dims!.h1Padding,
                    height: StructureBuilder.dims!.h1Padding,
                    margin: EdgeInsets.symmetric(
                        horizontal: StructureBuilder.dims!.h3Padding),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == entry.key
                            ? StructureBuilder.styles!.specificColor
                            : StructureBuilder
                            .styles!.primaryLightColor)),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
