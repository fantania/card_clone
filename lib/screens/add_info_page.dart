import '/constaints.dart';
import '/screens/add_info_form.dart';
import '/screens/show_info.dart';
import '/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

final GlobalKey<AddInfoFormState> keyForm = GlobalKey<AddInfoFormState>();

class AddInfoPage extends StatelessWidget {
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
                'Cancel',
                style: TextStyle(
                  color: blueColor,
                  fontSize: screenHeight * 0.025,
                ),
              ),
            ),
            Text('Add'),
            TextButton(
              onPressed: () {
                keyForm.currentState.validateIput();
                Get.to(ShowInfo());
              },
              child: Text(
                'Save',
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
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              width: screenWidth,
              height: screenHeight * 0.25,
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Icon(
                      FontAwesomeIcons.user,
                      size: screenHeight * 0.14,
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      FontAwesomeIcons.image,
                      size: screenHeight * 0.14,
                    ),
                  ),
                ],
              ),
            ),
            // Divider(
            //   height: 10,
            //   color: Color(0xff9f9fa3),
            // ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              width: screenWidth,
              height: screenHeight * 0.05,
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Add Image',
                      style: TextStyle(
                          color: Colors.black, fontSize: screenHeight * 0.018),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Add Logo',
                      style: TextStyle(
                          color: Colors.black, fontSize: screenHeight * 0.018),
                    ),
                  ),
                ],
              ),
            ),
            SizedBoxBetweenFormFields(
              screenHeight: screenHeight,
            ),
            AddInfoForm(key: keyForm),
          ],
        ),
      ),
      bottomNavigationBar: BootomNav(),
    );
  }
}
