import '/constaints.dart';

import '/widgets/text_field_widget.dart';
// import '/widgets/text_field_widget_with_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controllers/contact.dart';

class AddInfoForm extends StatefulWidget {
  AddInfoForm({Key key}) : super(key: key);
  @override
  AddInfoFormState createState() {
    return AddInfoFormState();
  }
}

class AddInfoFormState extends State<AddInfoForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  // String _role;
  // String _organization;
  // String _cellNumber;
  // String _poneNumber;
  // String _faxNumber;
  // String _emailAddress;
  // String _websiteAddress;
  // String _streetAddress;
  // String _facebook;
  // String _skype;
  // String _linkedin;
  // String _twitter;
  // String _instagram;
  // String _tiktok;
  final Contact _contact = Get.put(Contact());

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            style: TextStyle(color: textFieldTextColor),
            decoration: InputDecoration(
                fillColor: textFieldfillColor,
                filled: true,
                hintText: addName),
            validator: (value) {
              if (value.isEmpty) {
                return textForEmptyName;
              }
              return null;
            },
            onChanged: (val) {
              print('Entered value $val');
              _name = val;
            },
          ),
          // TextFieldWidget(
          //   hintText: addName,
          //   textIfEmpty: textForEmptyName,
          //   textFieldValue: _name,
          //   isRequired: true,
          // ),
          // TextFieldWidget(
          //     hintText: addRole,
          //     textIfEmpty: textForEmptyRole,
          //     textFieldValue: _role,
          //     isRequired: true),
          // TextFieldWidget(
          //     hintText: addOrganization,
          //     textIfEmpty: textForEmptyOrganization,
          //     textFieldValue: _organization,
          //     isRequired: true),
          // SizedBoxBetweenFormFields(
          //   screenHeight: screenHeight,
          // ),
          // TextFieldWidget(
          //     hintText: cellNumber,
          //     textIfEmpty: textForEmptycellNumber,
          //     textFieldValue: _cellNumber,
          //     isRequired: false),
          // TextFieldWidget(
          //     hintText: phoneNumber,
          //     textIfEmpty: textForEmptyphoneNumber,
          //     textFieldValue: _poneNumber,
          //     isRequired: false),
          // TextFieldWidget(
          //     hintText: faxNumber,
          //     textIfEmpty: textForEmptyfaxNumber,
          //     textFieldValue: _faxNumber,
          //     isRequired: false),
          // TextFieldWidget(
          //     hintText: emailAddress,
          //     textIfEmpty: textForEmptyemailAddress,
          //     textFieldValue: _emailAddress,
          //     isRequired: true),
          // TextFieldWidget(
          //     hintText: webSiteAddress,
          //     textIfEmpty: textForEmptywebSiteAddress,
          //     textFieldValue: _websiteAddress,
          //     isRequired: false),
          // TextFieldWidget(
          //     hintText: streetAddress,
          //     textIfEmpty: textForEmptystreetAddress,
          //     textFieldValue: _streetAddress,
          //     isRequired: false),
          // SizedBoxBetweenFormFields(
          //   screenHeight: screenHeight,
          // ),
          // TextFieldWidgetWithIcon(
          //   hintText: facebook,
          //   textIfEmpty: textForEmptyFacebook,
          //   textFieldValue: _facebook,
          //   isRequired: false,
          //   textFieldIcon: textFieldIconFacebook,
          // ),
          // TextFieldWidgetWithIcon(
          //   hintText: skype,
          //   textIfEmpty: textForEmptyskype,
          //   textFieldValue: _skype,
          //   isRequired: false,
          //   textFieldIcon: textFieldIconSkype,
          // ),
          // TextFieldWidgetWithIcon(
          //   hintText: linkedin,
          //   textIfEmpty: textForEmptyLinkedin,
          //   textFieldValue: _linkedin,
          //   isRequired: false,
          //   textFieldIcon: textFieldIconLinkedin,
          // ),
          // TextFieldWidgetWithIcon(
          //   hintText: twitter,
          //   textIfEmpty: textForEmptyTwitter,
          //   textFieldValue: _twitter,
          //   isRequired: false,
          //   textFieldIcon: textFieldIconTwitter,
          // ),
          // TextFieldWidgetWithIcon(
          //   hintText: instagram,
          //   textIfEmpty: textForEmptyInstagram,
          //   textFieldValue: _instagram,
          //   isRequired: false,
          //   textFieldIcon: textFieldIconInstagram,
          // ),
          // TextFieldWidgetWithIcon(
          //   hintText: tiktok,
          //   textIfEmpty: textForEmptyTiktok,
          //   textFieldValue: _tiktok,
          //   isRequired: false,
          //   textFieldIcon: textFieldIconTiktok,
          // ),
        ],
      ),
    );
  }

  putValueInController() {
    _contact.name.value = _name;
    // _contact.role.value = _role;
    // _contact.organization.value = _organization;
    // _contact.cellNumber.value = _cellNumber;
    // _contact.phoneNumber.value = _name;
    // _contact.emailAdress.value = _emailAddress;
    // _contact.webSite.value = _websiteAddress;
    // _contact.address.value = _streetAddress;
    // _contact.facebook.value = _facebook;
    // _contact.skype.value = _skype;
    // _contact.linkedIn.value = _linkedin;
    // _contact.twitter.value = _twitter;
    // _contact.instagram.value = _instagram;
    // _contact.tiktok.value = _tiktok;
  }

  void validateIput() {
    try {
      if (_formKey.currentState.validate()) {
        print('_contact.name.value: ${_contact.name.value}');
        print('_name: $_name');
//    If all data are correct then save data to out variables
        putValueInController();
        _formKey.currentState.save();
      }
    } catch (e) {
      print(e);
    }
  }
}
