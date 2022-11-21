
import 'package:es_flutter_admin_panel/es_login.dart';
import 'package:es_flutter_component/resources/constants/structure_styles.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';




class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Test();
  }

}

class _Test extends State<Test> {


  @override
  Widget build(BuildContext context) {

    return Center(
      child:Container(
// color: StructureBuilder.styles!.additional().primary2,
// color: MyStyle.primary3,
      )
      /*ClipPath(
          clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              )
          ),
          child: Container(
              height: 70.0,
              width: 200.0,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromRGBO(0, 83, 79, 1),
                          width: 7.0
                      )
                  )
              )
          )
      ),*/
    );

  }

  Pages paging = Pages.page1;

  changePage(Pages page){

    setState(() {
      paging = page;
    });
  }

  getPage(Pages pages) {
    switch (pages) {
      case Pages.page1:
        return page1();
      case Pages.page2:
        return page2();
      default:
        return page1();
    }
  }

}
Widget page1() {
  return EsLogin();
}

Widget page2() {
  return EsLogin();
}

enum Pages {
  page1,
  page2
}



//   routes:[
// {
// "routeName":"داشبورد",
// "component":Page1()
// },{
// "routeName":"داشبورد",
// "component":Page1()
// },{
// "routeName":"داشبورد",
// "component":Page1(),
// "routes":[
// {
// "routeName":"داشبورد",
// "component":Page1()
// },
// {
// "routeName":"داشبورد",
// "component":Page1()
// },
// ]
// }
// ]
// }


