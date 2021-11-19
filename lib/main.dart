import 'package:flutter/material.dart';
import './login_screen.dart';

//The main func is the starting point for all our flutter apps
void main() {
  runApp( const LoginApp());
}


class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          fillColor: Colors.white,
           filled: true,
           enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
           ),
          // errorBorder: OutlineInputBorder(),
          // focusedBorder: OutlineInputBorder()
        ),
scaffoldBackgroundColor: Color(0xFF293462),
        primaryColor: Colors.grey
      ) ,
      debugShowCheckedModeBanner: false,
      home: const Loginscreen()
    );
  }
}

