// import 'package:flutter/material.dart';
// import 'package:another_xlider/another_xlider.dart';
//
// import 'attention_slider.dart';
// import 'package:act_trial1/practice_options.dart';
//
// class AcceptanceSlider extends StatelessWidget{
//   final List<double> values = [0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0];
//   int selectedIndexOne = 0;
//
//   double _lowerValue = 0;
//   double _upperValue = 10;
//   double selectedValue = 0;
//
//   AcceptanceSlider(this.selectedIndexOne);
//
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: Container(
//         constraints: BoxConstraints.expand(),
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/background_1.jpeg"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Container(
//           color: Colors.transparent,
//           margin: EdgeInsets.only(top: 70.0, left: 10.0, right: 10.0),
//           child: ListView(
//             //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Container(
//                 color: Colors.transparent,
//                 child: RichText(
//                   textAlign: TextAlign.center,
//                   text: TextSpan(
//                     text: "Acceptance",
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 50,),
//               Container(
//                 padding: EdgeInsets.all(10),
//                 child: Text(
//                   "The term acceptance is a noun with various different meanings.[2] When the person to whom a proposal is made signifies their assent, it is an acceptance of their offer, also called an agreement. For example, if someone gives a gift and another receives it, then they have accepted the gift; therefore, having acceptance. Another definition of acceptance has to do with positive welcome and belonging, favor, and endorsement. One approves of something. For instance, one can like someone and accept them due to their approval of that person. Another description is that acceptance can be an act of believing or assenting. The definition overlaps with toleration, but acceptance and tolerance are not synonyms.",
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.normal,
//                     color: Colors.black87,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10,),
//               Container(
//                 padding: EdgeInsets.all(10),
//                 child: Text(
//                   "Acceptance – An express act or implication by conduct that manifests assent to the terms of an offer in a manner invited or required by the offer so that a binding contract is formed. The exercise of power conferred by an offer by performance of some act. The act of a person to whom something is offered of tendered by another, whereby the offered demonstrates through an act invited by the offer an intention of retaining the subject of the offer.",
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.normal,
//                     color: Colors.black87,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 50,),
//               Container(
//                 color: Colors.transparent,
//                 child: Column(
//                   children: [
//                     RichText(
//                       text: TextSpan(
//                         text: "How much will you rate?",
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 5,),
//                     ClipRect(
//                       child: Slider(
//                         value: selectedIndexOne.toDouble(),
//                         max: values.length - 1,
//                         divisions: values.length - 1,
//                         label: values[selectedIndexOne].toString(),
//                         onChanged: (double value) {
//                           setState(() {
//                             selectedIndexOne = value.toInt();
//                             //PracticeOptions().setAcceptanceSlideValue(selectedIndexOne);
//                             AttentionSlider(selectedIndexOne);
//                           });
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.navigate_next),
//         onPressed: (){
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => AttentionSlider()),
//           );
//         },
//       ),
//     );
//   }
// }
//
// class AttentionSlider extends StatelessWidget{
//   final List<double> values = [0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0];
//   //int selectedIndexOne = 0;
//   int selectedIndexTwo = 0;
//
//   double _lowerValue = 0;
//   double _upperValue = 10;
//
//   AttentionSlider(this.selectedIndexOne);
//
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: Container(
//         constraints: BoxConstraints.expand(),
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/background_1.jpeg"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Container(
//           color: Colors.transparent,
//           margin: EdgeInsets.only(top: 70.0, left: 10.0, right: 10.0),
//           child: ListView(
//             //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Container(
//                 color: Colors.transparent,
//                 child: RichText(
//                   textAlign: TextAlign.center,
//                   text: TextSpan(
//                     text: "Attention to Present",
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 50,),
//               Container(
//                 padding: EdgeInsets.all(10),
//                 child: Text(
//                   "Staying in the “present moment,” “being here,” and similar guidance from well-meaning confidants may seem more prevalent these days. The inability to remain focused on the moment at hand has been an increasing source of mental stress and anxiety worldwide, especially with the increased connectedness brought on by modern technology. Focusing on the past can lead to feelings of regret and guilt; worrying about upcoming events or ruminating on what might happen in the future can potentially cause anxiety or steal joy from the present. Yet, for centuries, many world religions, traditions, and philosophies have lauded the benefits of being mindful of and living in the present moment.",
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.normal,
//                     color: Colors.black87,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10,),
//               Container(
//                 padding: EdgeInsets.all(10),
//                 child: Text(
//                   "The constant stream of distractions and interruptions people experience throughout their days can trigger the natural stress response and lead to increased levels of hormones like adrenaline and cortisol. Scientists link chronic stress to pain, inflammation, and high blood pressure. Constant stress and anxiety can increase the chances of serious health issues.",
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.normal,
//                     color: Colors.black87,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10,),
//               Container(
//                 padding: EdgeInsets.all(10),
//                 child: Text(
//                   "Attention to the present moment does not mean never remembering the past or planning for the future. It is the recognition that real life happens in the moment. Memories of the past can be pleasant or painful, but they are only thoughts. Looking to the future can cause stress or hopeful anticipation, but the imagined future is also simply a creation of the mind.",
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.normal,
//                     color: Colors.black87,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 50,),
//               Container(
//                 color: Colors.transparent,
//                 child: Column(
//                   children: [
//                     RichText(
//                       text: TextSpan(
//                         text: "How much will you rate?",
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 5,),
//                     ClipRect(
//                       child: Slider(
//                         value: selectedIndexTwo.toDouble(),
//                         max: values.length - 1,
//                         divisions: values.length - 1,
//                         label: values[selectedIndexTwo].toString(),
//                         onChanged: (double value) {
//                           setState(() {
//                             selectedIndexTwo = value.toInt();
//                             //PracticeOptions().setAttentionSlideValue(value);
//                             DeffusionSlider(selectedIndexOne, selectedIndexTwo);
//                           });
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.navigate_next),
//         onPressed: (){
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => DeffusionSlider()),
//           );
//         },
//       ),
//     );
//   }
// }
//
// class DeffusionSlider extends StatelessWidget{
//   final List<double> values = [0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0];
//   int selectedIndexOne = 0;
//   int selectedIndexTwo = 0;
//   int selectedIndexThree = 0;
//   int selectedIndexFour = 0;
//   int selectedIndexFive = 0;
//   int selectedIndexSix = 0;
//
//   double _lowerValue = 0;
//   double _upperValue = 10;
//
//   DeffusionSlider(this.selectedIndexOne, this.selectedIndexTwo);
//
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: Container(
//         constraints: BoxConstraints.expand(),
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/background_1.jpeg"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Container(
//           color: Colors.transparent,
//           margin: EdgeInsets.only(top: 70.0, left: 10.0, right: 10.0),
//           child: ListView(
//             //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Container(
//                 color: Colors.transparent,
//                 child: RichText(
//                   textAlign: TextAlign.center,
//                   text: TextSpan(
//                     text: "Diffusion",
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 50,),
//               Container(
//                 padding: EdgeInsets.all(10),
//                 child: Text(
//                   "Defusion is a skill or technique that is primarily used to detach, separate, or get some distance from our thoughts and emotions. Please note that when we use the word ‘thought’ it also encompasses other internal experiences such as beliefs, attitudes, assumptions, memories, etc.",
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.normal,
//                     color: Colors.black87,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10,),
//               Container(
//                 padding: EdgeInsets.all(10),
//                 child: Text(
//                   "According to Russ Harris in ACT Made Simple (2009), cognitive defusion is: \n1) Looking at thoughts rather than from thoughts \n2) Noticing thoughts rather than becoming caught up in thoughts \n3) Letting thoughts come and go rather than holding on to them",
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.normal,
//                     color: Colors.black87,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10,),
//               Container(
//                 padding: EdgeInsets.all(10),
//                 child: Text(
//                   "The aim of defusion is to: \n1)Decrease our attachment to our inner experiences \n2)Reduce the believability of thoughts \n3)Decrease the influence of thoughts on our behaviors and experiences \n4)Increase our ability to be present and take effective action \n5)Facilitate psychological flexibility",
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.normal,
//                     color: Colors.black87,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 50,),
//               Container(
//                 color: Colors.transparent,
//                 child: Column(
//                   children: [
//                     RichText(
//                       text: TextSpan(
//                         text: "How much will you rate?",
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 5,),
//                     ClipRect(
//                       child: Slider(
//                         value: selectedIndexOne.toDouble(),
//                         max: values.length - 1,
//                         divisions: values.length - 1,
//                         label: values[selectedIndexOne].toString(),
//                         onChanged: (double value) {
//                           setState(() {
//                             selectedIndexOne = value.toInt();
//                             PracticeOptions().setDeffusionSlideValue(value);
//                           });
//                         },
//                       ),
//                     ),
//                     // FlutterSlider(
//                     //   values: [0],
//                     //   max: 10,
//                     //   min: 0,
//                     //   handlerAnimation: FlutterSliderHandlerAnimation(
//                     //       curve: Curves.elasticOut,
//                     //       reverseCurve: null,
//                     //       duration: Duration(milliseconds: 700),
//                     //       scale: 1.4),
//                     //   onDragging: (handlerIndex, lowerValue, upperValue){
//                     //     setState((){
//                     //       _lowerValue = lowerValue;
//                     //       _upperValue = upperValue;
//                     //     });
//                     //   },
//                     // ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.navigate_next),
//         onPressed: (){
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => ObservingSlider()),
//           );
//         },
//       ),
//     );
//   }
// }