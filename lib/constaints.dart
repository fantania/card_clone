import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color textFieldTextColor = Colors.black87;
const Color textFieldfillColor = Colors.white;
const Color textFieldIconColor = Colors.black;
const Color scaffolBackGroundColor = Color(0XFFf2f2f2);
const Color blueColor = Color(0xff00c8dd);
const IconData textFieldIconFacebook = FontAwesomeIcons.facebook;
const IconData textFieldIconSkype = FontAwesomeIcons.skype;
const IconData textFieldIconLinkedin = FontAwesomeIcons.linkedin;
const IconData textFieldIconTwitter = FontAwesomeIcons.twitter;
const IconData textFieldIconInstagram = FontAwesomeIcons.instagram;
const IconData textFieldIconTiktok = FontAwesomeIcons.tiktok;
const String addName = 'Add name';
const String textForEmptyName = 'name';
const String addRole = 'Add role';
const String textForEmptyRole = 'role';
const String addOrganization = 'Add organization';
const String textForEmptyOrganization = 'organization';
const String cellNumber = 'Cell number';
const String textForEmptycellNumber = 'Cell number';
const String phoneNumber = 'Phone number';
const String textForEmptyphoneNumber = 'Phone number';
const String faxNumber = 'Fax number';
const String textForEmptyfaxNumber = 'Fax number';
const String emailAddress = 'Email address';
const String textForEmptyemailAddress = 'Email address';
const String webSiteAddress = 'Website address';
const String textForEmptywebSiteAddress = 'Website address';
const String streetAddress = 'Street address';
const String textForEmptystreetAddress = 'Steet address';

const String facebook = 'Facebook';
const String textForEmptyFacebook = 'Facebook link';
const String skype = 'Skype';
const String textForEmptyskype = 'Skype account';
const String linkedin = 'LinkedIn';
const String textForEmptyLinkedin = 'LinkedIn link';
const String twitter = 'Twitter';
const String textForEmptyTwitter = 'Twitter link';
const String instagram = 'Instagram';
const String textForEmptyInstagram = 'Instagram account';
const String tiktok = 'Tik Tok account';
const String textForEmptyTiktok = 'Tik Tok account';
const String path = "images/";

class SizedBoxBetweenFormFields extends StatelessWidget {
  double screenHeight;
  SizedBoxBetweenFormFields({this.screenHeight});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.025,
    );
  }
}
