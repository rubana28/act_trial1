import 'package:flutter/material.dart';
import 'package:another_xlider/another_xlider.dart';

import 'package:act_trial1/practice_page.dart';

class ActComponents extends StatefulWidget{
  @override
  _ActComponentsState createState() => _ActComponentsState();
}

class _ActComponentsState extends State<ActComponents>{
  final List<double> values = [0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0];
  int selectedIndexOne = 0;
  int selectedIndexTwo = 0;
  int selectedIndexThree = 0;
  int selectedIndexFour = 0;
  int selectedIndexFive = 0;
  int selectedIndexSix = 0;

  double _lowerValue = 0;
  double _upperValue = 10;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background_1.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.transparent,
          margin: EdgeInsets.only(top: 70.0, left: 10.0, right: 10.0),
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                color: Colors.transparent,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "ACT Components",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Acceptance",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    ClipRect(
                      child: Slider(
                        value: selectedIndexOne.toDouble(),
                        max: values.length - 1,
                        divisions: values.length - 1,
                        label: values[selectedIndexOne].toString(),
                        onChanged: (double value) {
                          setState(() {
                            selectedIndexOne = value.toInt();
                          });
                        },
                      ),
                    ),
                    // FlutterSlider(
                    //   values: [0],
                    //   max: 10,
                    //   min: 0,
                    //   handlerAnimation: FlutterSliderHandlerAnimation(
                    //       curve: Curves.elasticOut,
                    //       reverseCurve: null,
                    //       duration: Duration(milliseconds: 700),
                    //       scale: 1.4),
                    //   onDragging: (handlerIndex, lowerValue, upperValue){
                    //     setState((){
                    //       _lowerValue = lowerValue;
                    //       _upperValue = upperValue;
                    //     });
                    //   },
                    // ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Attention to present",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    ClipRect(
                      child: Slider(
                        value: selectedIndexTwo.toDouble(),
                        max: values.length - 1,
                        divisions: values.length - 1,
                        label: values[selectedIndexTwo].toString(),
                        onChanged: (double value) {
                          setState(() {
                            selectedIndexTwo = value.toInt();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Diffusion",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    ClipRect(
                      child: Slider(
                        value: selectedIndexThree.toDouble(),
                        max: values.length - 1,
                        divisions: values.length - 1,
                        label: values[selectedIndexThree].toString(),
                        onChanged: (double value) {
                          setState(() {
                            selectedIndexThree = value.toInt();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Observing self",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    ClipRect(
                      child: Slider(
                        value: selectedIndexFour.toDouble(),
                        max: values.length - 1,
                        divisions: values.length - 1,
                        label: values[selectedIndexFour].toString(),
                        onChanged: (double value) {
                          setState(() {
                            selectedIndexFour = value.toInt();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Values construction",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    ClipRect(
                      child: Slider(
                        value: selectedIndexFive.toDouble(),
                        max: values.length - 1,
                        divisions: values.length - 1,
                        label: values[selectedIndexFive].toString(),
                        onChanged: (double value) {
                          setState(() {
                            selectedIndexFive = value.toInt();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Commitment & taking action",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    ClipRect(
                      child: Slider(
                        value: selectedIndexSix.toDouble(),
                        max: values.length - 1,
                        divisions: values.length - 1,
                        label: values[selectedIndexSix].toString(),
                        onChanged: (double value) {
                          setState(() {
                            selectedIndexSix = value.toInt();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PracticePage()),
          );
        },
      ),
    );
  }
}