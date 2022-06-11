import 'package:flutter/material.dart';


import '../images/constants.dart';
import '../images/responsive_layout.dart';
import 'circle_graph.dart';
import 'curved_chart.dart';

class ToDo {
  String name;
  bool enable;

  ToDo({required this.name, this.enable = true});
}

class PanelLeftPage extends StatefulWidget {
  @override
  _PanelLeftPageState createState() => _PanelLeftPageState();
}

class _PanelLeftPageState extends State<PanelLeftPage> {
  List<ToDo> _todo = [
    ToDo(name: "List of Purchace", enable: true),
    ToDo(name: "Refill the inventory of speakers", enable: true),
    ToDo(name: "Hire somone", enable: true),
    ToDo(name: "Marketing Strategy", enable: true),
    ToDo(name: "Selling Furniture", enable: true),
    ToDo(name: "Finish the disclosure", enable: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (ResponsiveLayot.isComputer(context))
          Container(
            color: Constants.purpleLight,
            width: 50,
            child: Container(
              // decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius:
              //         BorderRadius.only(topRight: Radius.circular(50))),
            ),
          ),
        SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: EdgeInsets.only(
                  left: Constants.kPadding / 2,
                  right: Constants.kPadding / 2,
                  top: Constants.kPadding / 2,
                ),
                child: Card(
                  color: Constants.purpleLight,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Container(
                    width: double.infinity,
                    child: ListTile(
                      title: Text(
                        "Products Sold",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "18% of Products Sold",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Text(
                        "4,500",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              LineChartSample2(),
              PieChartSample2(),
              Padding(
                padding: EdgeInsets.only(
                    left: Constants.kPadding / 2,
                    right: Constants.kPadding / 2,
                    top: Constants.kPadding / 2,
                    bottom: Constants.kPadding),
                child: Card(
                  color: Constants.purpleLight,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: List.generate(
                        _todo.length,
                        (index) => CheckboxListTile(
                              title: Text(
                                _todo[index].name,
                                style: TextStyle(color: Colors.white),
                              ),
                              value: _todo[index].enable,
                              onChanged: (newValue) {
                                setState(() {
                                  _todo[index].enable = newValue ?? true;
                                });
                              },
                            )),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
