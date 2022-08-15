import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget{
  @override
  _CreateAccountState createState() => _CreateAccountState();

}

class _CreateAccountState extends State<CreateAccount>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up!!',
      home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background_1.jpeg"), fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0,
              title: const Text(
                "ACT App",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              backgroundColor: Colors.white10,
            ),
          // body: SingleChildScrollView(
          //   child: Container(
          //     padding: EdgeInsets.symmetric(horizontal: 40),
          //     height: MediaQuery.of(context).size.height - 50,
          //     width: double.infinity,
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: <Widget>[
          //         Column(
          //           children: <Widget>[
          //             Text(
          //               "Sign Up",
          //               style: TextStyle(
          //                 fontSize: 30,
          //                 fontWeight: FontWeight.bold,
          //               ),
          //             ),
          //             SizedBox(height: 20,),
          //             Text(
          //               "Create an account!",
          //               style: TextStyle(
          //                 fontSize: 15,
          //                 color: Colors.grey[700],
          //               ),
          //             ),
          //           ],
          //         ),
          //         Column(
          //           children: <Widget>[
          //             inputFile(label: "Email"),
          //             inputFile(label: "Password", obscureText: true),
          //             inputFile(label: "Confirm Password", obscureText: true),
          //             inputFile(label: "Nickname: "),
          //             inputFile(label: "Birth Year"),
          //           ],
          //         ),
          //         Container(
          //           padding: EdgeInsets.only(top: 3, left: 3),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(50),
          //             border: Border(
          //               bottom: BorderSide(color: Colors.black),
          //               top: BorderSide(color: Colors.black),
          //               left: BorderSide(color: Colors.black),
          //               right: BorderSide(color: Colors.black),
          //             ),
          //           ),
          //           child: MaterialButton(
          //             minWidth: double.infinity,
          //             height: 60,
          //             onPressed: () {},
          //             color: Color(0xff0095FF),
          //             elevation: 0,
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(50),
          //             ),
          //             child: Text(
          //               "Sign up", style: TextStyle(
          //               fontWeight: FontWeight.w600,
          //               fontSize: 18,
          //               color: Colors.white
          //               ),
          //             ),
          //           ),
          //         ),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: <Widget>[
          //             Text("Already have an account?"),
          //             Text(
          //               " Login",
          //               style: TextStyle(
          //                 fontWeight: FontWeight.w600,
          //                 fontSize: 18,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}

//We will be creating a widget for text field
// Widget inputFile({label, obscureText = false}){
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Text(
//         label,
//         style: TextStyle(
//           fontSize: 15,
//           fontWeight: FontWeight.w400,
//           color: Colors.black87,
//         ),
//       ),
//       SizedBox(height: 5,),
//       TextField(
//         obscureText: obscureText,
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//           // enabledBorder: OutlinedBorder(
//           //   borderSide: BorderSide(
//           //     color: Colors.grey[400],
//           //   ),
//           // ),
//           border: OutlinedBorder(
//             borderSide: BorderSide(color: Colors.grey[400])
//           ),
//         ),
//       ),
//       SizedBox(height: 10,),
//     ],
//   );
// }