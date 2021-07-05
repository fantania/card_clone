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
      onSaved: (String val) {
        print('Entered value $val');
        textFieldValue = val;
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
/*class RoundIconButton extends StatelessWidget {

  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}*/
