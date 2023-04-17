import 'package:flutter/material.dart';

// color
const kWhiteColor = Colors.white;
const kBlackColor = Colors.black;
const kTextColor = Color(0xff536D7A);

// sizedbox
const kHeight5 = SizedBox(height: 5);
const kHeight10 = SizedBox(height: 10);
const kHeight15 = SizedBox(height: 15);
const kHeight20 = SizedBox(height: 20);

const kWidth5 = SizedBox(width: 5);
const kWidth10 = SizedBox(width: 10);
const kWidth15 = SizedBox(width: 15);
const kWidth20 = SizedBox(width: 20);

// colors
const kWhitecolor = Colors.white;
const kBlackcolor = Colors.black;
const kBlueColor = Colors.blue;
const kGreenColor = Colors.green;
const kTileColor = Color.fromARGB(255, 166, 212, 250);
const kGreyColor = Colors.grey;
const kRedColor = Colors.red;

// Screen Navigation
void nextScreen(context, page) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
}

void screenReplacement(context, page) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => page));
}

// divider
const divider = Divider(thickness: 2);

// snackbar
void showSnackbar(context, String text) {
  final snackbar = SnackBar(
    content: Text(text),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}
