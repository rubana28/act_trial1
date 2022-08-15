import 'package:flutter/material.dart';
import 'package:another_xlider/another_xlider.dart';

import 'value_construction_slider.dart';
import 'package:act_trial1/practice_options.dart';

class ObservingSlider extends StatefulWidget{
  @override
  _ObservingSliderState createState() => _ObservingSliderState();
}

class _ObservingSliderState extends State<ObservingSlider>{
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
          margin: EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                color: Colors.transparent,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Observing Self",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "We can define three parts of our selves: the Physical Self, the Thinking Self and the Observing Self. We can easily demonstrate the Physical Self. We can be playful when exploring this with our clients. You look at me and see me as a whole. If I cut my fingernails am I still myself? If I cut my finger off, am I still me? How about if I cut my arm off? The answer is still yes. It begs the question how much do we need to cut off before I cease to be ‘me’? The point of this exercise is to invoke a sense of curiosity around experiencing the different parts of ourselves, of which the physical self is one. This should be a fun, light-hearted exercise.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height:1,),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "The second demonstration is a little bit harder for clients to understand. This is a demonstration of the Thinking Self. The Thinking Self is that part of us that generates the thoughts, judgements, comments, images and memories that give each of us an individual, private perspective on and interpretations of our experiences of the world. We often find these perspectives useful, so we strongly connect with them – which means it is also easy to connect with the perspectives that our Thinking Self produces that are unhelpful.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 1,),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "We can then introduce the Observing Self through the previous Physical and Thinking Self exercises. The Observing Self is that part of us that is able to ‘watch, observe and witness’ the Physical Self and the Thinking Self – to notice that there is a part of us (Observing Self) that is able to witness the other parts (Physical and Thinking Self). It helps us realise that we are not our thoughts – that if we can see our thoughts, we cannot be our thoughts. For example, our Thinking Self enables us to prepare breakfast, decide that the blue tie I really like matches a particular shirt and will be suitable for a job interview this morning, and remember which route will be best to get there. However, the Thinking Self also generates the self story stating ‘I’m not good enough’ and ‘I’m not smart enough’. We fuse with these unhelpful stories, which leads to nervousness and, if repeated often enough over time, an unhelpful sense of self.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.black87,
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
                            //PracticeOptions().setObservingSelfSlideValue(value);
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
            MaterialPageRoute(builder: (context) => ValueConstructionSlider()),
          );
        },
      ),
    );
  }
}