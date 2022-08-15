import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter/material.dart';

class OrientationCall extends StatefulWidget{
  @override
  _OrientationCallState createState() => _OrientationCallState();
}

class _OrientationCallState extends State<OrientationCall>{
  final TextEditingController _numberCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "085921191121";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.blue,
                Colors.blueAccent,
                Colors.blueGrey,
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              Divider(height: 100,),
              Text(
                "Consultation Duration: 30 Minutes",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              Divider(height: 20,),
              Text(
                "Interview to complete Case Conceptualization Form",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              Divider(height: 50,),
              Image.asset(
                'assets/call_logo3.png',
                height: 300,
                width: 300,
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        controller: _numberCtrl,
                        decoration: const InputDecoration(labelText: "Phone Number"),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    ElevatedButton(
                      child: const Text("Call"),
                      onPressed: () async {
                        FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CHCall extends StatefulWidget{
  @override
  _CHCallState createState() => _CHCallState();
}

class _CHCallState extends State<CHCall>{
  final TextEditingController _numberCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "085921191121";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.blue,
                Colors.blueAccent,
                Colors.blueGrey,
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              Divider(height: 100,),
              Text(
                "Consultation Duration: 15 Minutes",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              Divider(height: 20,),
              Text(
                "My Coping Strategies Worksheet",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              Divider(height: 70,),
              Image.asset(
                'assets/call_logo3.png',
                height: 300,
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _numberCtrl,
                  decoration: const InputDecoration(labelText: "Phone Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              ElevatedButton(
                child: const Text("Call"),
                onPressed: () async {
                  FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CWCall extends StatefulWidget{
  @override
  _CWCallState createState() => _CWCallState();
}

class _CWCallState extends State<CWCall>{
  final TextEditingController _numberCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "085921191121";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.blue,
                Colors.blueAccent,
                Colors.blueGrey,
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              Divider(height: 100,),
              Text(
                "Consultation Duration: 20 Minutes",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              Divider(height: 20,),
              Text(
                "Contacting my painful emotions exercise",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              Divider(height: 70,),
              Image.asset(
                'assets/call_logo3.png',
                height: 300,
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _numberCtrl,
                  decoration: const InputDecoration(labelText: "Phone Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              ElevatedButton(
                child: const Text("Call"),
                onPressed: () async {
                  FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AcceptanceCall extends StatefulWidget{
  @override
  _AcceptanceCallState createState() => _AcceptanceCallState();
}

class _AcceptanceCallState extends State<AcceptanceCall>{
  final TextEditingController _numberCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "085921191121";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.blue,
                Colors.blueAccent,
                Colors.blueGrey,
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              Divider(height: 100,),
              Text(
                "Consultation Duration: 20 Minutes",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              Divider(height: 20,),
              Text(
                "- Review the case scenario exercise, worksheets and practice assignments",
                style: TextStyle(color: Colors.white, fontSize: 12),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              Divider(height: 5,),
              Text(
                "- Field questions related to content and mindfulness practice",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              Divider(height: 70,),
              Image.asset(
                'assets/call_logo3.png',
                height: 300,
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _numberCtrl,
                  decoration: const InputDecoration(labelText: "Phone Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              ElevatedButton(
                child: const Text("Call"),
                onPressed: () async {
                  FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CDOCall extends StatefulWidget{
  @override
  _CDOCallState createState() => _CDOCallState();
}

class _CDOCallState extends State<CDOCall>{
  final TextEditingController _numberCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "085921191121";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.blue,
                Colors.blueAccent,
                Colors.blueGrey,
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              Divider(height: 100,),
              Text(
                "Consultation Duration: 20 Minutes",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              Divider(height: 20,),
              Text(
                "- Review worksheet and practice assignment",
                style: TextStyle(color: Colors.white, fontSize: 12),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              Divider(height: 5,),
              Text(
                "- Field questions related to content and Observer Self concept and practice",
                style: TextStyle(color: Colors.white, fontSize: 12),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              Divider(height: 70,),
              Image.asset(
                'assets/call_logo3.png',
                height: 300,
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _numberCtrl,
                  decoration: const InputDecoration(labelText: "Phone Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              ElevatedButton(
                child: const Text("Call"),
                onPressed: () async {
                  FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OBPCall extends StatefulWidget{
  @override
  _OBPCallState createState() => _OBPCallState();
}

class _OBPCallState extends State<OBPCall>{
  final TextEditingController _numberCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "085921191121";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.blue,
                Colors.blueAccent,
                Colors.blueGrey,
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              Divider(height: 100,),
              Text(
                "Consultation Duration: 20 Minutes",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              Divider(height: 20,),
              Text(
                "- Review worksheet and practice assignment",
                style: TextStyle(color: Colors.white, fontSize: 12),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              Divider(height: 5,),
              Text(
                "- Field questions related to content and present-moment awareness concept and practice",
                style: TextStyle(color: Colors.white, fontSize: 12),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              Divider(height: 70,),
              Image.asset(
                'assets/call_logo3.png',
                height: 300,
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _numberCtrl,
                  decoration: const InputDecoration(labelText: "Phone Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              ElevatedButton(
                child: const Text("Call"),
                onPressed: () async {
                  FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VCAOneCall extends StatefulWidget{
  @override
  _VCAOneCallState createState() => _VCAOneCallState();
}

class _VCAOneCallState extends State<VCAOneCall>{
  final TextEditingController _numberCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "085921191121";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.blue,
                Colors.blueAccent,
                Colors.blueGrey,
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              Divider(height: 100,),
              Text(
                "Consultation Duration: 20 Minutes",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              Divider(height: 20,),
              Text(
                "- Review worksheets and committed action assignment",
                style: TextStyle(color: Colors.white, fontSize: 12),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              Divider(height: 5,),
              Text(
                "- Field questions related to content, values and committed action concepts and practice",
                style: TextStyle(color: Colors.white, fontSize: 12),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              Divider(height: 70,),
              Image.asset(
                'assets/call_logo3.png',
                height: 300,
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _numberCtrl,
                  decoration: const InputDecoration(labelText: "Phone Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              ElevatedButton(
                child: const Text("Call"),
                onPressed: () async {
                  FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VCATwoCall extends StatefulWidget{
  @override
  _VCATwoCallState createState() => _VCATwoCallState();
}

class _VCATwoCallState extends State<VCATwoCall>{
  final TextEditingController _numberCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "085921191121";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.blue,
                Colors.blueAccent,
                Colors.blueGrey,
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              Divider(height: 100,),
              Text(
                "Consultation Duration: 20 Minutes",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              Divider(height: 20,),
              Text(
                "- Review committed action assignment",
                style: TextStyle(color: Colors.white, fontSize: 12),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              Divider(height: 5,),
              Text(
                "- Field questions related to all ACT content and 1-minute practice exercises",
                style: TextStyle(color: Colors.white, fontSize: 12),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              Divider(height: 70,),
              Image.asset(
                'assets/call_logo3.png',
                height: 300,
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _numberCtrl,
                  decoration: const InputDecoration(labelText: "Phone Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              ElevatedButton(
                child: const Text("Call"),
                onPressed: () async {
                  FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}