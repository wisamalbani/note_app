import 'package:flutter/material.dart';
import 'package:note_app/auth/login.dart';
import 'package:note_app/auth/signup.dart';
import 'package:note_app/crud/addnotes.dart';
import 'package:note_app/home/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
        theme: ThemeData(
          primaryColor: Colors.blue,
          buttonTheme: ButtonThemeData(buttonColor: Colors.blue),
          textTheme: TextTheme(
              headline6: TextStyle(fontSize: 20, color: Colors.white)),
        ),
        routes: {
          "login": (context) => Login(),
          "signup": (context) => Signup(),
          "homepage": (context) => HomePage(),
          "addnotes": (context) => AddNotes(),
        });
  }
}
