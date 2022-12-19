

import 'package:es_flutter_admin_panel/panel_ui/structure_images/responsive_layout.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Es404Error extends StatefulWidget {

  static const routeName = '/es404Error';
  @override
  State<StatefulWidget> createState() {
    return _Es404Error();
  }
}

bool isChecked = true;

class _Es404Error extends State<Es404Error> {




  @override
  void initState() {
    // TODO: implement initState

    super.initState();

  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        backgroundColor: StructureBuilder.styles!.primaryLightColor,
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: StructureBuilder.dims!.h0Padding,
                right: StructureBuilder.dims!.h0Padding,
                top: StructureBuilder.dims!.h0Padding,
              ),
              child: Wrap(
                  children: [
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.close,
                              color: Colors.black54,
                            )),
                      ],
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),

                (ResponsiveLayot.isComputer(context)
                    ? Image.asset(
                        "assets/images/404.png",
                        width: StructureBuilder.dims!.h0Padding * 20,
                        height: StructureBuilder.dims!.h0Padding * 20,
                        fit: BoxFit.cover,
                      )
                    :   (ResponsiveLayot.isLargeTablet(context)
                    ? Image.asset(
                  "assets/images/404.png",
                  width: StructureBuilder.dims!.h0Padding * 16,
                  height: StructureBuilder.dims!.h0Padding * 16,
                  fit: BoxFit.cover,
                )
                    :Image.asset(
                  "assets/images/404.png",
                  width: StructureBuilder.dims!.h0Padding * 10,
                  height: StructureBuilder.dims!.h0Padding * 10,
                  fit: BoxFit.cover,
                ))),
              ]),
            ),
          ),
        ));
  }



}
