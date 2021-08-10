import '/constaints.dart';
import '/screens/add_info_form.dart';
import '/screens/show_info.dart';
import '/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';


class AddInfoPage extends StatelessWidget {
  // final GlobalKey<AddInfoFormState> keyForm = GlobalKey<AddInfoFormState>();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: scaffolBackGroundColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Add Form'),
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.cancel,
              color: Colors.redAccent,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(ShowInfo());
              },
              icon: Icon(
                Icons.save,
                color: Colors.greenAccent[700],
              )),
        ],
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
                      Icons.person,
                      size: screenHeight * 0.14,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Icon(Icons.image_rounded,
                        size: screenHeight * 0.14, color: Colors.grey),
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
                    onPressed: () => null,
                    child: Text(
                      'Upload Image',
                      style: TextStyle(
                          color: Colors.black, fontSize: screenHeight * 0.018),
                    ),
                  ),
                  TextButton(
                    onPressed: () => null,
                    child: Text(
                      'Upload Logo',
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
            AddInfoForm(),
          ],
        ),
      ),
      bottomNavigationBar: BootomNav(),
    );
  }
}
