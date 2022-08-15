import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

import 'package:act_trial1/vcaOne_audio_files.dart';
import 'consultation_calls.dart';

class VCAone extends StatefulWidget{
  @override
  _VCAoneState createState() => _VCAoneState();
}

class _VCAoneState extends State<VCAone>{
  // final Uri video1 = Uri.parse('https://youtu.be/v-l0Tj0PdfM');
  //
  // void _launchVideo1() async {
  //   if (!await launchUrl(video1)) throw 'Could not launch $video1';
  // }

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
                  "Values & Committed Action - Part |",
                  textAlign: TextAlign.center,
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
                          MaterialPageRoute(builder: (context) => VCAone()), (Route<dynamic> route) => false
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
                  // FlatButton(
                  //   onPressed: (){
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => VCAone()),
                  //
                  //     );
                  //   },
                  //   color: Colors.white,
                  //   textColor: Colors.white,
                  //   shape: RoundedRectangleBorder(
                  //     side: BorderSide(
                  //       color: Colors.black,
                  //       width: 2,
                  //       style: BorderStyle.solid,
                  //     ),
                  //     borderRadius: BorderRadius.circular(5),
                  //   ),
                  //   child: Text(
                  //     "Worksheets",
                  //     style: TextStyle(
                  //       fontSize: 15,
                  //       fontWeight: FontWeight.normal,
                  //       color: Colors.black87,
                  //     ),
                  //   ),
                  // ),
                  FlatButton(
                    onPressed: (){
                      Colors.blue;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VCAOneCall()),
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
                                  MaterialPageRoute(builder: (context) => VCAOneAudioOne()),
                                );
                              },
                              child: SizedBox(
                                width: 200,
                                child: Text(
                                  "Values in ACT",
                                  textAlign: TextAlign.left,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.blue,
                                  ),
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
                                  MaterialPageRoute(builder: (context) => VCAOneAudioTwo()),
                                );
                              },
                              child: SizedBox(
                                width: 200,
                                child: Text(
                                  "Values in ACT - Continued",
                                  textAlign: TextAlign.left,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.blue,
                                  ),
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
                                  MaterialPageRoute(builder: (context) => VCAOneAudioThree()),
                                );
                              },
                              child: SizedBox(
                                width: 200,
                                child: Text(
                                  "Values Exercise",
                                  textAlign: TextAlign.left,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.blue,
                                  ),
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
                              //onPressed: _launchVideo1,
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => VCAOneAudioFour()),
                                );
                              },
                              child: SizedBox(
                                width: 200,
                                child: Text(
                                  "Committed Action with the link to Demons on the Boat video",
                                  textAlign: TextAlign.left,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.blue,
                                  ),
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