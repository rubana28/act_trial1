import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sleek_circular_slider/sleek_circular_slider.dart';
// import 'package:flutter_round_slider/flutter_round_slider.dart';

import 'package:act_trial1/practice_options.dart';

class PracticePage extends StatefulWidget{
  @override
  _PracticePageState createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage>{
  List _sixComponents = [];

  addComponents(double a, double b, double c, double d, double e, double f){
    _sixComponents.add("$a, $b, $c, $d, $e, $f");
  }

  // print(_sixComponents);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage("assets/background_1.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'ACT Skill Practice Options',
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline1,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              height: 700,
              //decoration: BoxDecoration(color: Colors.brown[100]),
              decoration: BoxDecoration(color: Colors.grey[400]),
              child: Column(
                //margin: EdgeInsets.only(top: 30.0, left: 10.0, ),
                children: [
                  Container(
                    //alignment: Alignment.topLeft,
                    height: 30,
                    width: 300,
                    // decoration: BoxDecoration(
                    //   //color: Colors.white70,
                    //   boxShadow: <BoxShadow>[
                    //     BoxShadow(
                    //       color: Colors.black45,
                    //       offset: Offset(0.0, 0.75),
                    //     ),
                    //   ],
                    //   borderRadius: BorderRadius.all(Radius.circular(10)),
                    // ),
                    margin: EdgeInsets.only(top: 20.0, left: 10.0),
                    child: Text(
                      'Select an practice option',
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.labelMedium,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 300,
                    color: Colors.transparent,
                    margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                    child: Row(
                      children: <Widget>[
                        // Expanded(
                        //   flex: 1,
                        //   child: Container(
                        //     width: MediaQuery.of(context).size.width * 0.05,
                        //     child: ImageIcon(
                        //       AssetImage('assets/option1.png'),
                        //       size: 80.0,
                        //     ),
                        //   ),
                        // ),
                        ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PracticePage()),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.transparent),
                            maximumSize: MaterialStateProperty.all(Size(150, 200)),
                          ),
                          child: Image.asset("assets/option1.png"),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Sushi Train Metaphor",
                                  style: TextStyle(color: Colors.black45, fontSize: 14),
                                  //textAlign: TextAlign.center,
                                ),
                                Divider(height: 5.0),
                                Text(
                                  "2 minutes 13 seconds",
                                  style: TextStyle(color: Colors.black45, fontSize: 12),
                                  //textAlign: TextAlign.,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 300,
                    color: Colors.transparent,
                    margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                    // decoration: BoxDecoration(
                    //   boxShadow: <BoxShadow>[
                    //     BoxShadow(
                    //       color: Colors.grey.withOpacity(0.5),
                    //       spreadRadius: 5,
                    //       blurRadius: 7,
                    //       offset: Offset(0, 3),
                    //     ),
                    //   ],
                    // ),
                    child: Row(
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PracticePage()),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.transparent),
                            maximumSize: MaterialStateProperty.all(Size(150, 200)),
                          ),
                          child: Image.asset("assets/option2.png"),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Disobey on purpose",
                                  style: TextStyle(color: Colors.black45, fontSize: 14),
                                  //textAlign: TextAlign.center,
                                ),
                                Divider(height: 5.0),
                                Text(
                                  "1 minute 18 seconds",
                                  style: TextStyle(color: Colors.black45, fontSize: 12),
                                  //textAlign: TextAlign.,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}