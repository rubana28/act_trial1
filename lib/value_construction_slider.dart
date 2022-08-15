import 'package:flutter/material.dart';
import 'package:another_xlider/another_xlider.dart';

import 'commitment_slider.dart';

class ValueConstructionSlider extends StatefulWidget{
  @override
  _ValueConstructionSliderState createState() => _ValueConstructionSliderState();
}

class _ValueConstructionSliderState extends State<ValueConstructionSlider>{
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
                    text: "Values Construction",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Our values are like the continents on a globe of the world. No matter how fast you spin that globe, you can never see all the continents at once; there are always some at the front, some at the back. From moment to moment, you get to choose: which values come to the front, and which move to the back?",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Why do I use values lists in my therapy sessions? \n1)As motivation for harder tasks in life. \n2)As guidance for your purpose or calling in life. \n3)As an everyday life reminder of what is truly important to you. \n4)As a signpost of how you want to behave in different areas of life (work, home, etc.) \n5)As an important factor in gaining confidence. \n6)To ease the decision-making process by knowing yourself better. \n7)To get to know people close to you better. \n8)To reduce stress before important events.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "How much will you rate?",
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
            MaterialPageRoute(builder: (context) => CommitmentSlider()),
          );
        },
      ),
    );
  }
}