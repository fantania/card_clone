import '/round_icon.dart';
import '/round_icon_gray.dart';
import '/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,

      // // appBar: AppBar(
      // //   title: Text('Digital Card'),
      // ),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17),
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                    onSubmitted: (value) => print('Hello $value'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Fantania  card',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      RoundIconButtonGray(
                        onPressed: () {
                          Navigator.pushNamed(context, '/addInfoPage');
                        },
                        icon: FontAwesomeIcons.plus,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * 80 / 100,
                  height: screenHeight / 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundIconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/addInfoPage');
                        },
                        icon: FontAwesomeIcons.plus,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Create Your Digital Business Card',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xff00c8dd),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Image.asset(
                    'images/card.png',
                  ),
                ),
                Text(
                  'Or, Try scanning in a paper card',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Icon(
                    FontAwesomeIcons.arrowDown,
                    color: Color(0xff00c8dd),
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BootomNav(),
    );
  }
}
