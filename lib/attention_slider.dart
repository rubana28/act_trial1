import 'package:flutter/material.dart';
import 'package:another_xlider/another_xlider.dart';

import 'deffusion_slider.dart';
import 'package:act_trial1/practice_options.dart';

class AttentionSlider extends StatefulWidget{
  @override
  _AttentionSliderState createState() => _AttentionSliderState();
}

class _AttentionSliderState extends State<AttentionSlider>{
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
                    text: "Attention to Present",
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
                  "Staying in the “present moment,” “being here,” and similar guidance from well-meaning confidants may seem more prevalent these days. The inability to remain focused on the moment at hand has been an increasing source of mental stress and anxiety worldwide, especially with the increased connectedness brought on by modern technology. Focusing on the past can lead to feelings of regret and guilt; worrying about upcoming events or ruminating on what might happen in the future can potentially cause anxiety or steal joy from the present. Yet, for centuries, many world religions, traditions, and philosophies have lauded the benefits of being mindful of and living in the present moment.",
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
                  "The constant stream of distractions and interruptions people experience throughout their days can trigger the natural stress response and lead to increased levels of hormones like adrenaline and cortisol. Scientists link chronic stress to pain, inflammation, and high blood pressure. Constant stress and anxiety can increase the chances of serious health issues.",
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
                  "Attention to the present moment does not mean never remembering the past or planning for the future. It is the recognition that real life happens in the moment. Memories of the past can be pleasant or painful, but they are only thoughts. Looking to the future can cause stress or hopeful anticipation, but the imagined future is also simply a creation of the mind.",
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
                            //PracticeOptions().setAttentionSlideValue(value);
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
            MaterialPageRoute(builder: (context) => DeffusionSlider()),
          );
        },
      ),
    );
  }
}