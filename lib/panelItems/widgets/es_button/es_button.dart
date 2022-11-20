
import 'package:es_flutter_component/resources/Constants/enums.dart';
import 'package:flutter/material.dart';

import 'package:es_flutter_component/resources/structure_builder.dart';

import '../es_text/es_icon_text.dart';
import '../es_text/es_title.dart';

class EsButton extends StatefulWidget {
  String? text = "";
  VoidCallback? onTap;
  Widget? icon;
  Color? textColor ;
  Color? hoverColor;
  Color? borderColor;
  double? borderRadiusSize;
  Color? fillColor;
  double? size;
  bool disable;
  bool useShadow;
  bool useConfidence;
  ButtonDirection iconSide;
  bool isLoading;
  Color? loadingColor;
  bool isBold;
  bool clickable;

  EsButton(
      {this.onTap,
      required this.text,
      this.icon,
      this.textColor ,
      this.hoverColor,
      this.borderColor,
      this.borderRadiusSize,
      this.fillColor ,
      this.disable = false,
      this.useShadow = false,
      this.size,
      this.isLoading = false,
      this.loadingColor ,
      this.iconSide = ButtonDirection.start,
      this.isBold = false,
      this.clickable = true,
      this.useConfidence = false});


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new EsButtonState();
  }
}

class EsButtonState extends State<EsButton> {
  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _isLoading = widget.isLoading;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // decoration: widget.useShadow ? Styles.cardBoxDecoration : null,
      child: Material(
        color: widget.fillColor ?? StructureBuilder.styles!.buttonColor().primary,
        borderRadius: BorderRadius.circular(widget.borderRadiusSize??StructureBuilder.dims!.h2Padding),
        clipBehavior: Clip.antiAlias,
        child: IgnorePointer(
          ignoring: !widget.clickable,
          child: InkWell(
            hoverColor: widget.disable?Colors.transparent:widget.hoverColor??Colors.white.withOpacity(.2),
            onTap: onTap,
            child: Container(

                padding: EdgeInsets.symmetric(
                    horizontal: widget.size == null
                        ? StructureBuilder.dims!.h0Padding
                        : widget.size! / 2,
                    vertical: StructureBuilder.dims!.h1Padding),
                decoration: BoxDecoration(
                  border: border(),
                  borderRadius: BorderRadius.circular(widget.borderRadiusSize??StructureBuilder.dims!.h2Padding),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Visibility(
                        visible: !_isLoading,
                        maintainSize: true,
                        maintainAnimation: true,
                        maintainState: true,
                        child: EsIconText(

                          widget.text ?? "",
                          icon: widget.icon,
                          isBold: widget.isBold,
                          size: widget.size == null
                              ? StructureBuilder.dims!.h3FontSize
                              : widget.size! ,
                          color: widget.textColor??StructureBuilder.styles!.textColor().secondary,
                        )),
                    Visibility(
                        visible: _isLoading,
                        maintainSize: true,
                        maintainAnimation: true,
                        maintainState: true,
                        child:  SizedBox(
                            width: widget.size ??StructureBuilder.dims!.h0Padding,
                            height: widget.size ??StructureBuilder.dims!.h0Padding,
                            child: CircularProgressIndicator(
                              color: widget.loadingColor?? StructureBuilder.styles!.textColor().primary,

                            ),

                        )),
                  ],
                )),
          ),
        ),
      ),
    );
  }

  border() {
    if (widget.borderColor == null) {
      return null;
    } else {
      return Border.all(color: widget.borderColor ?? StructureBuilder.styles!.buttonColor().primary,);
    }
  }

  onTap() {
    if (widget.useConfidence) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                alignment: Alignment.center,
                title: EsTitle("اخطار"),
                content: Container(
                  height: 80,
                  child: EsTitle("آیا از انجام این عملیات مطمئنید؟"),
                ),
                actions: [
                  EsButton(
                    onTap: () {
                      widget.onTap!();
                    },
                    text: "بله",
                    fillColor: StructureBuilder.styles!.buttonColor().danger,
                  ),
                  EsButton(
                    onTap: () {},
                    text: "لغو",
                  ),
                ],
              ));
    } else {
      widget.onTap!();
    }
  }

  @override
  void didUpdateWidget(covariant EsButton oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    _isLoading = widget.isLoading;
  }
}
