
import 'package:es_flutter_admin_panel/panelItems/widgets/es_group_button/options/group_button_options.dart';
import 'package:es_flutter_admin_panel/panelItems/widgets/es_group_button/utils/controller/controller.dart';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import 'group_button_base.dart';

class EsGroupButton extends StatefulWidget {
  List<Widget> widgetList;
  List<Function(int)>? onPressedList;
  // Function(int)? onPressedList;
  List<int>? selectedIndexes;
  List<int>? disabledIndexes;
  bool? isRadio;
  int? maxSelected;
  int? initialSelectedindex;
  double? spacing;
  double? runSpacing;
  Color? selectedColor;
  Color? unSelectedColor;
  Axis? direction;
  EsGroupButton({Key? key,
  required this.widgetList,
    this.onPressedList,
    this.isRadio,
    this.selectedIndexes,
    this.disabledIndexes,
   this.maxSelected,
   this.initialSelectedindex,
   this.spacing,
   this.runSpacing,
   this.selectedColor,
   this.unSelectedColor,
   this.direction,


  }) : super(key: key);

  @override
  State<EsGroupButton> createState() => _EsGroupButtonState();
}

class _EsGroupButtonState extends State<EsGroupButton> {
  GroupButtonController controller = GroupButtonController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = GroupButtonController(
      // selectedIndex: 20,
      selectedIndexes: widget.selectedIndexes??[widget.initialSelectedindex??0],

      disabledIndexes: widget.disabledIndexes??[],
      // onDisablePressed: (i) => print('Button #$i is disabled'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GroupButton(
      controller: controller,
      isRadio: widget.isRadio??false,
      options:GroupButtonOptions(
          spacing: 0,
          unselectedColor:widget.unSelectedColor?? StructureBuilder.styles!.primaryColor,
          selectedColor: widget.selectedColor??StructureBuilder.styles!.t2Color,
          direction:widget.direction?? Axis.horizontal,
        borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h1BorderRadius)),

      ) ,

      buttons: List.generate(widget.widgetList.length, (i) => ""),
      maxSelected:widget.maxSelected?? null,

      onSelected: (val, i, selected) {

        widget.onPressedList![i];
      },


      buttonsWidget:widget.widgetList
    );
  }


}