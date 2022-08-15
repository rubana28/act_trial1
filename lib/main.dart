import 'dart:ffi';
import 'dart:math';
import 'package:act_trial1/emotionSelection.dart';
import 'package:flutter_round_slider/flutter_round_slider.dart';
import 'package:flutter/material.dart';
import 'login_signup.dart';
import 'package:act_trial1/palette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      //home: SignIn(),
      //home: LoginSignup(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState(){
    super.initState();

    _navigateToHome();
  }

  _navigateToHome() async{
    await Future.delayed(const Duration(milliseconds: 3000), (){});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginSignup()));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        // constraints: BoxConstraints.expand(),
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topCenter,
        //     colors: [
        //       Colors.amber,
        //       Colors.orangeAccent,
        //       Colors.orange,
        //     ],
        //   ),
        // ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background_1.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/logo1.png"),
              ),
              SizedBox(height: 10,),
              Text(
                "APT Emotion App",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




