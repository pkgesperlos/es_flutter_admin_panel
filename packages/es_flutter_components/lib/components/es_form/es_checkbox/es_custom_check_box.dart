// import 'package:es_flutter_components/resources/structure_builder.dart';
// import 'package:flutter/material.dart';
//
// import '../../es_image/es_svg_icon.dart';
//
// class EsCustomCheckBox extends StatefulWidget {
//   Widget? nonSelectedIcon;
//   Widget? selectedIcon;
//   Widget? subTitleWidget;
//   Widget? titleWidget;
//   bool value;
//   void Function(bool?)? onChanged;
//
//   EsCustomCheckBox({
//     Key? key,
//     this.nonSelectedIcon,
//     this.selectedIcon,
//     this.subTitleWidget,
//     this.titleWidget,
//     this.onChanged,
//     this.onSelect,
//     required this.value,
//   }) : super(key: key);
//
//   final ValueChanged<bool>? onSelect;
//
//   @override
//   _EsCustomCheckBoxState createState() => _EsCustomCheckBoxState();
// }
//
// class _EsCustomCheckBoxState extends State<EsCustomCheckBox> {
//   bool _selected = false;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _selected = widget.value;
//   }
//
//   void _onTap() {
//     setState(() {
//       _selected = widget.value;
//       _selected = !_selected;
//     });
//     widget.onSelect!(_selected);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Column(
//       children: [
//         InkWell(
//           onTap: () {
//             _onTap();
//             _handleValueChange;
//           },
//           child: Row(
//             children: [
//               (widget.value
//                       ? (widget.selectedIcon ??
//                           EsSvgIcon(
//                             "packages/es_flutter_components/assets/svgs/ticksquare.svg",
//                             size: StructureBuilder.dims!.h3IconSize,
//                             color: StructureBuilder.styles!.primaryLightColor,
//                           ))
//                       : (widget.nonSelectedIcon ??
//                           EsSvgIcon(
//                             "packages/es_flutter_components/assets/svgs/square.svg",
//                             size: StructureBuilder.dims!.h3IconSize,
//                             color: StructureBuilder.styles!.primaryLightColor,
//                           ))) ,
//               widget.titleWidget ?? Container()
//             ],
//           ),
//         ),
//         widget.subTitleWidget ?? Container()
//       ],
//     ));
//   }
//
//   void _handleValueChange() {
//     assert(widget.onChanged != null);
//     switch (widget.value) {
//       case false:
//         widget.onChanged!(true);
//         break;
//       case true:
//         widget.onChanged!(false);
//         break;
//       /*   case null:
//         widget.onChanged!(false);
//         break;*/
//     }
//   }
// }
import 'package:es_flutter_components/components/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';

import '../../es_image/es_svg_icon.dart';

class EsCustomCheckBox extends StatefulWidget {
  Widget? nonSelectedIcon;
  Widget? selectedIcon;
  Widget? subTitleWidget;
  Widget? titleWidget;
  bool value;
  bool? disabled;
  ValueChanged<bool> onChanged;

  EsCustomCheckBox({
    Key? key,
    this.nonSelectedIcon,
    this.selectedIcon,
    this.titleWidget,
    this.subTitleWidget,
    this.disabled,
    required this.onChanged,
    required this.value,
  }) : super(key: key);

  @override
  _EsCustomCheckBoxState createState() => _EsCustomCheckBoxState();
}

class _EsCustomCheckBoxState extends State<EsCustomCheckBox> {
  bool _selected = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _selected = widget.value;
  }

  void _onTap() {
    setState(() {
      _selected = !_selected;
    });
    widget.onChanged(_selected);
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
          child: InkWell(
              onTap: () {
                widget.disabled ?? false ? null : _onTap();
              },
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      widget.titleWidget ?? Container(),
                      EsHSpacer(
                        big: true,
                      ),
                      widget.disabled ?? false
                          ? EsSvgIcon(
                              "packages/es_flutter_components/assets/svgs/square.svg",
                              size: StructureBuilder.dims!.h3IconSize,
                              color: StructureBuilder.styles!.secondaryColor,
                            )
                          : _selected
                              ? (widget.selectedIcon ??
                                  EsSvgIcon(
                                    "packages/es_flutter_components/assets/svgs/ticksquare.svg",
                                    size: StructureBuilder.dims!.h3IconSize,
                                    color:
                                        StructureBuilder.styles!.primaryDarkColor,
                                  ))
                              : (widget.nonSelectedIcon ??
                                  EsSvgIcon(
                                    "packages/es_flutter_components/assets/svgs/square.svg",
                                    size: StructureBuilder.dims!.h3IconSize,
                                    color:
                                        StructureBuilder.styles!.primaryDarkColor,
                                  ))
                    ],
                  ),
                  EsVSpacer(),
                  widget.subTitleWidget ?? Container()
                ],
              ))),
    );
  }
}
