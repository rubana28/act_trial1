import 'package:flutter/material.dart';
import 'package:another_xlider/another_xlider.dart';

import 'attention_slider.dart';
import 'package:act_trial1/practice_options.dart';

class AcceptanceSlider extends StatefulWidget{
  @override
  _AcceptanceSliderState createState() => _AcceptanceSliderState();
}

class _AcceptanceSliderState extends State<AcceptanceSlider>{
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
                    text: "Acceptance",
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
                  "The term acceptance is a noun with various different meanings.[2] When the person to whom a proposal is made signifies their assent, it is an acceptance of their offer, also called an agreement. For example, if someone gives a gift and another receives it, then they have accepted the gift; therefore, having acceptance. Another definition of acceptance has to do with positive welcome and belonging, favor, and endorsement. One approves of something. For instance, one can like someone and accept them due to their approval of that person. Another description is that acceptance can be an act of believing or assenting. The definition overlaps with toleration, but acceptance and tolerance are not synonyms.",
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
                  "Acceptance – An express act or implication by conduct that manifests assent to the terms of an offer in a manner invited or required by the offer so that a binding contract is formed. The exercise of power conferred by an offer by performance of some act. The act of a person to whom something is offered of tendered by another, whereby the offered demonstrates through an act invited by the offer an intention of retaining the subject of the offer.",
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
                            //PracticeOptions().setAcceptanceSlideValue(value);
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
            MaterialPageRoute(builder: (context) => AttentionSlider()),
          );
        },
      ),
    );
  }
}