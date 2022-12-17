import 'package:es_flutter_component/components/es_button/es_button.dart';
import 'package:es_flutter_component/components/es_image/es_avatar_image.dart';
import 'package:es_flutter_component/components/es_label/es_content_label.dart';
import 'package:es_flutter_component/components/es_text/es_header.dart';
import 'package:es_flutter_component/components/es_text/es_label_text.dart';
import 'package:es_flutter_component/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_spacer/es_h_divider.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EsProfileUsers extends StatelessWidget {
  List<String>? nameList;
  List<String>? descriptionList;
  List<String>? imagePathList;
  List<bool>? isFollowingList;



   EsProfileUsers({Key? key,
   this.nameList,
   this.descriptionList,
   this.imagePathList,
   this.isFollowingList,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _nemeList=nameList??[];
    List<String> _descriptionList=descriptionList??List.generate(_nemeList.length,
            (index) => AppLocalizations.of(context)!.lormshort,);
    List<String> _imagePathList=imagePathList??List.generate(_nemeList.length,
            (index) => "assets/images/img4.jpg",);
    List<bool> _isFollowingList=isFollowingList??List.generate(_nemeList.length,
            (index) => true);
    return SingleChildScrollView(
      child: Column(
        children: [
          ...List.generate(_nemeList.length, (index) =>
          followerCards(
            index,
            _nemeList,
            _descriptionList,
            _imagePathList,
            _isFollowingList,
            context
          ))
        ],
      ),
    );
  }

  Widget followerCards(int index
      ,List<String> widgetNameList
      ,List<String> widgetDescriptionList
      ,List<String> widgetImagePathList
      ,List<bool> widgetIsFollowingList,
      BuildContext context

      ){
    return Container(
      padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: EsAvatarImage(
                  path: widgetImagePathList[index],
                  radius: StructureBuilder.dims!.h0Padding,
                ),)
              ,EsHSpacer(),
              Expanded(
                  flex: 10,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        EsHeader(widgetNameList[index],
                          color: StructureBuilder.styles!.primaryColor,),
                        EsVSpacer(),
                        EsOrdinaryText(widgetDescriptionList[index],
                          color: StructureBuilder.styles!.t4Color,
                          align: TextAlign.start,
                        ),
                        EsVSpacer(big: true,),

                      ],
                    ),
                  )),

              Expanded(
                  flex: 2,
                  child: EsButton(
                    text: widgetIsFollowingList[index]
                        ?AppLocalizations.of(context)!.follower
                        :AppLocalizations.of(context)!.follow,
                    fillColor:widgetIsFollowingList[index]
                    ?StructureBuilder.styles!.primaryColor
                        :StructureBuilder.styles!.t2Color,
                  ))
            ],
          ),
          EsHDivider(),
        ],
      ),

    );
  }
}
