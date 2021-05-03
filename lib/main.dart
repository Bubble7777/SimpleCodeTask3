import 'dart:ui';
import 'package:flutter/material.dart';
import 'bodyfrofile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
              color: Colors.black54,
              icon: Icon(Icons.arrow_back),
              onPressed: () {}),
          actions: [
            IconButton(
                color: Colors.black,
                icon: Icon(Icons.more_vert),
                onPressed: () {})
          ],
        ),
        body: BodyDetail(),
      ),
      theme: ThemeData(
        fontFamily: "Roboto",
        textTheme: TextTheme(
          headline3: TextStyle(
            fontSize: 48,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
          ),
          headline4: TextStyle(
            fontSize: 34,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
          ),
          headline5: TextStyle(
            fontSize: 24,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
          ),
          headline6: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.15,
          ),
          subtitle1: TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
          ),
          subtitle2: TextStyle(
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
          ),
          button: TextStyle(
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.5,
          ),
          bodyText1: TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.444444,
          ),
          bodyText2: TextStyle(
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.25,
          ),
          caption: TextStyle(
            fontSize: 12,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.5,
          ),
          overline: TextStyle(
            fontSize: 10,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.5,
          ),
        ),
      ),
    );
  }
}

int hexColor(String color) {
  //adding prefix
  String newColor = '0xff' + color;
  //removing # sign
  newColor = newColor.replaceAll('#', '');
  //converting it to the integer
  int finalColor = int.parse(newColor);
  return finalColor;
}
