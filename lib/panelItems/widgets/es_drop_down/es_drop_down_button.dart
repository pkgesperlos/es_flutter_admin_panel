import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'menu_dropdown_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EsDropdownButton extends StatefulWidget {
  List<Widget>? menuWidgetList;
  List<void Function()>? menufunctionList;
  Widget? buttonWidget;
  Offset? menuOffset;
  int num;
  BoxDecoration? dropdownDecoration;
  double? dropdownWidth;
  double? dropdownItemsHeight;

  EsDropdownButton({
    Key? key,
    this.menuWidgetList,
    this.menufunctionList,
    this.buttonWidget,
    this.menuOffset,
    this.dropdownDecoration,
    this.dropdownWidth,
    this.dropdownItemsHeight,
    required this.num,
  }) : super(key: key);

  @override
  _EsDropdownButtonState createState() => _EsDropdownButtonState();
}

class _EsDropdownButtonState extends State<EsDropdownButton> {
  List<DropdownMenuItem<String>> items = [];
  late GlobalKey dropdownKey;
  late String selectedValue;

  @override
  void initState() {
    // TODO: implement initState

    selectedValue = "0";
    super.initState();
    dropdownKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    items = List.generate(
        widget.num,
        (index) => DropdownMenuItem(
              child: MenuDropdownWidget(
                buttonWidget: widget.menuWidgetList![index],
                onTap: () {
                  Navigator.pop(dropdownKey.currentContext!);

                  setState(() {
                    selectedValue = index.toString();
                    widget.menufunctionList![index];
                  });

                },
              ),
              value: index.toString(),
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
                  EsSvgIcon("packages/es_flutter_component/assets/svgs/down.svg",
                    color: StructureBuilder.styles!.primaryLightColor,
                    size: StructureBuilder.dims!.h3IconSize * 0.5,
                  ),
                  EsHSpacer(),
                  EsOrdinaryText(
                    AppLocalizations.of(context)!.dropdownbutton,
                    color: StructureBuilder.styles!.primaryLightColor,
                  ),
                ],
              ),
            ),
        items: items,
        value: selectedValue,
        onChanged: (value) {

        },
        itemHeight: widget.dropdownItemsHeight??StructureBuilder.dims!.h0Padding * 2,
        // buttonWidth: 300,
        barrierDismissible: true,
        // alignment: Alignment.centerRight,
        // itemPadding: const EdgeInsets.only(left: 16, right: 16),
        dropdownWidth: widget.dropdownWidth??StructureBuilder.dims!.h0Padding * 4,
        // dropdownPadding: EdgeInsets.symmetric(vertical: 6),
        dropdownDecoration: widget.dropdownDecoration?? BoxDecoration(
            color: StructureBuilder.styles!.primaryColor,
            borderRadius: BorderRadius.all(
                Radius.circular(StructureBuilder.dims!.h1BorderRadius))),

        offset:widget.menuOffset?? Offset(0, 0),
      ),
    );
  }

}
