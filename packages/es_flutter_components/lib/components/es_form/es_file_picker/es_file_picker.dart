
import 'dart:convert';
import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../es_text_field/es_text_field.dart';


// import 'package:flutter/foundation.dart' show kIsWeb;
// void main() {
//   final file = OpenFilePicker()
//     ..filterSpecification = {
//       'Word Document (*.doc)': '*.doc',
//       'Web Page (*.htm; *.html)': '*.htm;*.html',
//       'Text Document (*.txt)': '*.txt',
//       'All Files': '*.*'
//     }
//     ..defaultFilterIndex = 0
//     ..defaultExtension = 'doc'
//     ..title = 'Select a document';
//
//   final result = file.getFile();
//   if (result != null) {
//     print(result.path);
//   }
// }

class EsFilePicker extends StatefulWidget {
  EsFilePickerController controller;
  String label;
  Widget? subTitleWidget;
  void Function(String)? onChange;
  EsFilePicker(
      {required this.controller,
        this.subTitleWidget,
        this.onChange,
        this.label = "Select File"});

  @override
  _EsFilePicker createState() => _EsFilePicker();
}

class _EsFilePicker extends State<EsFilePicker> {
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<PlatformFile>? _paths;
  String? _extension;
  FileType _pickingType = FileType.any;
  TextEditingController _controller = TextEditingController();
Widget? subTitleWidget;



  @override
  void initState() {
    super.initState();
    _controller.addListener(() => _extension = _controller.text);
  }





  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children:
            // Platform.isAndroid || Platform.isIOS || Platform.isFuchsia
            <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                EsTextField(
                  prefixIcon: Icon(Icons.attach_file),
                  onTap: () {
                    _openFileExplorer((p0) {
                      widget.onChange!(p0);
                    },);

                  },
                  controller: _controller,
                ),
                EsVSpacer(),
                widget.subTitleWidget??Container()

              ],
            ),
          ),
        ]),
      ),
    ));
  }

  void _openFileExplorer(void Function(String) onchange) async {

    setState((){
      _controller.text = "";
    });
    try {
      _paths = (await FilePicker.platform.pickFiles(
        withData: true,
        type: _pickingType,
        allowMultiple: false,
        allowedExtensions: (_extension?.isNotEmpty ?? false)
            ? _extension?.replaceAll(' ', '').split(',')
            : null,
      ))
          ?.files;
    } on PlatformException catch (e) {

      print("Unsupported operation" + e.toString());
    } catch (ex) {

      print(ex);
    }
    if (!mounted) return;
    setState(() {
      //print(_paths!.first.extension);

      _controller.text = _paths!.first.name;


      widget.controller.base64File = unit8ListTob64(_paths!);

      onchange(widget.controller.base64File);
    });


  }


  String unit8ListTob64(List<PlatformFile> path) {
    String base64String = base64Encode(path.first.bytes!);
    String header = "data:${path.first.name};base64,";
    return header+base64String;
  }

}


class EsFilePickerController{
  String _base64File = "";

  String get  base64File => _base64File;

  set base64File(String value) {
    _base64File = value;
  }
}