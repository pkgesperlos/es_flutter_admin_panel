import 'package:es_flutter_components/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl/intl.dart' as intl;

class EsSliderWithIconIndicator extends StatefulWidget {
  List<Widget> items;
  CarouselController controller;
  Widget? nextIcon;
  Widget? PreviousIcon;
  Alignment? alignment;

  EsSliderWithIconIndicator({
    Key? key,
    required this.items,
    required this.controller,
    this.nextIcon,
    this.PreviousIcon,
    this.alignment,
  }) : super(key: key);

  @override
  State<EsSliderWithIconIndicator> createState() =>
      _EsSliderWithIconIndicatorState();
}

class _EsSliderWithIconIndicatorState extends State<EsSliderWithIconIndicator> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    bool isDirectionRTL(BuildContext context) {
      return intl.Bidi.isRtlLanguage(
          Localizations.localeOf(context).languageCode);
    }

    bool _rtl = isDirectionRTL(context);

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
                enlargeCenterPage: true),
          ),
        ),
        Align(
          alignment: Alignment(0, 0.8),
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child: widget.PreviousIcon ??
                      EsSvgIcon(
                        _rtl
                            ? "packages/es_flutter_components/assets/svgs/CaretRight.svg"
                            : "packages/es_flutter_components/assets/svgs/CaretLeft.svg",
                        color: StructureBuilder.styles!.primaryLightColor,
                        size: StructureBuilder.dims!.h0Padding,
                      ),
                  onTap: () {
                    widget.controller.previousPage();
                  },
                ),
                InkWell(
                  child: widget.nextIcon ??
                      EsSvgIcon(
                        _rtl
                            ? "packages/es_flutter_components/assets/svgs/CaretLeft.svg"
                            : "packages/es_flutter_components/assets/svgs/CaretRight.svg",
                        color: StructureBuilder.styles!.primaryLightColor,
                        size: StructureBuilder.dims!.h0Padding,
                      ),
                  onTap: () {
                    widget.controller.nextPage();
                  },
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: widget.alignment ?? Alignment(0, 0.8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.items.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => widget.controller.animateToPage(entry.key),
                child: Container(
                    width: StructureBuilder.dims!.h1Padding,
                    height: StructureBuilder.dims!.h1Padding,
                    margin: EdgeInsets.symmetric(
                        horizontal: StructureBuilder.dims!.h3Padding),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == entry.key
                            ? StructureBuilder.styles!.specificColor
                            : StructureBuilder.styles!.primaryLightColor)),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
