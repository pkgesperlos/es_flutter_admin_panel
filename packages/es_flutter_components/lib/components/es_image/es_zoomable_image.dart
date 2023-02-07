import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_view/photo_view.dart';


import 'dart:math';

class EsZoomingImage extends StatefulWidget {
  ImageProvider imageProvider;
   double? minScale ;
   double? defScale ;
   double? maxScale ;
   EsZoomingImage({Key? key,
     required this.imageProvider,
     this.defScale,
     this.minScale,
     this.maxScale}) : super(key: key);
  @override
  _EsZoomingImageState createState() => _EsZoomingImageState();
}

const double min = pi * -2;
const double max = pi * 2;


class _EsZoomingImageState extends State<EsZoomingImage> {
  late PhotoViewControllerBase controller;
  late PhotoViewScaleStateController scaleStateController;

  int calls = 0;

  @override
  void initState() {
    controller = PhotoViewController(initialScale: widget.defScale??1.0)
      ..outputStateStream.listen(onController);

    scaleStateController = PhotoViewScaleStateController()
      ..outputScaleStateStream.listen(onScaleState);
    super.initState();
  }

  void onController(PhotoViewControllerValue value) {
    setState(() {
      calls += 1;
    });
  }

  void onScaleState(PhotoViewScaleState scaleState) {
    print(scaleState);
  }

  @override
  void dispose() {
    controller.dispose();
    scaleStateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: PhotoView(
              imageProvider:  widget.imageProvider,
              controller: controller,
              scaleStateController: scaleStateController,
              enableRotation: true,
              initialScale: widget.defScale??1.0,
              minScale: widget.minScale??0.03,
              maxScale: widget.maxScale??10.0,
            ),
          ),
          Positioned(
            bottom: 0,
            height: 290,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(30.0),
              child: StreamBuilder(
                stream: controller.outputStateStream,
                initialData: controller.value,
                builder: _streamBuild,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _streamBuild(BuildContext context, AsyncSnapshot snapshot) {
    if (snapshot.hasError || !snapshot.hasData) {
      return Container();
    }
    final PhotoViewControllerValue value = snapshot.data;
    return Column(
      children: <Widget>[
        Text(
          "Rotation ${value.rotation}",
          style: const TextStyle(color: Colors.white),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.orange,
            thumbColor: Colors.orange,
          ),
          child: Slider(
            value: value.rotation.clamp(min, max),
            min: min,
            max: max,
            onChanged: (double newRotation) {
              controller.rotation = newRotation;
            },
          ),
        ),
        Text(
          "Scale ${value.scale}",
          style: const TextStyle(color: Colors.white),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.orange,
            thumbColor: Colors.orange,
          ),
          child: Slider(
            value: value.scale!.clamp(widget.minScale??0.03,widget.maxScale??10.0,),
            min: widget.minScale??0.03,
            max: widget.maxScale??10.0,

            onChanged: (double newScale) {
              controller.scale = newScale;
            },
          ),
        ),
        Text(
          "Position ${value.position.dx}",
          style: const TextStyle(color: Colors.white),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.orange,
            thumbColor: Colors.orange,
          ),
          child: Slider(
            value: value.position.dx,
            min: -1000.0,
            max: 1000.0,
            onChanged: (double newPosition) {
              controller.position = Offset(newPosition, controller.position.dy);
            },
          ),
        ),
        Text(
          "ScaleState ${scaleStateController.scaleState}",
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
