import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import '../../es_label/es_content_label.dart';
import 'es_drop_down.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EsLabelInput extends StatefulWidget {
  List labelList;

  EsLabelInput({Key? key, required this.labelList}) : super(key: key);

  @override
  _EsLabelInputState createState() => _EsLabelInputState();
}
//

String _value1 = "";
List _List = [];

List stringList(list) {
  List<String> _stringList = [];
  for (int i = 0; i < list.length; i++) {
    _stringList.add(list[i]["title"]);
  }
  return _stringList;
}

int findIndexOfValue(List list, String value) {
  int _i = 0;
  for (int i = 0; i < list.length; i++) {
    if (list[i]["_id"] == value) {
      _i = i;
    }
  }
  return _i;
}

class _EsLabelInputState extends State<EsLabelInput> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _List = stringList(widget.labelList);
  }

  @override
  Widget build(BuildContext context) {
    return EsDropDown(
      buttonWidget: Container(
        padding: EdgeInsets.symmetric(
          vertical: StructureBuilder.dims!.h1Padding,
          horizontal: StructureBuilder.dims!.h1Padding,
        ),
        // width: StructureBuilder.dims!.h0Padding * 10,
        // height: StructureBuilder.dims!.h0Padding * 2,
        decoration: BoxDecoration(
          border:
          Border.all(color: StructureBuilder.styles!.primaryColor),
          borderRadius: BorderRadius.all(
              Radius.circular(StructureBuilder.dims!.h1BorderRadius)),
        ),
        child: Wrap(
            spacing: StructureBuilder.dims!.h1Padding,
            runSpacing: StructureBuilder.dims!.h1Padding,
            children: List.generate(
              _List.length,
                  (index) => IntrinsicWidth(
                child: EsContentLabel(
                  isUnique: true,
                  size: StructureBuilder.dims!.h3IconSize,
                  color: StructureBuilder.styles!.primaryColor,
                  labelContent: Row(
                    children: [
                      EsLabelText(
                        _List[index],
                        color: StructureBuilder.styles!.primaryLightColor,
                      ),
                      EsHSpacer(),
                      InkWell(
                        child: Icon(
                          Icons.close,
                          size: StructureBuilder.dims!.h3IconSize / 2,
                          color:
                          StructureBuilder.styles!.primaryLightColor,
                        ),
                        onTap: () {
                          setState(() {
                            _List.remove(_List[index]);
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            )),
      ),
      initialTitle: AppLocalizations.of(context)!.select,
      list: widget.labelList,
      value: _value1,
      buttonPadding: EdgeInsets.symmetric(
        vertical: StructureBuilder.dims!.h2Padding,
        horizontal: StructureBuilder.dims!.h1Padding,
      ),
      onChanged: (value) {
        setState(() {
          // _value1 = value;
          if (!(_List.contains(
              widget.labelList[findIndexOfValue(widget.labelList, value)]
              ["title"]))) {
            _List.add(widget
                .labelList[findIndexOfValue(widget.labelList, value)]
            ["title"]);
          }
        });
      },
    );
  }
}
