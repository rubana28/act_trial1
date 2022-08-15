import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon/icon.dart';
import 'package:act_trial1/palette.dart';
import 'emotionSelection.dart';
import 'main.dart';
import 'home_page.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';

class LoginSignup extends StatefulWidget{
  @override
  _LoginSignupState createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup>{
  bool isMale = true;
  bool isSignupScreen = true;
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background_1.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 100, left: 20),
                //color: Color(0xFF3b5999).withOpacity(.85),
                color: Color(0x00000000),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Welcome to ",
                        style: TextStyle(
                          fontSize: 25,
                          letterSpacing: 2,
                          color: Colors.black87,
                        ),
                        children: [
                          TextSpan(
                            text: isSignupScreen ? "ACT App" : "Back,",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      isSignupScreen ? "Signup to Continue" : "Signin to Continue",
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 1,
                        color: Colors.grey[850],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),
          buildBottomHalfContainer(true),
          //Main Container for Login & Signup
          AnimatedPositioned(
            duration: Duration(microseconds: 700),
            curve: Curves.bounceInOut,
            top: isSignupScreen ? 200 : 250,
            child: AnimatedContainer(
              duration: Duration(microseconds: 700),
              curve: Curves.bounceInOut,
              padding: EdgeInsets.all(20),
              height: isSignupScreen ? 380 : 250,
              width: MediaQuery.of(context).size.width-40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState((){
                              isSignupScreen = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: !isSignupScreen
                                      ? Palette.activeColor
                                      : Palette.textColor1,
                                ),
                              ),
                              if(!isSignupScreen)
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.orange,
                                ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState((){
                              isSignupScreen = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "SIGNUP",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: isSignupScreen
                                      ? Palette.activeColor
                                      : Palette.textColor1,
                                ),
                              ),
                              if(isSignupScreen)
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.orange,
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if(isSignupScreen) buildSignupSelection(),
                    if(!isSignupScreen) buildSigninSelection(),
                  ],
                ),
              ),
            ),
          ),
          buildBottomHalfContainer(false),
          //Facebook or Google signin signup
          // Positioned(
          //   top: MediaQuery.of(context).size.height-100,
          //   right: 0,
          //   left: 0,
          //   child: Column(
          //     children: [
          //       Text(isSignupScreen ? "Or Signup with" : "Or Signin with"),
          //       Container(
          //         margin: EdgeInsets.only(right: 20, left: 20, top: 15),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: [
          //             buildTextButton(Icons.facebook, "Facebook",
          //                 Palette.facebookColor),
          //             buildTextButton(FlutterIcons.google_play_mco, "Google",
          //                 Palette.googleColor),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget buildTextField(
      IconData icon, String hintText, bool isPassword, bool isEmail){
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Palette.iconColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1,),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1,),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: Palette.textColor1,),
        ),
      ),
    );
  }

  Widget buildBottomHalfContainer(bool showShadow){
    return AnimatedPositioned(
      duration: Duration(microseconds: 700),
      curve: Curves.bounceInOut,
      top: isSignupScreen ? 535 : 430,
      right: 0,
      left: 0,
      child: Center(
        child: Container(
          height: 90,
          width: 90,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              if(showShadow)
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 1.5,
                  blurRadius: 10,
                  offset: Offset(0,1),
                ),
            ],
          ),
          child: !showShadow ? GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SliderHomePage()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange, Colors.red],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          )  : Center(),
        ),
      ),
    );
  }

  TextButton buildTextButton(IconData icon, String title, Color backgroundColor){
    return TextButton(
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SliderHomePage()),
        );
      },
      style: TextButton.styleFrom(
        side: BorderSide(width: 1, color: Colors.grey),
        maximumSize: Size(145, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        primary: Colors.white,
        backgroundColor: backgroundColor,
      ),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 5,),
          Text(title),
        ],
      ),
    );
  }

  Container buildSignupSelection(){
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          buildTextField(Icons.account_circle_outlined,
              "NickName", false, false),
          buildTextField(Icons.email_outlined,
              "Email", false, true),
          buildTextField(Icons.lock_outline,
              "Password", true, false),
          buildTextField(Icons.date_range,
              "Birth Year", false, false),
          Container(
            width: 200,
            margin: EdgeInsets.only(top: 10, bottom: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "By pressing 'Submit' you agree to our ",
                style: TextStyle(color: Palette.textColor2,),
                children: [
                  TextSpan(
                    text: "terms & conditions",
                    style: TextStyle(color: Colors.orange),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildSigninSelection(){
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          buildTextField(Icons.mail_outline, "info@demo.com", false, true),
          buildTextField(Icons.lock_outline, "*************", true, false),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isRememberMe,
                    activeColor: Palette.textColor2,
                    onChanged: (value){
                      setState((){
                        isRememberMe = !isRememberMe;
                      });
                    },
                  ),
                  Text("Remember Me",
                    style: TextStyle(
                      fontSize: 12, color: Palette.textColor1,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: (){},
                child: Text("Forgot Password?",
                  style: TextStyle(
                      fontSize: 12,
                      color: Palette.textColor1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}