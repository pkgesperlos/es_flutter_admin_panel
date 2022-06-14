import 'package:flutter/material.dart';

import '../../images/panelConstants.dart';




class Product {
  String name;
  bool enable;

  Product({required this.name, this.enable = true});
}

class PanelRightPage extends StatefulWidget {
  @override
  _PanelRightPageState createState() => _PanelRightPageState();
}

class _PanelRightPageState extends State<PanelRightPage> {
  List<Product> _products = [
    Product(name: "LED Submersibe Lights", enable: true),
    Product(name: "Portable Projector", enable: true),
    Product(name: "Blutooth Speaker", enable: true),
    Product(name: "Smart Watch", enable: true),
    Product(name: "Temporary Tattoons", enable: true),
    Product(name: "Bookends", enable: true),
    Product(name: "Vegtable Chapper", enable: true),
    Product(name: "Neck messager", enable: true),
    Product(name: "Facial Cleanser", enable: true),
    Product(name: "Back Cushion", enable: true),
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
                top: PanelConstants.paddingDimension / 2,
              ),
              child: Card(
                color: PanelConstants.purpleLight,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Container(
                  width: double.infinity,
                  child: ListTile(
                    title: Text(
                      "New Revenue",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "7% of sales Avg.",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Text(
                      r"$46,450",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            // LineChartx(
            //   isShowingMainData: true,
            // ),
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
                  children: List.generate(_products.length, (index) {
                    return SwitchListTile.adaptive(
                        title: Text(
                          _products[index].name,
                          style: TextStyle(color: Colors.white),
                        ),
                        value: _products[index].enable,
                        onChanged: (newValue) {
                          setState(() {
                            _products[index].enable = newValue;
                          });
                        });
                  }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
