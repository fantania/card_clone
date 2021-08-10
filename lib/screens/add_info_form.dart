import '/constaints.dart';

// import '/widgets/text_field_widget.dart';
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
var _formKey = GlobalKey<FormState>();
class AddInfoFormState extends State<AddInfoForm> {
  
  // String _name = '';
  // String _role = '';
  // String _organization = '';
  // String _cellNumber = '';
  // String _poneNumber = '';
  //String _faxNumber;
  // String _emailAddress = '';
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
          myTextFormField(
            hintText: addName,
            fillColor: textFieldfillColor,
            txtColor: textFieldTextColor,
            errorText: textForEmptyName,
            storage: _contact.name,
          ),
          myTextFormField(
            hintText: addRole,
            fillColor: textFieldfillColor,
            txtColor: textFieldTextColor,
            errorText: textForEmptyRole,
            storage: _contact.role,
          ),
          myTextFormField(
            hintText: addOrganization,
            fillColor: textFieldfillColor,
            txtColor: textFieldTextColor,
            errorText: textForEmptyOrganization,
            storage: _contact.organization,
          ),
          myTextFormField(
            hintText: cellNumber,
            fillColor: textFieldfillColor,
            txtColor: textFieldTextColor,
            errorText: textForEmptycellNumber,
            storage: _contact.cellNumber,
          ),
          myTextFormField(
            hintText: phoneNumber,
            fillColor: textFieldfillColor,
            txtColor: textFieldTextColor,
            errorText: textForEmptyphoneNumber,
            storage: _contact.phoneNumber,
          ),
          myTextFormField(
            hintText: emailAddress,
            fillColor: textFieldfillColor,
            txtColor: textFieldTextColor,
            errorText: textForEmptyemailAddress,
            storage: _contact.emailAddress,
          ),
          //! End
          // TextFormField(
          //   style: TextStyle(color: textFieldTextColor),
          //   decoration: InputDecoration(
          //       fillColor: textFieldfillColor, filled: true, hintText: addName),
          //   validator: (value) {
          //     if (value.isEmpty) {
          //       return textForEmptyName;
          //     }
          //     return null;
          //   },
          //   onChanged: (val) {
          //     print('Entered value $val');
          //     _name = val;
          //   },
          // ),
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

  void validateIput() {
    try {
      if (_formKey.currentState.validate()) {
        print('_contact.name.value: ${_contact.name.value}');
        // print('_name: $_name');
        _formKey.currentState.save();
      }
    } catch (e) {
      print(e);
    }
  }

  TextFormField myTextFormField({
    String hintText,
    Color fillColor,
    Color txtColor,
    String errorText,
    RxString storage,
  }) {
    return TextFormField(
      style: TextStyle(color: txtColor),
      decoration: InputDecoration(
          fillColor: fillColor, filled: true, hintText: hintText),
      validator: (value) {
        if (value.isEmpty) {
          return errorText;
        }
        return null;
      },
      onChanged: (val) {
        storage.value = val;
      },
    );
  }
}
