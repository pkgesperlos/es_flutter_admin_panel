import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

class EsBlinkWaitingIndicator extends StatefulWidget {
  double? size;
  int? duration;
  Color? color;
   EsBlinkWaitingIndicator({Key? key,
     this.size,
     this.duration,
     this.color,
   }) : super(key: key);

  @override
  _EsBlinkWaitingIndicatorState createState() => _EsBlinkWaitingIndicatorState();
}

class _EsBlinkWaitingIndicatorState extends State<EsBlinkWaitingIndicator>
    with SingleTickerProviderStateMixin
{
  late AnimationController _controller;
  late Animation _animation;
  late Animation _colorAnimation;
  late int _duration;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     _duration=widget.duration??400;
    _controller = AnimationController(vsync: this)
      ..duration = Duration(milliseconds: _duration)
      ..addStatusListener((status) async {
        if (status == AnimationStatus.completed) {
         await _controller.reverse();
          _controller.forward();
        }
      });

    _controller.forward();
    double _size=widget.size?? StructureBuilder.dims!.h3IconSize;
    _animation = Tween<double>(
        begin:_size*0.7,
        end:_size,
    )
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn))..addListener(() {
      setState(() {
      });});
    _colorAnimation = ColorTween(
        begin:StructureBuilder.styles!.primaryLightColor,
        end:widget.color??StructureBuilder.styles!.primaryDarkColor,
    )
        .animate(_controller)..addListener(() {
      setState(() {
      });});


  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width:_animation.value ,
          height:_animation.value ,
          decoration: BoxDecoration(
            color: _colorAnimation.value,
            borderRadius: BorderRadius.all(Radius.circular(_animation.value ))
          ),
        ),

      ],
    );
  }
}
