import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 56.0,
      height: 56.0,
      child: OutlineButton(
        child: Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
        onPressed: onPressed,
        shape: CircleBorder(),
        borderSide: BorderSide(width: 4.0, color: Colors.white),
      ),
    );
  }
}
