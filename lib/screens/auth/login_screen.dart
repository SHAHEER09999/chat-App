import 'package:flutter/material.dart';
import 'package:tymepass/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        
        shadowColor: Colors.blue,
        elevation: 3,
        automaticallyImplyLeading: false,
        title: const Text('Welcome to Tymepass'),
      ),
      body: Stack(children: [Positioned(
        top: mq.height * .15,
        left: mq.width * .25,
        width: mq.width * .5,
        child: Image.asset('images/launchicon.png')),
        Positioned(
        bottom: mq.height * .15,
        left: mq.width * .05,
        width: mq.width * .9,
        height: mq.height * .07,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.yellow,
            elevation: 5
          ),
          onPressed: (){},
          icon: Image.asset('images/search.png', height: mq.height * .05,) , 
          label: RichText(text: TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 16),
            children: [
            TextSpan(text: 'Sign in with '),
            TextSpan(text: 'Google', style: TextStyle(fontWeight: FontWeight.w900))
          ]))))])
      );
  }
}