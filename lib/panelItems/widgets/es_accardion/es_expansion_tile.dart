import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class EsExpansionTile extends StatefulWidget {

  Icon? icon;
  Icon? openIcon;
  Icon? closeIcon;
  Decoration? decoration;
  EdgeInsetsGeometry? tilePadding;
  EdgeInsetsGeometry? childrenPadding;
  Widget title;
  List<Widget> children;
  EdgeInsetsGeometry? margin;
  String? backGroundImagePath;
  Color? iconColor;
  Color? textColor;
  Color? collapsedIconColor;
  Color? collapsedTextColor;

  EsExpansionTile(
      {
      this.icon,
      this.openIcon,
      this.closeIcon,
      this.decoration,
      this.tilePadding,
      this.childrenPadding,
        required this.title,
        required this.children,
      this.margin,
      this.backGroundImagePath,
      this.iconColor,
      Key? key})
      : super(key: key);

  @override
  _EsExpansionTileState createState() => _EsExpansionTileState();
}

bool isExpanded = false;

class _EsExpansionTileState extends State<EsExpansionTile> {
  // Generate a list of list items
  // In real app, data often is fetched from an API or a database

  // This function is called when a "Remove" button associated with an item is pressed


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // this key is required to save and restore ExpansionTile expanded state

      margin: widget.margin ??
          EdgeInsets.symmetric(vertical: StructureBuilder.dims!.h1Padding),
      decoration: widget.decoration ??
          BoxDecoration(
            // color: StructureBuilder.styles!.primaryDarkColor,
            // borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h0Padding))
          ),
      child: Stack(
        children: [
          widget.backGroundImagePath == null
              ? Container()
              : Positioned.fill(
            child: Container(
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                widget.backGroundImagePath ?? "",
                fit: BoxFit.cover,
              ),
              decoration: widget.decoration ??
                  BoxDecoration(
                    // color: StructureBuilder.styles!.primaryDarkColor,
                    // borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h0Padding))
                  ),
            ),
          ),
          ExpansionTile(
            // controlAffinity: ListTileControlAffinity.leading,
            textColor: widget.textColor??StructureBuilder.styles!.primaryColor,
            collapsedTextColor: widget.collapsedTextColor??StructureBuilder.styles!.primaryColor,
            collapsedIconColor:widget.collapsedIconColor?? StructureBuilder.styles!.primaryColor,

            trailing: isExpanded
                ? widget.closeIcon ??
                EsSvgIcon(
                  "assets/svgs/up.svg",
                  size: StructureBuilder.dims!.h3IconSize*0.8,
                  color:widget.iconColor?? StructureBuilder.styles!.primaryColor,
                )
                : widget.openIcon ??
                EsSvgIcon(
                  "assets/svgs/down.svg",
                  size: StructureBuilder.dims!.h3IconSize*0.8,
                  color:widget.iconColor?? StructureBuilder.styles!.primaryColor,
                ),
            onExpansionChanged: (bool expanded) {
              setState(() {
                isExpanded = expanded;
              });
            },
            iconColor: widget.iconColor??StructureBuilder.styles!.primaryColor,
            tilePadding: widget.tilePadding ??
                EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: StructureBuilder.dims!.h1Padding),

            childrenPadding: widget.childrenPadding ??
                EdgeInsets.symmetric(
                    vertical: StructureBuilder.dims!.h1Padding,
                    horizontal: StructureBuilder.dims!.h1Padding),
            expandedCrossAxisAlignment: CrossAxisAlignment.end,

            maintainState: true,
            title: widget.title,
            // contents
            children: widget.children
          ),
        ],
      ),
    );
  }
}
