
import 'package:flutter/material.dart';


// late String _path;
class EsLightBoxShowing extends StatelessWidget {
  String path;
  EsLightBoxShowing({required this.path});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
           child: Image.asset(path)),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return DetailScreen(path: path,);
        }));
      },
    );
  }
}

class DetailScreen extends StatelessWidget {
  String path;
  DetailScreen({required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffB3B3B3),
      body: GestureDetector(
        child: Center(
          child: Container(
              color: Colors.black26,
              child: Image.asset(path)),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
