import 'package:es_flutter_components/components/es_form/es_rating_bar.dart';
import 'dart:math';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:es_flutter_components/components/es_image/es_avatar_image.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../main.dart';


class EsContentCard extends StatefulWidget {
  List<Widget>? avatarList;
  List<String>? contentList;
  List<double>? rateList;

  EsContentCard({
    Key? key,
    this.avatarList,
    this.contentList,
    this.rateList,
  }) : super(key: key);

  @override
  State<EsContentCard> createState() => _EsContentCardState();
}

class _EsContentCardState extends State<EsContentCard> {
  CarouselController carouselController1 = CarouselController();

  @override
  Widget build(BuildContext context) {
    // int num=contentList!.length;
    List<Widget> _avatarList = widget.avatarList ??
        List.generate(
          4,
          (index) => EsAvatarImage(
            path: "assets/images/img${index + 1}.jpg",
            radius: StructureBuilder.dims!.h2IconSize,
          ),
        );
    List<String> _contentList = widget.contentList ??
        List.generate(
          4,
          (index) => AppLocalizations.of(context)!.lorm,
        );
    List<double> _rateList = widget.rateList ??
        List.generate(
          4,
          (index) => Random().nextDouble() * 5,
        );
    List<Widget> _widgetList = List.generate(
      4,
      (index) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: StructureBuilder.dims!.h0Padding,
          vertical: StructureBuilder.dims!.h0Padding,
        ),
        decoration: MyStyle.dashboardCardDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: [
            _avatarList[index],
            EsVSpacer(
              big: true,
              factor: 3,
            ),
            EsRatingBar(
              initialRate: _rateList[index],
            ),
            EsVSpacer(
              big: true,
              factor: 3,
            ),
            EsOrdinaryText(
              _contentList[index],
              align: TextAlign.justify,
              overFlowTag: true,
              maxLine: 5,
            ),
          ],
        ),
      ),
    );

    return Container(
      height: 305,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: StructureBuilder.styles!.decorationColor().card,
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h0BorderRadius))),
      child: CarouselSlider(
        carouselController: carouselController1,
        items: _widgetList,
        options: CarouselOptions(
            viewportFraction: 1,

            initialPage: 2,
            disableCenter: true,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(milliseconds: 100),
            // aspectRatio: 0.1,
            enlargeCenterPage: true),
      ),
    );
  }
}
