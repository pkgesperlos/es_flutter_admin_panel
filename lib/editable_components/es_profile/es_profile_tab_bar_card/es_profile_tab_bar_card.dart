import 'dart:math';

import 'package:es_flutter_component/components/es_button/es_button.dart';
import 'package:es_flutter_component/components/es_image/es_avatar_image.dart';
import 'package:es_flutter_component/components/es_image/es_avatar_widget.dart';
import 'package:es_flutter_component/components/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/components/es_tab_bar/es_top_tab_bar_navigation.dart';
import 'package:es_flutter_component/components/es_text/es_label_text.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/components/es_text/es_subtitle.dart';
import 'package:es_flutter_component/components/es_text/es_title.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../main.dart';
import '../../es-search_result/es_image_search_card.dart';
import 'es_profile_images.dart';
import 'es_profile_income.dart';
import 'es_profile_timeline.dart';
import 'es_profile_users.dart';

class EsProfileTabBarCard extends StatelessWidget {


  EsProfileTabBarCard({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    int num = 4;
    List<String> _titleList = [
      AppLocalizations.of(context)!.timeline,
      AppLocalizations.of(context)!.images,
      AppLocalizations.of(context)!.followers,
      AppLocalizations.of(context)!.income,

    ];
    List<Widget> _tabList = List.generate(
        num,
            (index) => EsTitle(
          _titleList[index],
          color: StructureBuilder.styles!.primaryDarkColor,
        ));

    List<Widget> _indicatorList = [
      EsAvatarImage(
        path: "assets/images/img4.jpg",
        radius: StructureBuilder.dims!.h0Padding,
      ),
      EsAvatarWidget(
          backGroundColor: StructureBuilder.styles!.dangerColor().dangerRegular,
          widget: EsTitle(
            "SA",
            color: StructureBuilder.styles!.primaryLightColor,
          )),
      EsAvatarWidget(
          widget: EsSvgIcon(
            "packages/es_flutter_component/assets/svgs/gallery.svg",
            size: StructureBuilder.dims!.h3IconSize,
            color: StructureBuilder.styles!.primaryLightColor,
          )),
      EsAvatarWidget(
          backGroundColor:
          StructureBuilder.styles!.warningColor().warningRegular,
          widget: EsTitle(
            "HH",
            color: StructureBuilder.styles!.primaryLightColor,
          )),
    ];
    Widget _content1() {
      return Container(

        padding: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h0Padding,
          horizontal: StructureBuilder.dims!.h0Padding,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EsTitle(AppLocalizations.of(context)!.lormshort),
              EsOrdinaryText(
                AppLocalizations.of(context)!.lorm,
                align: TextAlign.justify,
                color: StructureBuilder.styles!.primaryDarkColor,
              ),
              EsVSpacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.access_time,
                    size: StructureBuilder.dims!.h3IconSize / 2,
                    color: StructureBuilder.styles!.secondaryColor,
                  ),
                  EsHSpacer(),
                  EsLabelText(
                    AppLocalizations.of(context)!.yesterday,
                    color: StructureBuilder.styles!.secondaryColor,
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget _content2() {
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h0Padding,
          horizontal: StructureBuilder.dims!.h0Padding,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EsTitle(AppLocalizations.of(context)!.lormshort),
              EsOrdinaryText(
                AppLocalizations.of(context)!.lormmid,
                align: TextAlign.justify,
                color: StructureBuilder.styles!.primaryDarkColor,
              ),
              EsVSpacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.access_time,
                    size: StructureBuilder.dims!.h3IconSize / 2,
                    color: StructureBuilder.styles!.secondaryColor,
                  ),
                  EsHSpacer(),
                  EsLabelText(
                    "20.10.2018",
                    color: StructureBuilder.styles!.secondaryColor,
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget _content3() {
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h0Padding,
          horizontal: StructureBuilder.dims!.h0Padding,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/img1.jpg",
                    width: StructureBuilder.dims!.h0Padding * 5,
                    height: StructureBuilder.dims!.h0Padding * 5,
                    fit: BoxFit.cover,
                  ),
                  EsHSpacer(),
                  Image.asset(
                    "assets/images/img2.jpg",
                    width: StructureBuilder.dims!.h0Padding * 5,
                    height: StructureBuilder.dims!.h0Padding * 5,
                    fit: BoxFit.cover,
                  ),
                  EsHSpacer(),
                  Image.asset(
                    "assets/images/img3.jpg",
                    width: StructureBuilder.dims!.h0Padding * 5,
                    height: StructureBuilder.dims!.h0Padding * 5,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              EsVSpacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.access_time,
                    size: StructureBuilder.dims!.h3IconSize / 2,
                    color: StructureBuilder.styles!.secondaryColor,
                  ),
                  EsHSpacer(),
                  EsLabelText(
                    "20.10.2018",
                    color: StructureBuilder.styles!.secondaryColor,
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

    List<Widget> _contentList = [
      _content1(),
      _content2(),
      _content3(),
      _content2(),
    ];
    List<String> _imagPathList = List.generate(
        70,
            (index) => "assets/images/img2.jpg",);
    List<String> _nameList = List.generate(
      70,
          (index) => "Hanieh Hojjatzadeh",);
    List<bool> _isFollowingList = List.generate(
      70,
          (index) {
            if(index==2){return false;}
            if(index==5){return false;}
           return true;
          },);


    List<List<String>> _contentList2 =
        [
          ...List.generate(10, (index) {
            return [
              ...List.generate(3, (index2) {
                if (index2 == 0) {
                  return "07.11.2021";
                }
                if (index2 == 1) {
                  return (Random().nextInt(50)).toString();
                }
                if (index2 == 2) {
                  return AppLocalizations.of(context)!.currencyunit + "127000";
                }
                return AppLocalizations.of(context)!.lormshort;
              })
            ];
          }),
        ];

    List<Widget> _pageList = [
      EsProfileTimeLine(
        indicatorList: _indicatorList,
        contentList: _contentList,
      ),
      EsProfileImagesCard(
        imagePathList: _imagPathList,
      ),
      EsProfileUsers(
        nameList: _nameList,
        isFollowingList: _isFollowingList,
      ),
      EsProfileIncome(contentList: _contentList2,)


    ];

    return Container(

    width: double.infinity,
    // height: _height,
    child: EsTopTabBarNavigation(
    pageWidgets: _pageList, tabWidgets: _tabList),
    );
  }
}

