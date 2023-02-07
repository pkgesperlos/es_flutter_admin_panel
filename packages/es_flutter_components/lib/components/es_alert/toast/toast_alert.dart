import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_text/es_ordinary_text.dart';
import 'package:es_flutter_components/resources/Constants/dims.dart';
import 'package:es_flutter_components/resources/Constants/enums.dart';
import 'package:es_flutter_components/resources/Constants/styles.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

class ToastAlert {
  static show(BuildContext context,
      {required String text,
      ToastAlertDuration toastAlertDuration = ToastAlertDuration.long,
      Color? backgroundColor,
      Color? textColor,
      Decoration? decoration,
       bool? hasClose,
      Widget? closeIcon,
      Widget? icon,
        Widget? myContent}) {
    OverlayState? overlayState = Overlay.of(context);
    OverlayEntry? overlayEntry;

    overlayEntry = OverlayEntry(builder: (context) {
      return ToastAlertBuilder(
          overlayState: overlayState,
          overlayEntry: overlayEntry,
          toastAlertDuration: toastAlertDuration,
          text: text,
          backgroundColor: backgroundColor,
          textColor: textColor,
          decoration: decoration,
          hasClose: hasClose??false,
          closeIcon: closeIcon,
          icon: icon,
        myContent: myContent,
      );
    });

    overlayState!.insert(overlayEntry);
  }
}

class ToastAlertBuilder extends StatefulWidget {
  OverlayState? overlayState;
  OverlayEntry? overlayEntry;
  ToastAlertDuration? toastAlertDuration;
  String text;
  Color? backgroundColor;
  Color? textColor;

  Decoration? decoration;
  bool hasClose;
  Widget? closeIcon;
  Widget? icon;
  Widget? myContent;

  ToastAlertBuilder({
    Key? key,
    this.overlayState,
    this.overlayEntry,
    this.toastAlertDuration,
    this.text = "",
    this.backgroundColor,
    this.decoration,
    this.closeIcon,
    this.icon,
    this.myContent,
    this.hasClose = false,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ToastAlertBuilderState();
  }
}

class ToastAlertBuilderState extends State<ToastAlertBuilder>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation =
        CurveTween(curve: Curves.fastOutSlowIn).animate(animationController!);

    animationController!.addListener(() {
      widget.overlayState!.setState(() {});
    });

    animationController!.forward();

    Future.delayed(Duration(
            seconds:
                widget.toastAlertDuration == ToastAlertDuration.long ? 3 : 2))
        .whenComplete(() => animationController!.reverse())
        .whenComplete(() => widget.overlayEntry!.remove());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.25,
      top: MediaQuery.of(context).size.height * 0.1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          child: FadeTransition(
            opacity: animation!,
            child: Container(
              alignment: Alignment.center,
              decoration: widget.decoration ??
                  BoxDecoration(
                    color: widget.backgroundColor ?? Styles.informationColorRegular,
                  ),
              width: MediaQuery.of(context).size.width * .5,
              padding: EdgeInsets.all(Dims.h1Padding),
              child: widget.myContent??Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment:(widget.hasClose||widget.icon!=null)? MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
                children: [
                  Row(

                    children: [
                      widget.icon ?? SizedBox(),
                      EsHSpacer(),
                      EsOrdinaryText(
                        widget.text,
                        align: TextAlign.center,
                        color: widget.textColor ?? Colors.black,
                      ),
                    ],
                  ),
                  widget.hasClose
                      ? InkWell(
                          child: widget.closeIcon ??
                              Icon(
                                Icons.clear,
                                color: widget.textColor ?? Colors.black,
                                size: Dims.h3IconSize,
                              ),
                          onTap: () {
                            Future.delayed(Duration(milliseconds: 1))
                                .whenComplete(
                                    () => animationController!.reverse());
                          },
                        )
                      : SizedBox()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
