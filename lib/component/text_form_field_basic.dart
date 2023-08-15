import 'package:flutter/material.dart';

import '../constants.dart';

class TextFormFieldWidget extends StatefulWidget {
  final TextInputType textInputType;
  final String hintText;
  final Widget prefixIcon;
  final String defaultText;
  final FocusNode focusNode;
  final bool obscureText;
  final TextEditingController controller;
  final Function functionValidate;
  final String parametersValidate;
  final TextInputAction actionKeyboard;
  final Function onSubmitField;
  final Function onFieldTap;

  const TextFormFieldWidget(
      {super.key, required this.hintText,
      required this.focusNode,
      required this.textInputType,
      required this.defaultText,
      this.obscureText = false,
      required this.controller,
      required this.functionValidate,
      required this.parametersValidate,
      this.actionKeyboard = TextInputAction.next,
      required this.onSubmitField,
      required this.onFieldTap,
      required this.prefixIcon});

  @override
  _TextFormFieldWidgetState createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  double bottomPaddingToError = 12;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: BasePalette.primary,
      ),
      child: TextFormField(
        cursorColor: BasePalette.primary,
        obscureText: widget.obscureText,
        keyboardType: widget.textInputType,
        textInputAction: widget.actionKeyboard,
        focusNode: widget.focusNode,
        style: TextStyle(
          color: BasePalette.primary,
          fontSize: 16.0,
          fontWeight: FontWeight.w200,
          fontFamily: 'NeoSans',
          letterSpacing: 1.2,
        ),
        initialValue: widget.defaultText,
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          hintText: widget.hintText,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: BasePalette.primary),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 14.0,
            fontWeight: FontWeight.w300,
            fontFamily: 'NeoSans',
            letterSpacing: 1.2,
          ),
          contentPadding: EdgeInsets.only(
              top: 12, bottom: bottomPaddingToError, left: 2.0, right: 2.0),
          isDense: true,
          errorStyle: TextStyle(
            color: BasePalette.base,
            fontSize: 12.0,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.2,
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: BasePalette.base),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: BasePalette.base),
          ),
        ),
        controller: widget.controller,
        validator: (value) {
          String resultValidate =
              widget.functionValidate(value, widget.parametersValidate);
          return resultValidate;
        },
        onFieldSubmitted: (value) {
          widget.onSubmitField();
        },
        onTap: () {
          widget.onFieldTap();
        },
      ),
    );
  }
}

String commonValidation(String value, String messageError) {
  print(value);
  var required = requiredValidator(value, messageError);
  return required;
  // if (required != null) {
  //   return required;
  // }
  // return null;
}

String requiredValidator(value, messageError) {
  if (value.isEmpty) {
    return messageError;
  }
  return messageError;
}

void changeFocus(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}
