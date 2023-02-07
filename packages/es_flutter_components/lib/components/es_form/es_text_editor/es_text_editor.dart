
import 'package:es_flutter_components/components/es_form/es_text_editor/quill_to_html_converter.dart';
import 'package:es_flutter_components/components/es_text/es_label_text.dart';
import 'package:es_flutter_components/components/es_text/es_title.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

import '../../es_text/es_ordinary_text.dart';



class EsTextEditor extends StatefulWidget {
  const EsTextEditor({Key? key}) : super(key: key);

  @override
  _EsTextEditorState createState() => _EsTextEditorState();
}

class _EsTextEditorState extends State<EsTextEditor> {

  QuillController _controller =
  QuillController(selection: TextSelection.collapsed(offset: 0), document: Document());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: StructureBuilder.styles!.primaryDarkColor,
        child:EsLabelText( "HTML code"),
      onPressed: (){

      String  _html= quillDeltaToHtml(_controller.document.toDelta());
      showDialog(context: context, builder: (context) => customDialog(_html));
      print(_html);

      },),

      body: Column(
        children: [
          QuillToolbar.basic(controller: _controller),
          Expanded(
            child: Container(
              child: QuillEditor.basic(
                controller: _controller,
                readOnly: false, // true for view only mode
              ),
            ),
          )
        ],
      ),
    );
  }


  Widget customDialog(String dialogeText) {

    return Dialog(

      child: Container(

        color:Colors.white,
        child:Container(
          padding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
          child:  EsOrdinaryText(dialogeText ,align: TextAlign.left,),),
      ),
    );
  }
}
