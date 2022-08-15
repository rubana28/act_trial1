import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'orientation_audio1.dart';
import 'package:act_trial1/vcatwo_audio.dart';
import 'consultation_calls.dart';

class VCAtwo extends StatefulWidget{
  @override
  _VCAtwoState createState() => _VCAtwoState();
}

class _VCAtwoState extends State<VCAtwo>{

  // final Uri video1 = Uri.parse('https://youtu.be/VYht-guymF4');
  // final Uri video2 = Uri.parse('https://youtu.be/F6eFFCi12v8');
  // final Uri video3 = Uri.parse('https://youtu.be/kI4bDaZ83g4');
  // final Uri video4 = Uri.parse('https://youtu.be/ldFD-L-Csz0');
  // final Uri video5 = Uri.parse('https://youtu.be/F7PxEy5IyV4');
  //
  // void _launchVideo1() async {
  //   if (!await launchUrl(video1)) throw 'Could not launch $video1';
  // }
  //
  // void _launchVideo2() async {
  //   if (!await launchUrl(video2)) throw 'Could not launch $video2';
  // }
  //
  // void _launchVideo3() async {
  //   if (!await launchUrl(video3)) throw 'Could not launch $video3';
  // }
  //
  // void _launchVideo4() async {
  //   if (!await launchUrl(video4)) throw 'Could not launch $video4';
  // }
  //
  // void _launchVideo5() async {
  //   if (!await launchUrl(video5)) throw 'Could not launch $video5';
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
                  "Values & Committed Action - Part ||",
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
                          MaterialPageRoute(builder: (context) => VCAtwo()), (Route<dynamic> route) => false
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
                  //       MaterialPageRoute(builder: (context) => VCAtwo()),
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
                        MaterialPageRoute(builder: (context) => VCATwoCall()),
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
                              //onPressed: _launchVideo1,
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => VCAtwoAudioOne()),
                                );
                              },
                              child: SizedBox(
                                width: 200,
                                child: Text(
                                  "Instructions for this module and for the Unwelcome Party Guest",
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
                                  MaterialPageRoute(builder: (context) => VCAtwoAudio()),
                                );
                              },
                              child: SizedBox(
                                width: 200,
                                child: Text(
                                  "We can choose to act on our values",
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
                              //onPressed: _launchVideo2,
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => VCAtwoAudioTwo()),
                                );
                              },
                              child: SizedBox(
                                width: 200,
                                child: Text(
                                  "Instructions for additional practice Exercise |",
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
                              //onPressed: _launchVideo3,
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => VCAtwoAudioThree()),
                                );
                              },
                              child: Text(
                                "Instructions for additional practice Exercise ||",
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
                              //onPressed: _launchVideo4,
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => VCAtwoAudioFour()),
                                );
                              },
                              child: Text(
                                "Instructions for additional practice Exercise |||",
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
                              //onPressed: _launchVideo5,
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => VCAtwoAudioFive()),
                                );
                              },
                              child: Text(
                                "Instructions for additional practice Exercise |V",
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