import 'package:es_flutter_component/es_alert/es_alerts.dart';
import 'package:flutter/material.dart';

import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:es_flutter_component/resources/Constants/styles.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';

///this class is a customized flat button that use in whole of app
class EsIconButton extends StatefulWidget {
  VoidCallback? onTap;
  Widget? icon;
  Color? borderColor;
  Color? fillColor;
  Color iconColor;
  Color? loadingColor;
  double? size;
  double? borderRadiusSize;
  bool disable;
  bool useShadow;
  bool useConfidence;
  bool isLoading;
  bool clickable;
  EsIconButton(this.icon, {
    this.onTap,
    this.borderColor,
    this.iconColor = Styles.t6Color,
    this.fillColor = Styles.primaryColor,
    this.disable = false,
    this.useShadow = false,
    this.useConfidence = false,
    this.size,
    this.borderRadiusSize,
    this.isLoading = false,
    this.clickable = true,
    this.loadingColor = Colors.white,
  });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new EsIconButtonState();
  }
}

class EsIconButtonState extends State<EsIconButton> {
  late Color? _hoverColor;
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
      // decoration:
      // widget.useShadow ? Styles.cardBoxDecoration : null,
      child: Material(
        color: widget.fillColor ?? StructureBuilder.styles!.primaryColor,
        borderRadius:  BorderRadius.circular(widget.borderRadiusSize??StructureBuilder.dims!.h2Padding),
        clipBehavior: Clip.antiAlias,
        child:
        IgnorePointer(
        ignoring: !widget.clickable,
        child: InkWell(
          hoverColor: widget.disable?Colors.transparent:Colors.black.withOpacity(.1),
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              border: border(),
              borderRadius: BorderRadius.circular(widget.borderRadiusSize??StructureBuilder.dims!.h2Padding),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: Dims.h2Padding,
                vertical: Dims.h2Padding),
            child:

            Stack(
              alignment: Alignment.center,
              children: [
                Visibility(
                    visible: !_isLoading,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child:
                    widget.icon??
                    Container()
                ),
                Visibility(
                    visible: _isLoading,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: SizedBox(
                        width: widget.size ??StructureBuilder.dims!.h0Padding,
                        height: widget.size ??StructureBuilder.dims!.h0Padding,
                        child: CircularProgressIndicator(
                          color: widget.loadingColor,

                      ),)),
              ],
            )

          ),
        ),),
      ),
    );
  }

  border() {
    if (widget.borderColor == null) {
      return null;
    } else {
      return Border.all(color: widget.borderColor ??StructureBuilder.styles!.primaryColor,);
    }
  }

  onTap() {
    if (widget.useConfidence) {
      EsAlerts.confidence(context,
          title: "اخطار",
          content: "آیا از انجام این عملیات مطمئنید؟", onConfirmPress: () {
            widget.onTap!();
          });
    } else {
      widget.onTap!();
    }
  }

  @override
  void didUpdateWidget(covariant EsIconButton oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    _isLoading = widget.isLoading;
  }
}
