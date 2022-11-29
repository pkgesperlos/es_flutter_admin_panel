import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import '../../es_drop_down/menu_dropdown_widget.dart';
import '../../es_text/es_title.dart';

class EsDropdownButtonSelectHj extends StatefulWidget {
  List<String> menuTitleList;
  List<void Function()>? menufunctionList;
  Widget? buttonWidget;
  Offset? menuOffset;
  int num;
  BoxDecoration? dropdownDecoration;
  double? dropdownWidth;
  double? dropdownItemsHeight;

  EsDropdownButtonSelectHj({
    Key? key,
    required this.menuTitleList,
    this.menufunctionList,
    this.buttonWidget,
    this.menuOffset,
    this.dropdownDecoration,
    this.dropdownWidth,
    this.dropdownItemsHeight,
    required this.num,
  }) : super(key: key);

  @override
  _EsDropdownButtonSelectHjState createState() => _EsDropdownButtonSelectHjState();
}

class _EsDropdownButtonSelectHjState extends State<EsDropdownButtonSelectHj> {

  List<DropdownMenuItem<String>> items = [];
  late GlobalKey dropdownKey;
  late String selectedValue;
  List<Widget> menuWidgetList=[];

  @override
  void initState() {
    // TODO: implement initState

    selectedValue = widget.menuTitleList[0];
    // selectedValue = widget.menuTitleList[0];
    menuWidgetList = List.generate(
        widget.num,
            (index) => EsTitle(
          widget.menuTitleList[index],
          color: Colors.white,
        ));
    super.initState();
    dropdownKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    items = List.generate(
        widget.num,
        (index) => DropdownMenuItem(
              child: MenuDropdownWidget(
                buttonWidget: menuWidgetList[index],
                onTap: () {
                  Navigator.pop(dropdownKey.currentContext!);

                  setState(() {
                    selectedValue = widget.menuTitleList[index];
                  });
                  widget.menufunctionList![index];
                  // print("ok");
                },
              ),
              value: widget.menuTitleList[index],
            ));

    return dropDownWidget(items);
  }

  Widget dropDownWidget(List<DropdownMenuItem<String>> items) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        key: dropdownKey,
        customButton: widget.buttonWidget ??
            Container(
              padding: EdgeInsets.symmetric(
                vertical: StructureBuilder.dims!.h1Padding,
                horizontal: StructureBuilder.dims!.h1Padding,
              ),
              margin: EdgeInsets.symmetric(
                horizontal: StructureBuilder.dims!.h1Padding,
              ),
              decoration: BoxDecoration(
                  color: StructureBuilder.styles!.primaryColor,
                  borderRadius: BorderRadius.all(
                      Radius.circular(StructureBuilder.dims!.h1BorderRadius))),
              child: Row(
                children: [
                  EsSvgIcon(
                    "packages/es_flutter_component/assets/svgs/down.svg",
                    color: StructureBuilder.styles!.primaryLightColor,
                    size: StructureBuilder.dims!.h3IconSize * 0.5,
                  ),
                  EsHSpacer(),
                  EsOrdinaryText(
                    selectedValue,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                ],
              ),
            ),
        items: items,
        value: selectedValue,
        onChanged: (value) {},
        itemHeight:
            widget.dropdownItemsHeight ?? StructureBuilder.dims!.h0Padding * 2,
        // buttonWidth: 300,
        barrierDismissible: true,
        // alignment: Alignment.centerRight,
        // itemPadding: const EdgeInsets.only(left: 16, right: 16),
        dropdownWidth:
            widget.dropdownWidth ?? StructureBuilder.dims!.h0Padding * 4,
        // dropdownPadding: EdgeInsets.symmetric(vertical: 6),
        dropdownDecoration: widget.dropdownDecoration ??
            BoxDecoration(
                color: StructureBuilder.styles!.primaryColor,
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h1BorderRadius))),

        offset: widget.menuOffset ?? Offset(0, 0),
      ),
    );
  }
}
