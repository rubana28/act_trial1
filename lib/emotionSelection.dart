import 'package:act_trial1/palette.dart';
import 'act_components.dart';
import 'acceptance_slide.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmotionSelection extends StatefulWidget{
  @override
  _EmotionSelectionState createState() => _EmotionSelectionState();

}

class _EmotionSelectionState extends State<EmotionSelection>{
  //final void Function(bool) toggleStatus;

  Map<String, bool> values = {
    'Depression' : false,
    'Fear' : false,
    'Nervousness' : false,
    'Sadness' : false,
    'Worry' : false,
    'Frustration' : false,
    'Anger' : false,
    'Guilt' : false,
  };

  var selectedEmo = [];

  getCheckboxItems(){
    values.forEach((key, value) {
      if(value == true){
        selectedEmo.add(key);
      }
    });

    print(selectedEmo);
    selectedEmo.clear();
  }

  // void toggleStatus(bool status){
  //   values[key] = status;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background_1.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 120, left: 20),
                //color: Color(0xFF3b5999).withOpacity(.85),
                color: Color(0x00000000),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Which of the following emotion(s) do you have now?",
                        style: TextStyle(
                          fontSize: 25,
                          letterSpacing: 2,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 230,
            child: Container(
              padding: EdgeInsets.all(20),
              height: 500,
              width: MediaQuery.of(context).size.width-40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: ListView(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                scrollDirection: Axis.vertical,
                children: [
                  SizedBox(
                    height: 300,
                    child: ListView(
                      children: values.keys.map((String key){
                        return new CheckboxListTile(
                          title: new Text(key),
                          value: values[key],
                          activeColor: Colors.orange,
                          checkColor: Colors.white,
                          onChanged: (bool? value){

                            if(value != null){
                              setState((){
                                values[key] = value;
                              });
                            }
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Other Emotions',
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AcceptanceSlider()),
                      );
                    },
                    child: Text(
                      "Submit",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}