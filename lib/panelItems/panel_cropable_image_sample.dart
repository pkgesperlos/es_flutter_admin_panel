// import 'dart:io';
//
// 
// import 'package:es_flutter_component/components/es_image/es_dialog_cropper.dart';
// import 'package:es_flutter_component/components/es_image/es_zoomable_image.dart';
// import 'components/container_items.dart';
import 'components/page_title_container.dart';
// import 'package:es_flutter_component/resources/structure_builder.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bootstrap/flutter_bootstrap.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//
// //image_crop and  packages are used
// class PanelCropableImageSample extends StatefulWidget {
//   PanelCropableImageSample({Key? key}) : super(key: key);
//
//   @override
//   State<PanelCropableImageSample> createState() => _PanelCropableImageSampleState();
// }
//
// class _PanelCropableImageSampleState extends State<PanelCropableImageSample> {
//
//   CropController cropController =CropController();
//  late File _image;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//      _image = File("assets/images/img2.jpg");
//     cropController.inputFile =_image;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     List list = [
//
//       ContainerItems(
//           widget: Center(
//             child: Container(
//               width: 350,
//               height: 350,
//               child: InkWell(
//                 onTap: (){
//                   // showDialog(
//                   //     context: context,
//                   //     builder: (BuildContext context) => EsDialogCropper(
//                   //   controller: cropController,
//                   //       afterCrop: (){
//                   //         Navigator.pop(context);
//                   //         _image = cropController.outputFile;
//                   //       },
//                   //       aspectRatio: 1,
//                   //       freeCrop: true,
//                   //     ));
//                 },
//                   child:Image.asset( _image.path)),
//             ),
//           ),
//           title: AppLocalizations.of(context)!.zoomableimage,
//           information:
//           "It is a Zoomable image located in: \n es_flutter_component>lib>es_image/es_zoomable_image.dart\n and is used as: \n "
//               """EsZoomingImage(
//                 imageProvider:  AssetImage("assets/images/img1.jpg"),) \n the photo_view package should be added in pubspec.yaml 's dependencies"""),
//
//     ];
//     return Material(
//         color: StructureBuilder.styles!.primaryDarkColor,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               PageTitleContainer(
//                 title: AppLocalizations.of(context)!.zoomableimagetitle,
//               ),
//               BootstrapContainer(
//                   fluid: true,
//                   padding: EdgeInsets.symmetric(
//                       horizontal: StructureBuilder.dims!.h0Padding),
//                   decoration: BoxDecoration(
//                     color: StructureBuilder.styles!.primaryDarkColor,
//                   ),
//                   children: List.generate(
//                       list.length, (index) => boxShow(list[index])))
//             ],
//           ),
//         ));
//   }
//
//   Widget boxShow(Widget widget) {
//     return BootstrapCol(
//         sizes: 'col-sm-12 col-ml-12 col-lg-6 col-xl-6', child: widget);
//   }
//
//   Widget listShow(Widget widget) {
//     return Column(
//       children: List.generate(3, (index) => widget),
//     );
//   }
// }
