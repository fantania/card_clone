import 'package:flutter/material.dart';

import '../constaints.dart';

class TextFieldWidget extends StatelessWidget {
  
  TextFieldWidget({
    this.hintText,
    this.textIfEmpty,
    this.textFieldValue,
    this.isRequired,
  });

  final String hintText;
  final String textIfEmpty;
  String textFieldValue;
  final bool isRequired;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: textFieldTextColor),
      decoration: InputDecoration(
          fillColor: textFieldfillColor, filled: true, hintText: hintText),
      validator: (value) {
        if (isRequired && value.isEmpty) {
          return 'Please enter the $textIfEmpty';
        }
        return null;
      },
      onChanged: (String val) {
        textFieldValue = val;
        print(textFieldValue);
      },
    );
  }
}

/*

TextFormField(
            style: TextStyle(color: constaints.textFieldTextColor),
            decoration: InputDecoration(
                fillColor: constaints.textFieldfillColor, filled: true, hintText: hintText),

                decoration: InputDecoration(
                prefixIcon: Icon(
                  FontAwesomeIcons.skype,
                  color: Colors.black,
                ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter $textIfEmpty';
              }
              return null;
            },
            onSaved: (String val) {
              textFieldValue = val;
            },
          ),
 */
