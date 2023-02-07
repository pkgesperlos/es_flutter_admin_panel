
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_components/resources/Constants/enums.dart';
import 'package:flutter/material.dart';


import 'package:es_flutter_components/resources/Constants/dims.dart';
import 'package:es_flutter_components/resources/Constants/styles.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';

class EsTextButton extends StatefulWidget {
  VoidCallback? onTap;
  String? text ;
  Color? textColor ;
  Color? borderColor;
  Color? hoverColor;
  double? borderRadiusSize;
  Color? fillColor;
  double? size;
  bool useShadow;
  bool useConfidence;
  ButtonDirection? iconSide;
  bool isLoading;
  Color? loadingColor;
  bool isBold;
  bool clickable;

  EsTextButton(
      {this.onTap,
      required this.text,
      this.textColor,
      this.borderColor,
      this.hoverColor,
      this.borderRadiusSize,
      this.fillColor,
      this.size,
      this.useShadow = false,
      this.useConfidence = false,
      this.iconSide,
      this.isLoading = false,
      this.loadingColor ,
      this.isBold = false,
      this.clickable = true,
      });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new EsTextButtonState();
  }
}

class EsTextButtonState extends State<EsTextButton> {
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
      // decoration: widget.useShadow ? Styles.cardBoxDecoration: null,
      child: Material(
        color: widget.fillColor?? StructureBuilder.styles!.buttonColor().primary,
        borderRadius: BorderRadius.circular(widget.borderRadiusSize??StructureBuilder.dims!.h2Padding),
        clipBehavior: Clip.antiAlias,
        child: IgnorePointer(
          ignoring: !widget.clickable,
          child: InkWell(
            hoverColor: widget.hoverColor??StructureBuilder.styles!.decorationColor().buttonHover,
            onTap: onTap,
            child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: widget.size == null
                        ? StructureBuilder.dims!.h0Padding
                        : widget.size! / 2 + StructureBuilder.dims!.h0Padding,
                    vertical: Dims.h1Padding),
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
                        child: EsTitle(
                          widget.text ?? "",
                          isBold: widget.isBold,
                          color: widget.textColor?? StructureBuilder.styles!.textColor().primary,
                        )),
                    Visibility(
                        visible: _isLoading,
                        maintainSize: true,
                        maintainAnimation: true,
                        maintainState: true,
                        child: Container(
                          width: StructureBuilder.dims!.h1FontSize,
                          height: StructureBuilder.dims!.h1FontSize,
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
                  EsTextButton(
                    onTap: () {
                      widget.onTap!();
                    },
                    text: "بله",
                    fillColor: StructureBuilder.styles!.buttonColor().danger,
                  ),
                  EsTextButton(
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
  void didUpdateWidget(covariant EsTextButton oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    _isLoading = widget.isLoading;
  }
}
