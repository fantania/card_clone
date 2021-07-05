import 'package:flutter/material.dart';

class RoundIconButtonGray extends StatelessWidget {
  RoundIconButtonGray({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 30.0,
      height: 30.0,
      child: OutlineButton(
        child: Icon(
          icon,
          color: Color(0xff9f9fa3),
          size: 20,
        ),
        onPressed: onPressed,
        shape: CircleBorder(),
        borderSide: BorderSide(
          width: 4.0,
          color: Color(0xff9f9fa3),
        ),
      ),
    );
  }
}
