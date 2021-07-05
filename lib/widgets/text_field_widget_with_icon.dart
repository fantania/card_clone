import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constaints.dart';

class TextFieldWidgetWithIcon extends StatelessWidget {
  TextFieldWidgetWithIcon(
      {this.hintText,
      this.textIfEmpty,
      this.textFieldValue,
      this.isRequired,
      this.textFieldIcon});

  final String hintText;
  final String textIfEmpty;
  String textFieldValue;
  final IconData textFieldIcon;
  final bool isRequired;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: textFieldTextColor),
      decoration: InputDecoration(
          prefixIcon: Icon(
            textFieldIcon,
            color: textFieldIconColor,
          ),
          fillColor: textFieldfillColor,
          filled: true,
          hintText: hintText),
      validator: (value) {
        if (isRequired && value.isEmpty) {
          return 'Please enter the $textIfEmpty';
        }
        return null;
      },
      onSaved: (String val) {
        textFieldValue = val;
      },
    );
  }
}
