
import 'dart:math';
import 'package:act_trial1/emotionSelection.dart';
import 'package:flutter_round_slider/flutter_round_slider.dart';
import 'package:flutter/material.dart';
import 'login_signup.dart';
import 'orientation.dart';
import 'package:act_trial1/palette.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'creative_hopelessness.dart';
import 'control_willingness.dart';
import 'acceptance.dart';
import 'cognitive_defusion_observing.dart';
import 'observing_being_present.dart';
import 'package:act_trial1/values_committed_action_one.dart';
import 'package:act_trial1/values_committed_action_two.dart';

class SliderHomePage extends StatefulWidget{
  @override
  _SliderHomePageState createState() => _SliderHomePageState();
}

class _SliderHomePageState extends State<SliderHomePage>{
  final List<double> values = [0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0];
  double _currentSliderValue = 1;
  int selectedIndex = 0;

  Widget sleekSlider = SleekCircularSlider(
    appearance: CircularSliderAppearance(),
    min: 0,
    max: 10,
    initialValue: 0,
    onChange: (double value){
      print(value);
    },
  );

  // Widget sleekSlider2 = SleekCircularSlider(
  //   appearance: CircularSliderAppearance(),
  //   min: 0,
  //   max: 10,
  //   initialValue: 0,
  //   onChange: (double value){
  //     print(value);
  //     setState((){
  //       if(value < 4){
  //         _visible = false;
  //       } else{
  //         _visible = true;
  //       }
  //     });
  //   },
  // );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   title: const Text('ACT Emotions'),
      // ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background_1.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 100.0, left: 10.0, right: 10.0),
          child: ListView(
            children: [
              Container(
                color: Colors.transparent,
                // decoration: BoxDecoration(
                //   color: Colors.white70,
                //   borderRadius: BorderRadius.circular(15),
                //   boxShadow: [
                //     BoxShadow(
                //       color: Colors.black.withOpacity(0.3),
                //       blurRadius: 15,
                //       spreadRadius: 5,
                //     ),
                //   ],
                // ),
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "How much distress do you feel now?",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        text: "Use the slider to select the distress level",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    ClipRect(
                      // child: Slider(
                      //   value: selectedIndex.toDouble(),
                      //   max: values.length - 1,
                      //   divisions: values.length - 1,
                      //   label: values[selectedIndex].toString(),
                      //   onChanged: (double value) {
                      //     setState(() {
                      //       selectedIndex = value.toInt();
                      //     });
                      //   },
                      // ),
                      child: sleekSlider,

                    ),
                    SizedBox(height: 30,),
                    MaterialButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EmotionSelection()),
                        );
                      },
                      color: Colors.transparent,
                      textColor: Colors.white60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Submit",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Icon(Icons.arrow_right_alt_outlined),
                        ],
                      ),
                      //shape: CircleBorder(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Weekly Modules",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.fromLTRB(1, 0, 1, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //DecorationPosition.background = Colors.transparent,
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => OrientationPage()),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.transparent),
                              maximumSize: MaterialStateProperty.all(Size(150, 200)),
                            ),
                            child: Image.asset("assets/button/orientation2.png"),
                          ),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ControlHopelessness()),
                              );
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                maximumSize: MaterialStateProperty.all(Size(150, 200)),
                            ),
                            child: Image.asset("assets/button/ch2.png"),
                          ),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ControlWillingness()),
                              );
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                maximumSize: MaterialStateProperty.all(Size(150, 200)),
                            ),
                            child: Image.asset("assets/button/cw2.png"),
                          ),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Acceptance()),
                              );
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                maximumSize: MaterialStateProperty.all(Size(150, 200)),
                            ),
                            child: Image.asset("assets/button/acceptance2.png"),
                          ),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CDO()),
                              );
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                maximumSize: MaterialStateProperty.all(Size(150, 200)),
                            ),
                            child: Image.asset("assets/button/cdo12.png"),
                          ),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => OBP()),
                              );
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                maximumSize: MaterialStateProperty.all(Size(150, 200)),
                            ),
                            child: Image.asset("assets/button/ob2.png"),
                          ),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => VCAone()),
                              );
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                maximumSize: MaterialStateProperty.all(Size(150, 200)),
                            ),
                            child: Image.asset("assets/button/vca12.png"),
                          ),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => VCAtwo()),
                              );
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                maximumSize: MaterialStateProperty.all(Size(150, 200)),
                            ),
                            child: Image.asset("assets/button/vca22.png"),
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
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.transparent,
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.emoji_emotions_rounded),
      //         label: "Dos"
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.add_chart),
      //         label: "Goals"
      //     ),
      //   ],
      // ),
    );
  }
}

class SleekSliderHomePage extends StatefulWidget{
  @override
  _SleekSliderHomePageState createState() => _SleekSliderHomePageState();
}

class _SleekSliderHomePageState extends State<SleekSliderHomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('ACT Emotions'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background_1.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Card(
              child: SleekCircularSlider(
                min: 1,
                max: 10,
                initialValue: 1,

                onChange: (double value){
                  //Text('${value}');
                  if (value == 1)
                    Text("Great") ;
                  if (value == 2)
                    Text("Good");
                  if (value == 3)
                    Text("Neutral");
                  if (value == 4)
                    Text("Major Depression");
                  if (value == 2)
                    Text("Anxious Stress");
                  if (value == 2)
                    Text("Melancholy");
                  if (value == 2)
                    Text("Agitated");
                  if (value == 2)
                    Text("Persistent Depressive Disorder");
                  if (value == 2)
                    Text("Bipolar Disorder");
                  if (value == 2)
                    Text("Psychotic Depression");
                },
              ),
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FlutterRoundSlider()),
                );
              },
              child: Text(
                "Submit",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FlutterRoundSlider extends StatefulWidget{
  @override
  _FlutterRoundSliderState createState() => _FlutterRoundSliderState();
}

class _FlutterRoundSliderState extends State<FlutterRoundSlider>{
  double value = 0;
  final valueTween = Tween<double>(begin: 0, end: 10);

  nextPage(double value){
    if (value > 3){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => EmotionSelection()),
      );
    } else {
      // Stay in that page
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('ACT Emotions'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background_1.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 400,
              width: 390,
              child: Card(
                margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        RoundSlider(
                          style: RoundSliderStyle(
                            alignment: RoundSliderAlignment.left,
                          ),
                          value: value,
                          onChanged: (double value) {
                            setState(() {
                              this.value = value;
                            });
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${valueTween.transform(value).round()}',
                                style: const TextStyle(
                                  fontSize: 64,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              TextButton(
                                child: const Text(
                                  'Submit',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                //onPressed: nextPage(value),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => EmotionSelection()),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.transparent,
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.emoji_emotions_rounded),
      //       label: "Dos"
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.add_chart),
      //       label: "Goals"
      //     ),
      //   ],
      // ),
    );
  }
}