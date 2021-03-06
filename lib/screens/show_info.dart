import '/controllers/contact.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/constaints.dart';

class ShowInfo extends StatelessWidget {
  final Contact _contact = Get.find();
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: scaffolBackGroundColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Add Form'),
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.grey,
            )),
        actions: [
          IconButton(
              onPressed: () => Get.to(ShowInfo()),
              icon: Icon(
                Icons.edit,
                color: Colors.grey,
              )),
        ],
        // title: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     TextButton(
        //       onPressed: () {},
        //       child: Text(
        //         'Close',
        //         style: TextStyle(
        //           color: blueColor,
        //           // fontSize: screenHeight * 0.025,
        //         ),
        //       ),
        //     ),
        //     TextButton(
        //       onPressed: () {
        //         //keyForm.currentState.validateIput();
        //       },
        //       child: Text(
        //         'Edit',
        //         style: TextStyle(
        //           color: blueColor,
        //           // fontSize: screenHeight * 0.025,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            '${path}logo.png',
            width: 100,
            height: 100,
            fit: BoxFit
                .cover, /*BoxFit.cover tells the framework that the image should be 
                    as small as possible but cover its entire render box.*/
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                '${path}image.jpg',
                width: 40,
                height: 40,
              ),
              Column(
                children: [
                  Obx(() => Text(_contact.name.value)),
                  Obx(() => Text(_contact.role.value)),
                ],
              ),
              IconButton(icon: Icon(Icons.share), onPressed: () {}),
            ],
          ),
          Container(
            padding: EdgeInsets.all(40),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(icon: Icon(Icons.phone), onPressed: () {}),
                    Obx(() => Text(_contact.phoneNumber.value)),
                  ],
                ),
                Row(
                  children: [
                    IconButton(icon: Icon(Icons.message), onPressed: () {}),
                    Obx(() => Text(_contact.cellNumber.value)),
                  ],
                ),
                Row(
                  children: [
                    IconButton(icon: Icon(Icons.email), onPressed: () {}),
                    Obx(() => Text(_contact.emailAddress.value)),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
