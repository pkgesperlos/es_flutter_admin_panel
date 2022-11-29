library lightbox;

import 'dart:convert';
import 'dart:io';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import 'image_type.dart';
import 'package:intl/intl.dart' as intl;

class LightBoxGroup extends StatefulWidget {
  ///Array of images that will be display by the lightbox
  ///
  /// It may be paths to images in asset or from the user phone or urls for images to be fetch on the Internet
  /// Also can be base64 encoded Strings to be display as bytes
  final List<String> images;

  /// Gives the initial index of the Lightbox
  /// By default it has the value zero
  final int initialIndex;

  /// This parameter indicates wheter the images parameters are urls,bytes or assets
  /// By default it has value is [ImageType.URL]
  final ImageType imageType;

  /// Gives the value of the Gaussian blur
  final double blur;

  ///Icon to close the lightbox
  final Widget? closeIcon;


  /// Close text to be display
  final String closeText;

  /// Close text color
  final Color closeTextColor;

  /// Previous Icon
  final Widget? prevIcon;


  /// Previous button text
  final String prevText;

  /// Previous button text color
  final Color prevTextColor;

  /// Next Icon
  final Widget? nextIcon;


  /// Next button text
  final String nextText;

  /// Next button text color
  final Color nextTextColor;

  /// This is the lightBox widget which is used to display the image as diaporama
  /// with controls
  LightBoxGroup(
      {required this.images,
      this.initialIndex = 0,
      this.imageType = ImageType.URL,
      this.blur = 2.5,
      this.closeIcon ,
      this.closeText = 'Close',
      this.closeTextColor = Colors.black,
      this.prevIcon,
      this.prevText = 'Prev',
      this.prevTextColor = Colors.black,
      this.nextIcon,
      this.nextText = 'Next',
      this.nextTextColor = Colors.black});
  @override
  _LightBoxGroupState createState() => _LightBoxGroupState();
}

class _LightBoxGroupState extends State<LightBoxGroup> {
  late PageController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController(
        viewportFraction: 1, keepPage: true, initialPage: widget.initialIndex);
  }

  void changePageViewPosition(int whichPage) {
    if (whichPage < widget.images.length && whichPage >= 0) {
      controller.jumpToPage(whichPage);
    }
  }

  Widget widgetToUse(ImageType imageType, String path) {
    if (imageType == ImageType.URL) {
      return CachedNetworkImage(
        imageUrl: path,
        placeholder: (context, url) =>
            Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => Icon(Icons.error),
        fit: BoxFit.cover,
      );
    } else if (imageType == ImageType.ASSET) {
      return Image.asset(
        path,
        fit: BoxFit.cover,
      );
    } else if (imageType == ImageType.BYTES) {
      return Image.memory(
        base64Decode(path),
        fit: BoxFit.cover,
      );
    } else {
      return Image.file(
        File(path),
        fit: BoxFit.cover,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isDirectionRTL(BuildContext context) {
      return intl.Bidi.isRtlLanguage(
          Localizations.localeOf(context).languageCode);
    }

    bool _rtl = isDirectionRTL(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: widget.blur,
              sigmaY: widget.blur,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: (MediaQuery.of(context).size.height / 100) * 8,
                ),
                Padding(
                  padding:  EdgeInsets.all(StructureBuilder.dims!.h0Padding),
                  child: GestureDetector(
                    child:  Padding(
                      padding: EdgeInsets.only(
                        right: StructureBuilder.dims!.h0Padding,
                        bottom: StructureBuilder.dims!.h0Padding,),
                      child: widget.closeIcon?? Icon(Icons.close,color:
                      Colors.white,),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                IntrinsicWidth(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                          color: Colors.transparent,
                          child: InkWell(
                          onTap: () {
                            changePageViewPosition((controller.page! - 1).round());
                          },
                          child: EsSvgIcon(
                            _rtl
                                ?"packages/es_flutter_component/assets/svgs/CaretRight.svg"
                                : "packages/es_flutter_component/assets/svgs/CaretLeft.svg",color: Colors.white,))),
                      EsHSpacer(),
                      Container(
                          height: (MediaQuery.of(context).size.height / 100) * 70,
                          width: (MediaQuery.of(context).size.width / 100) * 50,
                          child: PageView.builder(
                              controller: controller,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: widget.images.length,
                              itemBuilder: (context, position) {
                                return widgetToUse(
                                    widget.imageType, widget.images[position]);
                              })),
                      EsHSpacer(),
                      Material(
                          color: Colors.transparent,
                          child: InkWell(
                          onTap: () {
                            changePageViewPosition((controller.page! + 1).round());
                          },
                          child: EsSvgIcon(_rtl
                              ?"packages/es_flutter_component/assets/svgs/CaretLeft.svg"
                              : "packages/es_flutter_component/assets/svgs/CaretRight.svg",color: Colors.white,))),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
/* Row(
                  children: [
                    GestureDetector(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left:
                                    (MediaQuery.of(context).size.width / 100) *
                                        14,
                                top:
                                    (MediaQuery.of(context).size.height / 100) *
                                        1.5),
                            child: widget.prevIcon?? Icon(Icons.arrow_right),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top:
                                    (MediaQuery.of(context).size.height / 100) *
                                        1.5),
                            child: EsOrdinaryText(
                              widget.prevText,
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        changePageViewPosition((controller.page! - 1).round());
                      },
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left:
                                    (MediaQuery.of(context).size.width / 100) *
                                        42,
                                top:
                                    (MediaQuery.of(context).size.height / 100) *
                                        1.5),
                            child: Row(
                              children: [
                                EsOrdinaryText(
                                  'Next',

                                ),
                                widget.closeIcon?? Icon(Icons.arrow_back_ios_sharp),

                              ],
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        changePageViewPosition((controller.page! + 1).round());
                      },
                    )
                  ],
                )*/