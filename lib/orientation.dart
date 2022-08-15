import 'package:flutter/material.dart';

import 'orientation_audio1.dart';
import 'consultation_calls.dart';

class OrientationPage extends StatefulWidget{
  @override
  _OrientationPageState createState() => _OrientationPageState();
}

class _OrientationPageState extends State<OrientationPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Orientation"),
      // ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background_1.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Orientation",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: (){
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => OrientationPage()), (Route<dynamic> route) => false
                      );
                    },
                    color: Colors.white,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "Intro",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){
                      Colors.blue;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OrientationCall()),
                      );
                    },
                    color: Colors.white,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "Contact",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Depression (major depressive disorder) is a common and serious medical illness that negatively affects how you feel, the way you think and how you act. Fortunately, it is also treatable. Depression causes feelings of sadness and/or a loss of interest in activities you once enjoyed. It can lead to a variety of emotional and physical problems and can decrease your ability to function at work and at home."
                    "Depression affects an estimated one in 15 adults (6.7%) in any given year. And one in six people (16.6%) will experience depression at some time in their life. Depression can occur at any time, but on average, first appears during the late teens to mid-20s. Women are more likely than men to experience depression. Some studies show that one-third of women will experience a major depressive episode in their lifetime. There is a high degree of heritability (approximately 40%) when first-degree relatives (parents/children/siblings) have depression.",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.black87,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 5),
              child: Column(
                children: [
                  Card(
                    child: Row(
                      children: [
                        Icon(Icons.audiotrack_outlined),
                        Column(
                          children: [
                            TextButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => OrientationAudioOne()),
                                );
                              },
                              child: Text(
                                "Orientation",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            // Text(
                            //   "This is a audio file for the orientation",
                            //   style: TextStyle(
                            //     fontSize: 10,
                            //     fontWeight: FontWeight.normal,
                            //     color: Colors.black87,
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      children: [
                        Icon(Icons.audiotrack_outlined),
                        Column(
                          children: [
                            TextButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => OrientationAudioTwo()),
                                );
                              },
                              child: Text(
                                "Basic Concepts of ACT",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            // Text(
                            //   "This is a audio file for the orientation",
                            //   style: TextStyle(
                            //     fontSize: 10,
                            //     fontWeight: FontWeight.normal,
                            //     color: Colors.black87,
                            //   ),
                            // ),
                          ],
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