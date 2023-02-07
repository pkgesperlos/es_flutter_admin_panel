import 'package:es_flutter_components/components/es_button/es_button.dart';
import 'package:es_flutter_components/components/es_image/es_avatar_image.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../main.dart';

class EsProfileCard extends StatelessWidget {
  String? imagePath;
  String? avatarImagePath;
  String? name;
  String? jobName;
  String? content;
  int? contentNumber;
  int? followerNumber;
  int? likeNumber;

  EsProfileCard({
    Key? key,
    this.imagePath,
    this.avatarImagePath,
    this.name,
    this.jobName,
    this.content,
    this.contentNumber,
    this.followerNumber,
    this.likeNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(
        vertical: StructureBuilder.dims!.h1Padding,
      ),
      decoration: BoxDecoration(
          color: MyStyle.cardColor,
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h0BorderRadius))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  imagePath ?? "assets/images/img2.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(
                  child: Container(
                alignment: Alignment.center,
                child: CustomSingleChildLayout(
                  delegate: MySingleChildDelegate(),
                  child: EsAvatarImage(
                    path: avatarImagePath ?? "assets/images/img4.jpg",
                    radius: StructureBuilder.dims!.h0Padding * 2,
                  ),
                ),
              ))
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: StructureBuilder.dims!.h0Padding,
              vertical: StructureBuilder.dims!.h0Padding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                EsVSpacer(
                  big: true,
                  factor: 5,
                ),
                EsTitle(
                  name ?? AppLocalizations.of(context)!.title,
                ),
                EsVSpacer(
                  big: true,
                  factor: 2,
                ),
                EsOrdinaryText(
                  jobName ?? AppLocalizations.of(context)!.lormshort,
                  color: StructureBuilder.styles!.t3Color,
                ),
                EsVSpacer(
                  big: true,
                  factor: 2,
                ),
                EsOrdinaryText(
                  content ?? StructureBuilder.configs!.lorm,
                  align: TextAlign.justify,
                  overFlowTag: true,
                  maxLine: 3,
                ),
                EsVSpacer(
                  big: true,
                  factor: 2,
                ),
                EsButton(
                  text: AppLocalizations.of(context)!.editprofile,
                  icon: Icon(
                    Icons.edit,
                    color: StructureBuilder.styles!.primaryLightColor,
                    size: StructureBuilder.dims!.h3IconSize / 2,
                  ),
                ),
                EsVSpacer(
                  big: true,
                  factor: 2,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          EsTitle(
                            AppLocalizations.of(context)!.content,
                            isBold: true,
                            color: StructureBuilder.styles!
                                .informationColor()
                                .informationRegular,
                          ),
                          EsVSpacer(
                            big: true,
                          ),
                          EsTitle(
                            (contentNumber ?? 110).toString(),
                            isBold: true,
                            color: StructureBuilder.styles!
                                .informationColor()
                                .informationRegular,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          EsTitle(
                            AppLocalizations.of(context)!.follower,
                            isBold: true,
                            color: StructureBuilder.styles!
                                .successColor()
                                .successDark,
                          ),
                          EsVSpacer(
                            big: true,
                          ),
                          EsTitle(
                            (followerNumber ?? 110).toString(),
                            isBold: true,
                            color: StructureBuilder.styles!
                                .successColor()
                                .successDark,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          EsTitle(
                            AppLocalizations.of(context)!.like,
                            isBold: true,
                            color: StructureBuilder.styles!
                                .dangerColor()
                                .dangerRegular,
                          ),
                          EsVSpacer(
                            big: true,
                          ),
                          EsTitle(
                            (likeNumber ?? 110).toString(),
                            isBold: true,
                            color: StructureBuilder.styles!
                                .dangerColor()
                                .dangerRegular,
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MySingleChildDelegate extends SingleChildLayoutDelegate {
  @override
  Offset getPositionForChild(Size size, Size childSize) {
    // TODO: implement getPositionForChild

    return Offset(size.width * (1 / 2) - childSize.width * (1 / 2),
        size.height * (1) - childSize.height * (1 / 2));
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return false;
  }
}
