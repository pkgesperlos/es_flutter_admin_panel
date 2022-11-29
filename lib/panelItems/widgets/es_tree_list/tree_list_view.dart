import 'dart:math';
import 'package:es_flutter_component/es_image/es_svg_icon.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_treeview/list_treeview.dart';
import 'package:list_treeview/tree/tree_view.dart';

/// The data class that is bound to the child node
/// You must inherit from NodeData ！！！
/// You can customize any of your properties
class TreeNodeData extends NodeData {
  TreeNodeData({this.label, this.color}) : super();

  /// Other properties that you want to define
  final String? label;
  final Color? color;

  String? property1;
  String? property2;
  String? property3;

  ///...
}

class TreeListView extends StatefulWidget {
  Widget? indicatorIcon;
  Widget? favoriteIcon;
  Widget? addIcon;

  TreeListView({Key? key, this.addIcon, this.favoriteIcon, this.indicatorIcon})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TreeListViewState();
  }
}

class _TreeListViewState extends State<TreeListView>
    with SingleTickerProviderStateMixin {
  TreeViewController? _controller;
  bool _isSuccess = false;
  List<Color> _colors = [];

  @override
  void initState() {
    super.initState();

    ///The controller must be initialized when the treeView create
    _controller = TreeViewController();

    for (int i = 0; i < 100; i++) {
      if (randomColor() != null) {
        _colors.add(randomColor());
      }
    }

    ///Data may be requested asynchronously
    getData();
  }

  void getData() async {
    print('start get data');
    _isSuccess = false;
    await Future.delayed(Duration(seconds: 1));

    var colors1 = TreeNodeData(label: 'Colors1');
    var color11 = TreeNodeData(
        label: 'rgb(0,139,69)', color: Color.fromARGB(255, 0, 139, 69));
    var color12 = TreeNodeData(
        label: 'rgb(0,139,69)', color: Color.fromARGB(255, 0, 191, 255));
    var color13 = TreeNodeData(
        label: 'rgb(0,139,69)', color: Color.fromARGB(255, 255, 106, 106));
    var color14 = TreeNodeData(
        label: 'rgb(0,139,69)', color: Color.fromARGB(255, 160, 32, 240));
    colors1.addChild(color11);
    colors1.addChild(color12);
    colors1.addChild(color13);
    colors1.addChild(color14);

    var colors2 = TreeNodeData(label: 'Colors2');
    var color21 = TreeNodeData(
        label: 'rgb(0,139,69)', color: Color.fromARGB(255, 255, 64, 64));
    var color22 = TreeNodeData(
        label: 'rgb(0,139,69)', color: Color.fromARGB(255, 28, 134, 238));
    var color23 = TreeNodeData(
        label: 'rgb(0,139,69)', color: Color.fromARGB(255, 255, 106, 106));
    var color24 = TreeNodeData(
        label: 'rgb(0,139,69)', color: Color.fromARGB(255, 205, 198, 115));
    colors2.addChild(color21);
    colors2.addChild(color22);
    colors2.addChild(color23);
    colors2.addChild(color24);

    /// set data
    _controller!.treeData([colors1]);
    print('set treeData suceess');

    setState(() {
      _isSuccess = true;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  Color getColor(int level) {
    return _colors[level % _colors.length];
  }

  Color randomColor() {
    int r = Random.secure().nextInt(200);
    int g = Random.secure().nextInt(200);
    int b = Random.secure().nextInt(200);
    return Color.fromARGB(255, r, g, b);
  }

  /// Add
  void add(TreeNodeData dataNode) {
    /// create New node
//    DateTime time = DateTime.now();
//    int milliseconds = time.millisecondsSinceEpoch ~/ 1000;
    int r = Random.secure().nextInt(255);
    int g = Random.secure().nextInt(255);
    int b = Random.secure().nextInt(255);

    var newNode = TreeNodeData(
        label: 'rgb($r,$g,$b)', color: Color.fromARGB(255, r, g, b));

    _controller!.insertAtFront(dataNode, newNode);
//    _controller.insertAtRear(dataNode, newNode);
//    _controller.insertAtIndex(1, dataNode, newNode);
  }

  void delete(dynamic item) {
    _controller!.removeItem(item);
  }

  void select(dynamic item) {
    _controller!.selectItem(item);
  }

  void selectAllChild(dynamic item) {
    _controller!.selectAllChild(item);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StructureBuilder.styles!.primaryLightColor,
      body: _isSuccess
          ? Container(
              decoration: BoxDecoration(
                  color: StructureBuilder.styles!.primaryLightColor,
                  borderRadius: BorderRadius.all(
                      Radius.circular(StructureBuilder.dims!.h0BorderRadius)),
                  border: Border.all(
                      color: StructureBuilder.styles!.primaryColor, width: 1)),
              child: getBody())
          : getProgressView(),
    );
  }

  Widget getProgressView() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget getBody() {
    return ListTreeView(
      shrinkWrap: false,
      padding: EdgeInsets.all(0),
      itemBuilder: (BuildContext context, NodeData data) {
        TreeNodeData item = data as TreeNodeData;
//              double width = MediaQuery.of(context).size.width;
        double offsetX = item.level * 16.0;
        return Container(
          height: 54,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(

              // border: Border(bottom: BorderSide(width: 1, color: Colors.grey))
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: offsetX),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: InkWell(
                            splashColor: Colors.amberAccent.withOpacity(1),
                            highlightColor: Colors.red,
                            onTap: () {
                              selectAllChild(item);
                            },
                            child: data.isSelected
                                ? widget.favoriteIcon ??
                                    EsSvgIcon(
                                      "packages/es_flutter_component/assets/svgs/folderfavorite.svg",
                                      size: StructureBuilder.dims!.h3IconSize,
                                    )
                                : widget.indicatorIcon ??
                                    EsSvgIcon(
                                      "packages/es_flutter_component/assets/svgs/folder.svg",
                                      size: StructureBuilder.dims!.h3IconSize,
                                    )),
                      ),
                      EsOrdinaryText(
                        'level-${item.level}-${item.indexInParent}',
                        // style: TextStyle(
                        //     fontSize: 15, color: getColor(item.level)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
//                          Text(
//                            '${item.label}',
//                            style: TextStyle(color: item.color),
//                          ),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: item.isExpand,
                child: InkWell(
                    onTap: () {
                      add(item);
                    },
                    child: widget.addIcon ??
                        EsSvgIcon(
                          "packages/es_flutter_component/assets/svgs/add.svg",
                          size: StructureBuilder.dims!.h3IconSize,
                        )),
              )
            ],
          ),
        );
      },
      onTap: (NodeData data) {
        print('index = ${data.index}');
      },
      onLongPress: (data) {
        delete(data);
      },
      controller: _controller,
    );
  }
}
