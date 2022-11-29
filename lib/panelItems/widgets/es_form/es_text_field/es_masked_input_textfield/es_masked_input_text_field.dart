import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:es_flutter_component/resources/Constants/styles.dart';
import 'package:es_flutter_component/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart' as intl;
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

///this class is a customized text field that use in whole of app
class EsMaskedInputTextField extends StatefulWidget {
  String? hint = "";
  String? label = "";
  TextInputFormatter maskTextInputFormatter;

  Widget? suffixIcon;
  Widget? prefixIcon;
  TextInputType? textInput = TextInputType.text;

  TextEditingController? controller = TextEditingController();
  EditTextController? customController = EditTextController();
  ValueChanged<String>? onChanged;
  void Function()? onEditingComplete;

  // String Function(String value)? checkRepeat;////////////////////

  FocusNode? focusNode;
  bool? checkRegex ;
  bool? isObscure;
  bool? disabled;

  TextAlign? textAlign;
  TextDirection? textDirection;
  int? maxLength;
  int? maxLines ;
  Size? textFieldSize;
  Color? fillColor;
  Color? borderColor;
  TextStyle? textStyle;
  TextStyle? labelStyle;

  InputBorder? focusedBorder;
  InputBorder? focusedErrorBorder;
  InputBorder? disabledBorder;
  InputBorder? borderStyle;

  EsMaskedInputTextField(
      {Key? key,
        required this.maskTextInputFormatter,
      this.hint,
      this.label,
      this.textInput,
      this.suffixIcon,
      this.prefixIcon,
      this.onEditingComplete,
      required this.customController,
      this.focusNode,
      this.isObscure,
      this.disabled,
      this.textAlign,
      this.textDirection,
      this.maxLength,
      this.maxLines,
      this.textFieldSize,
      this.checkRegex,
      this.fillColor,
      this.borderColor,
      this.labelStyle,
      this.textStyle,
      this.controller,
      this.onChanged,
      this.disabledBorder,
      this.borderStyle,
      this.focusedBorder,
      this.focusedErrorBorder})
      : assert(customController != null);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EsSpecificTextField();
  }
}

class _EsSpecificTextField extends State<EsMaskedInputTextField> {

  Color borderColor = StructureBuilder.styles!.t7Color;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    borderColor = widget.borderColor ?? StructureBuilder.styles!.t7Color;

    if (widget.checkRegex == null) {
      widget.checkRegex = false;
    }

  }

  @override
  Widget build(BuildContext context) {

    bool isDirectionRTL(BuildContext context) {
      return intl.Bidi.isRtlLanguage(
          Localizations.localeOf(context).languageCode);
    }

    bool _rtl = isDirectionRTL(context);

    Size _size=widget.textFieldSize??Size(StructureBuilder.dims!.h0Padding*14,
        StructureBuilder.dims!.h0Padding*2*(widget.maxLines??1));

    // TODO: implement build
    return Directionality(
      textDirection:widget.textDirection??( _rtl?TextDirection.rtl:TextDirection.ltr),
      child: SizedBox(
        height:_size.height,
        width: _size.width,
        child: TextField(
          enabled: !((widget.disabled)??false),
          readOnly: widget.disabled??false,
          inputFormatters: [widget.maskTextInputFormatter],
          maxLength: widget.maxLength,
          controller: widget.controller,
          onChanged: checkChange,
          keyboardType: widget.textInput,
          maxLines: widget.maxLines??1,

          textAlign: widget.textAlign ?? TextAlign.right,
          style: widget.textStyle?? TextStyle(color: StructureBuilder.styles!.primaryColor,
              fontSize: StructureBuilder.dims!.h2FontSize),
          onEditingComplete: widget.onEditingComplete,
          focusNode: widget.focusNode,
          obscureText: widget.isObscure ?? false,
          cursorColor: StructureBuilder.styles!.primaryColor,
          decoration: decoration(),

        ),
      ),
    );
  }

  decoration() {
    bool _isObscure = widget.isObscure ?? false;

    if (_isObscure) {
      return InputDecoration(
          suffixIcon: widget.suffixIcon ??
              InkWell(
                onTap: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
                child: Icon(
                    _isObscure ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black38),
              ),
          prefixIcon: widget.prefixIcon,
          filled: widget.fillColor == null ? false : true,
          fillColor: widget.fillColor ?? StructureBuilder.styles!.t6Color,
          enabledBorder: widget.borderStyle ??
              OutlineInputBorder(
                  borderSide: BorderSide(
                      color: widget.borderColor ??
                          StructureBuilder.styles!.t4Color),
                  borderRadius: BorderRadius.all(
                      Radius.circular(StructureBuilder.dims!.h2BorderRadius))),
          focusedBorder: widget.focusedBorder ??
              OutlineInputBorder(
                  borderSide:
                      BorderSide(color: StructureBuilder.styles!.primaryColor),
                  borderRadius: BorderRadius.all(
                      Radius.circular(StructureBuilder.dims!.h2BorderRadius))),
          focusedErrorBorder: widget.focusedErrorBorder ??
              OutlineInputBorder(
                  borderSide: BorderSide(
                      color:
                          StructureBuilder.styles!.dangerColor().dangerRegular),
                  borderRadius: BorderRadius.all(
                      Radius.circular(StructureBuilder.dims!.h2BorderRadius))),
          border: widget.borderStyle ??
              OutlineInputBorder(
                  borderSide: BorderSide(color: borderColor),
                  borderRadius: BorderRadius.all(
                      Radius.circular(StructureBuilder.dims!.h2BorderRadius))),
          disabledBorder: widget.disabledBorder ??
              OutlineInputBorder(borderSide: BorderSide(color: widget.borderColor ?? Styles.t7Color), borderRadius: BorderRadius.all(Radius.circular(StructureBuilder.dims!.h2BorderRadius))),
          contentPadding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
          alignLabelWithHint: false,

          labelText: widget.label,
          hintText: widget.hint,
          labelStyle: widget.labelStyle ?? TextStyle(fontSize: Dims.h2FontSize,
              color: StructureBuilder.styles!.primaryColor));
    } else {
      return InputDecoration(

        suffixIcon: widget.suffixIcon,
        prefixIcon: widget.prefixIcon,
        filled: widget.fillColor == null ? false : true,
        fillColor: widget.fillColor ?? StructureBuilder.styles!.t6Color,
        enabledBorder: widget.borderStyle ??
            OutlineInputBorder(
                borderSide: BorderSide(
                    color:
                        widget.borderColor ?? StructureBuilder.styles!.t4Color),
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h2BorderRadius))),
        focusedBorder: widget.focusedBorder ??
            OutlineInputBorder(
                borderSide:
                    BorderSide(color: StructureBuilder.styles!.primaryColor),
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h2BorderRadius))),
        focusedErrorBorder: widget.focusedErrorBorder ??
            OutlineInputBorder(
                borderSide: BorderSide(
                    color:
                        StructureBuilder.styles!.dangerColor().dangerRegular),
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h2BorderRadius))),
        border: widget.borderStyle ??
            OutlineInputBorder(
                borderSide: BorderSide(color: borderColor),
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h2BorderRadius))),
        disabledBorder: widget.disabledBorder ??
            OutlineInputBorder(
                borderSide:
                    BorderSide(color: widget.borderColor ?? Styles.t7Color),
                borderRadius: BorderRadius.all(
                    Radius.circular(StructureBuilder.dims!.h2BorderRadius))),
        contentPadding: EdgeInsets.all(StructureBuilder.dims!.h1Padding),
        alignLabelWithHint: false,
        hintText: widget.hint,
        labelText: widget.label,
        labelStyle: widget.labelStyle ??
            TextStyle(
                fontSize: Dims.h2FontSize,
                color: StructureBuilder.styles!.primaryColor),
      );
    }
  }

  RegExp phoneReg = new RegExp(
    "(09)[0-9]{9}",
    caseSensitive: false,
    multiLine: false,
  );
  RegExp emailReg = new RegExp(
    r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    caseSensitive: false,
    multiLine: false,
  );

  checkChange(String value) {
    if (widget.onChanged != null) widget.onChanged!(value);
    if (value.length > 0) {
      setState(() {
        borderColor = Colors.red;

        widget.customController?.isAccepted = false;
      });

      checkSuccess(value);
    } else {
      setState(() {
        borderColor = widget.borderColor ?? StructureBuilder.styles!.t7Color;

        widget.customController?.isAccepted = false;
      });
    }
  }

  void checkSuccess(String value) {
    if (widget.checkRegex??false) {
      if (widget.textInput == TextInputType.phone && phoneReg.hasMatch(value)) {
        setAccept();
      } else if (widget.textInput == TextInputType.emailAddress &&
          emailReg.hasMatch(value)) {
        setAccept();
      } else {
        setState(() {
          widget.customController?.isAccepted = false;
        });
      }
    } else {
      if (widget.maxLength != null) {
        print(widget.maxLength);

        if (value.length == widget.maxLength) {
          setAccept();
        } else {
          setState(() {
            widget.customController?.isAccepted = false;
          });
        }
      } else {
        setAccept();
      }
    }
  }

  setAccept() {
    setState(() {
      borderColor = StructureBuilder.styles!.successColor().successRegular;
      widget.customController?.isAccepted = true;
    });
  }
}

class EditTextController {
  bool _isAccepted = false;

  bool get isAccepted => _isAccepted;

  set isAccepted(bool value) {
    _isAccepted = value;
  }
}
