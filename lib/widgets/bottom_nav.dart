import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// This is the stateful widget that the main application instantiates.
class BootomNav extends StatefulWidget {
  @override
  _BotoomNavState createState() => _BotoomNavState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _BotoomNavState extends State<BootomNav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.addressCard),
          label: 'Cards',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.qrcode),
          label: 'Scan',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.cog),
          label: 'Settings',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xff00c8dd),
      onTap: _onItemTapped,
    );
  }
}
