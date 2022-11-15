import 'package:es_flutter_component/es_spacer/es_h_divider.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';

class EsGroupList extends StatelessWidget {
  List<Widget> widgetList;
  Widget? divider;
  List<BoxDecoration>? decorationList;
  BoxDecoration? decoration;
  EdgeInsetsGeometry? itemPadding;

  EsGroupList({
    Key? key,
    required this.widgetList,
    this.divider,
    this.decoration,
    this.decorationList,
    this.itemPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<BoxDecoration> _decorationList = decorationList ??
        List.generate(widgetList.length, (index) => BoxDecoration());

    // return Container(
    //   decoration:decoration?? BoxDecoration(
    //     // border: Border.all(color: Colors.black)
    //   ),
    //   child: ListView.separated(
    //
    //       shrinkWrap: true,
    //       scrollDirection: Axis.vertical,
    //       //container will be as same size as  listview size
    //       itemCount: widgetList.length,
    //       itemBuilder: (context, index) {
    //         return Container(
    //           decoration: _decorationList[index],
    //           padding:itemPadding?? EdgeInsets.all(StructureBuilder.dims!.h1Padding),
    //           child: widgetList[index],
    //         );
    //       },
    //       separatorBuilder: (context, index) {
    //         return divider??EsHDivider();
    //       }),
    // );
    return Container(
      decoration: decoration ?? BoxDecoration(),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(

            widgetList.length,
                (index) {
              return Column(
                children: [
                  Container(
                    decoration: _decorationList[index],
                    padding: itemPadding ??
                        EdgeInsets.all(StructureBuilder.dims!.h1Padding),
                    child: widgetList[index],
                  ),
                  index == (widgetList.length - 1)
                      ? Container()
                      : divider ?? EsHDivider()
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
