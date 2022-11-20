import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import '../es_button/es_button.dart';
import '../es_text/es_ordinary_text.dart';
import '../es_text/es_title.dart';

// class EsModal extends StatelessWidget {
//
//   ModalType? modalType;
//   Widget? buttom;
//    EsModal({Key? key,
//    this.modalType,
//    this.buttom,
//    }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//
//
//
//
//     return _modalTypeWiget(modalType,context);
//   }
//
//
//
//
// }

class EsModal {

  EsModal.simple(
    context, {
    Widget? customWidget,
    bool? hasCustomWidget,
    bool? hasClose,
    bool? barrierDismissible,
    double? maxWidth,
    double? maxHeight,
    double? width,
    double? height,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showDialog(
          barrierDismissible: barrierDismissible ?? true,
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      StructureBuilder.dims!.h0BorderRadius)),
              child: hasCustomWidget ?? false
                  ? customWidget
                  : Container(
                      width: width ?? null,
                      height: height ?? null,
                      constraints: BoxConstraints(
                        maxWidth:
                            maxWidth ?? StructureBuilder.dims!.h0Padding * 20,
                        maxHeight:
                            maxHeight ?? StructureBuilder.dims!.h0Padding * 20,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.all(StructureBuilder.dims!.h0Padding),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              hasClose ?? true
                                  ? InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(Icons.close,
                                          color:
                                              StructureBuilder.styles!.t3Color))
                                  : Container(),
                              EsVSpacer(),
                              EsOrdinaryText(
                                StructureBuilder.configs!.lorm,
                                align: TextAlign.justify,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
            );
          });
    });
  }

  EsModal.fullScreen(context,
      {Widget? title, Widget? customWidget, bool? hasCustomWidget}) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showGeneralDialog(
        context: context,
        barrierDismissible: false,
        // should dialog be dismissed when tapped outside
        barrierLabel: "Modal",
        // label for barrier
        transitionDuration: Duration(milliseconds: 500),
        // how long it takes to popup dialog after button click
        pageBuilder: (_, __, ___) {
          // your widget implementation
          return Scaffold(
            appBar: AppBar(
              backgroundColor: StructureBuilder.styles!.primaryLightColor,
              centerTitle: true,
              leading: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: StructureBuilder.styles!.t3Color,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              title: title ??
                  EsTitle(
                    "title",
                  ),
            ),
            backgroundColor:
                StructureBuilder.styles!.primaryLightColor.withOpacity(0.90),
            body: hasCustomWidget ?? false
                ? customWidget
                : Container(
                    padding: EdgeInsets.fromLTRB(
                        StructureBuilder.dims!.h0Padding,
                        StructureBuilder.dims!.h1Padding * 2,
                        StructureBuilder.dims!.h0Padding,
                        StructureBuilder.dims!.h1Padding),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: const Color(0xfff8f8f8),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        EsOrdinaryText(
                          StructureBuilder.configs!.lorm,
                          align: TextAlign.justify,
                        ),
                       EsVSpacer(big: true,)
                      ],
                    ),
                  ),
          );
        },
      );
    });
  }

  EsModal.position(context,
      {Widget? title,
        Widget? customWidget,
        bool? hasCustomWidget,
        double? maxWidth,
        double? maxHeight,
        double? width,
        double? height,
        bool? hasClose,
        Alignment? alignment,
      }) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showGeneralDialog(
        context: context,
        barrierColor: Colors.black54,
        barrierDismissible: true,
        barrierLabel: 'Label',
        pageBuilder: (_, __, ___) {
          return Align(
            alignment:alignment?? Alignment.center,
            child: hasCustomWidget ?? false
                ? Material(
              color: StructureBuilder.styles!.primaryLightColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        StructureBuilder.dims!.h0BorderRadius)),
                child: customWidget)
                : Container(
              margin:
              EdgeInsets.all(StructureBuilder.dims!.h0Padding),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(StructureBuilder.dims!.h0BorderRadius))),
                  child: Material(
                    child: Container(

              width: width ?? null,
              height: height ?? null,
              constraints: BoxConstraints(
                    maxWidth:
                    maxWidth ?? StructureBuilder.dims!.h0Padding * 20,
                    maxHeight:
                    maxHeight ?? StructureBuilder.dims!.h0Padding * 20,
              ),
              child: Padding(
                    padding:
                    EdgeInsets.all(StructureBuilder.dims!.h0Padding),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          hasClose ?? true
                              ? InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.close,
                                  color:
                                  StructureBuilder.styles!.t3Color))
                              : Container(),
                          EsVSpacer(),
                          EsOrdinaryText(
                            StructureBuilder.configs!.lorm,
                            align: TextAlign.justify,
                          )
                        ],
                      ),
                    ),
              ),
            ),
                  ),
                ),
          );
        },
      );
    });
  }


  EsModal.bottom(context, {
    Widget? customWidget,
    Widget? title,
    bool? hasCustomWidget,
    bool? hasClose,
    bool? barrierDismissible,
    double? maxHeight,
    double? height,}) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showModalBottomSheet(
        isDismissible: barrierDismissible??true,
          context: context,
          backgroundColor: Colors.transparent,
          builder: (builder) {
            return new Container(
              constraints: BoxConstraints(
              maxHeight:
              maxHeight ?? StructureBuilder.dims!.h0Padding * 20,
            ),

              height:height?? 200,
              color: Colors.transparent,
              child: hasCustomWidget ?? false
                  ? customWidget
                  : Container(
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(10.0),
                          topRight: const Radius.circular(10.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10.0,
                            // has the effect of softening the shadow
                            spreadRadius:
                                0.0, // has the effect of extending the shadow
                          )
                        ],
                      ),

                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          title??Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 5, left: 10),
                                child: Text(
                                  "Bottom Modal",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black87),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 5, right: 5),
                                  child: FlatButton(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Save",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff999999),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                          EsVSpacer(big: true,),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  color: const Color(0xfff8f8f8),
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                EsOrdinaryText(
                                  StructureBuilder.configs!.lorm,
                                  align: TextAlign.justify,
                                ),
                                EsVSpacer(big: true,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
            );
          });
    });
  }

}
