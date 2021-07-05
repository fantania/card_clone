import '/controllers/contact.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/constaints.dart';

class ShowInfo extends StatelessWidget {
  final Contact _contact = Get.find();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: scaffolBackGroundColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Close',
                style: TextStyle(
                  color: blueColor,
                  fontSize: screenHeight * 0.025,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //keyForm.currentState.validateIput();
              },
              child: Text(
                'Edit',
                style: TextStyle(
                  color: blueColor,
                  fontSize: screenHeight * 0.025,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            /*Image.asset(
              '${path}logo.png',
              /*width: 600,
              height: 240,*/
              fit: BoxFit
                  .cover, /*BoxFit.cover tells the framework that the image should be 
                  as small as possible but cover its entire render box.*/
            //),*/
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  '${path}image.jpg',
                  width: 40,
                  height: 40,
                ),
                Column(
                  children: [
                    /* Obx(() => Text(
                          _contact.name.value,
                          style: TextStyle(
                            color: Colors.black12,
                          ),
                        )),*/
                    Text("Hello"),
                    Text('How Are you?'),
                    Obx(() => Text(_contact.role.value)),
                  ],
                ),
                IconButton(icon: Icon(Icons.share), onPressed: () {})
              ],
            ),
          ],
        ),
      )),
    );
  }
}
