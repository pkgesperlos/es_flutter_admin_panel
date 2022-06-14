import 'package:flutter/material.dart';

import '../../images/panelConstants.dart';
import 'linear_graph.dart';

class Person {
  String name;
  Color color;

  Person({required this.name, required this.color});
}

class PanelCenterPage extends StatefulWidget {
  @override
  _PanelCenterPageState createState() => _PanelCenterPageState();
}

class _PanelCenterPageState extends State<PanelCenterPage> {
  List<Person> _persons = [
    Person(name: "Thia Bowen", color: PanelConstants.orangeLight),
    Person(name: "Fariha Odlong", color: PanelConstants.redLight),
    Person(name: "Viola Willis", color: PanelConstants.blueDark),
    Person(name: "Nick Jarvis", color: PanelConstants.orangeLight),
    Person(name: "Amit Claveia", color: PanelConstants.redLight),
    Person(name: "Compbell Britton", color: PanelConstants.blueDark),
    Person(name: "Haley Mellor", color: PanelConstants.redLight),
    Person(name: "Harlen Higgins", color: PanelConstants.greenDark),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: PanelConstants.paddingDimension / 2,
                  right: PanelConstants.paddingDimension / 2,
                  top: PanelConstants.paddingDimension / 2),
              child: Card(
                color: PanelConstants.purpleLight,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  width: double.infinity,
                  child: ListTile(
                    title: Text(
                      "Products Available",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "82% of the Products Avail.",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Text(
                      "20,500",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            BarChartSample2(),
            Padding(
              padding: EdgeInsets.only(
                left: PanelConstants.paddingDimension / 2,
                right: PanelConstants.paddingDimension / 2,
                top: PanelConstants.paddingDimension,
                bottom: PanelConstants.paddingDimension,
              ),
              child: Card(
                color: PanelConstants.purpleLight,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: List.generate(
                      _persons.length,
                      (index) => ListTile(
                            leading: CircleAvatar(
                              radius: 15,
                              child: Text(
                                _persons[index].name.substring(0, 1),
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: _persons[index].color,
                            ),
                        title: Text(
                          _persons[index].name.substring(0, 1),
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.message,color: Colors.white,),
                          onPressed: (){

                          },
                        )
                          )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
