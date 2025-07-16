import 'package:flutter/material.dart';
import 'package:tymepass/screens/auth/login_screen.dart';

late Size mq;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  get titleTextStyle => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tymepass ',
      theme: ThemeData(
        appBarTheme:  const AppBarTheme(
        centerTitle: true,
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.blueAccent),
        titleTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 21),
        backgroundColor: Colors.white,
      ),
                  ),
       home: const LoginScreen()
    );
  }
}

