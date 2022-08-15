import 'package:flutter/material.dart';
import 'package:another_xlider/another_xlider.dart';

import 'package:act_trial1/practice_options.dart';
import 'package:act_trial1/practice_page.dart';

class CommitmentSlider extends StatefulWidget{
  @override
  _CommitmentSliderState createState() => _CommitmentSliderState();
}

class _CommitmentSliderState extends State<CommitmentSlider>{
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
                    text: "Commitment & Taking Actions",
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
                padding: EdgeInsets.all(10),
                child: Text(
                  "Once you feel that you have a clear sense of the underlying values that you wish to live by, the next step is to translate those values into committed action.  While possessing knowledge of what your values are is essential, it will mean very little at the end of the day if there is no action taken to live by those values. You must begin to make the behavioral choice and commitment to making your values manifest through your actions.",
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
                  "Committed action means engaging in large patterns of effective action that are driven and guided by core values. In order for committed action to be effective, you must be willing to be flexible as circumstances shift and change.  Flexibility allows you to adapt to the inevitable changes of life, while still being driven by your underlying values beneath the surface.  No matter how many times your behaviors fall short, you can always take the time to reassess your actions and get them back in line with your values. Knowing your true values, you can begin to set realistic goals based on those values.  For example, if you value doing well in school, a concrete goal would be to study for three hours each day.  Goals come and go as circumstances change and evolve, whereas values are a constant driving and motivating force for behaviors.",
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
                  "Committed Action Harris (2009) explains that there are 4 steps to committed action: \n(1) Choose a domain of your life that is a high priority for change. \n(2) Choose what values you wish to pursue in this domain. \n(3) Develop goals that are guided by those values. \n(4) Take action mindfully.",
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
                            //PracticeOptions().setCommitmentSlideValue(value);
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
            MaterialPageRoute(builder: (context) => PracticePage()),
          );
        },
      ),
    );
  }
}