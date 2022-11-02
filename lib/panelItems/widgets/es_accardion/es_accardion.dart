import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class EsAccardion extends StatefulWidget {
  List<Map<String, dynamic>> items;
  Widget? icon;
  Icon? openIcon;
  Icon? closeIcon;
  Decoration? decoration;
  EdgeInsetsGeometry? titlePadding;
  EdgeInsetsGeometry? childrenPadding;
  EdgeInsetsGeometry? margin;
  TextStyle? titleTextStyle;
  TextStyle? childrenTextStyle;
  bool isremovable;
  Widget? removeIcon;
  String? backGroundImagePath;
  Color? contentColor;

  EsAccardion(
      {required this.items,
      this.icon,
      this.openIcon,
      this.closeIcon,
      this.decoration,
      this.titlePadding,
      this.childrenPadding,
      this.margin,
      this.titleTextStyle,
      this.childrenTextStyle,
      this.isremovable = false,
      this.removeIcon,
      this.backGroundImagePath,
      this.contentColor,
      Key? key})
      : super(key: key);

  @override
  _EsAccardionState createState() => _EsAccardionState();
}

List<bool> isExpanded = [];

class _EsAccardionState extends State<EsAccardion> {
  // Generate a list of list items
  // In real app, data often is fetched from an API or a database

  // This function is called when a "Remove" button associated with an item is pressed
  void _removeItem(int id) {
    setState(() {
      widget.items.removeWhere((element) => element['id'] == id);
    });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(milliseconds: 600),
        content: Text('Item with id #$id has been removed')));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isExpanded = List.generate(widget.items.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(widget.items.length, (index) {
        final item = widget.items[index];
        return Container(
          // this key is required to save and restore ExpansionTile expanded state
          key: PageStorageKey(item['id']),
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
                textColor: widget.contentColor??StructureBuilder.styles!.primaryColor,
                collapsedTextColor: widget.contentColor??StructureBuilder.styles!.primaryColor,
                collapsedIconColor:widget.contentColor?? StructureBuilder.styles!.primaryColor,

                trailing: isExpanded[index]
                    ? widget.closeIcon ??
                        EsSvgIcon(
                          "assets/svgs/up.svg",
                          size: StructureBuilder.dims!.h3IconSize,
                          color:widget.contentColor?? StructureBuilder.styles!.primaryColor,
                        )
                    : widget.openIcon ??
                        EsSvgIcon(
                          "assets/svgs/down.svg",
                          size: StructureBuilder.dims!.h3IconSize,
                          color:widget.contentColor?? StructureBuilder.styles!.primaryColor,
                        ),
                onExpansionChanged: (bool expanded) {
                  setState(() {
                    isExpanded[index] = expanded;
                  });
                },
                iconColor: widget.contentColor??StructureBuilder.styles!.primaryColor,
                tilePadding: widget.titlePadding ??
                    EdgeInsets.symmetric(
                        vertical: StructureBuilder.dims!.h1Padding,
                        horizontal: StructureBuilder.dims!.h0Padding),

                childrenPadding: widget.childrenPadding ??
                    EdgeInsets.symmetric(
                        vertical: StructureBuilder.dims!.h0Padding,
                        horizontal: StructureBuilder.dims!.h0Padding),
                expandedCrossAxisAlignment: CrossAxisAlignment.end,

                maintainState: true,
                title: Row(
                  children: [
                    widget.icon ?? Container(),
                    widget.icon == null ? Container() : EsHSpacer(),
                    Text(
                      item['title'],
                      style: widget.titleTextStyle ??
                          TextStyle(
                            color: widget.contentColor??StructureBuilder.styles!.primaryColor,
                          ),
                    ),
                  ],
                ),
                // contents
                children: [
                  Text(
                    item['content'],
                    style: widget.childrenTextStyle ??
                        TextStyle(
                          color:widget.contentColor?? StructureBuilder.styles!.primaryColor,
                        ),
                    textAlign: TextAlign.justify,
                  ),

                  // This button is used to remove this item
                  widget.isremovable
                      ? InkWell(
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: StructureBuilder.dims!.h1Padding),
                            child: widget.removeIcon ??
                                Icon(
                                  Icons.delete,
                                  color: StructureBuilder.styles!.dangerColor().dangerDark ,
                                ),
                          ),
                          onTap: () {
                            _removeItem(item['id']);
                          },
                        )
                      : Container(),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}