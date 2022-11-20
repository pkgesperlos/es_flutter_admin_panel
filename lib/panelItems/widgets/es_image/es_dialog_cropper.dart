// import 'package:es_flutter_component/es_button/es_button.dart';
// import 'package:es_flutter_component/resources/structure_builder.dart';
// import 'package:flutter/material.dart';
//
// import 'dart:async';
// import 'dart:io';
//
// class EsDialogCropper extends StatefulWidget {
//   CropController controller;
//   Function? afterCrop;
//   double aspectRatio;
//   bool freeCrop;
//
//   EsDialogCropper({ required this.controller,  this.afterCrop, required this.aspectRatio, this.freeCrop = false});
//
//   @override
//   _EsDialogCropperState createState() => new _EsDialogCropperState();
// }
//
// class _EsDialogCropperState extends State<EsDialogCropper> {
//   final cropKey = GlobalKey<CropState>();
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//     //openCropPage();
//   }
//
//   /*void openCropPage() async {
//     final sample = await ImageCrop.sampleImage(
//       file: widget.controller.inputFile,
//       //preferredSize: context.size.longestSide.ceil(),
//     );
//   }*/
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SafeArea(
//         child: Container(
//           color: Colors.black,
//           padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
//           child: _buildCroppingImage(),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildCroppingImage() {
//
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         Expanded(
//           child: Crop.file(
//             widget.controller.inputFile,
//             key: cropKey,
//             aspectRatio: 1,
//           ),
//           // child:Image.file(widget.controller.inputFile, )
//         ),
//         EsButton(
//             text: 'برش عکس',
//             fillColor: StructureBuilder.styles!.primaryColor,
//             textColor: StructureBuilder.styles!.primaryLightColor,
//
//             onTap: (){
//               // print("okkkkkkkkkkkkkkkkkkkkkk");
//               _cropImage();
//             }
//         )
//       ],
//     );
//   }
//
//   Future<void> _cropImage() async {
//     final permissionsGranted = await ImageCrop.requestPermissions();
//
//     if (permissionsGranted) {
//       final scale = cropKey.currentState!.scale;
//       final area = cropKey.currentState!.area;
//       // final scale = 0.3;
//       // final area = Rect.fromLTRB(0.3, 0.3, 0.7, 0.7);
//
//
//       if (area == null) {
//         // cannot crop, widget is not setup
//         return;
//       }
//
//       // scale up to use maximum possible number of pixels
//       // this will sample web_image in higher resolution to make cropped web_image larger
//       final sample = await ImageCrop.sampleImage(
//         file: widget.controller.inputFile,
//         preferredSize: (2000 / scale).round(),
//       );
//
//       final file = await ImageCrop.cropImage(
//         file: sample,
//         area: area,
//       );
//
//       widget.controller.outputFile = file;
//
//       widget.afterCrop!();
//     }
//   }
// }
//
// class CropController {
//   late File _inputFile, _outputFile;
//
//   File get inputFile => _inputFile;
//
//   set inputFile(File value) {
//     _inputFile = value;
//   }
//
//   get outputFile => _outputFile;
//
//   set outputFile(value) {
//     _outputFile = value;
//   }
// }
