import 'package:e_commerce/main.dart';
import 'package:e_commerce/screens/authentication/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class spalsh extends StatefulWidget {
  const spalsh({Key key}) : super(key: key);

  @override
  _spalshState createState() => _spalshState();
}

class _spalshState extends State<spalsh> {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      if (auth.currentUser == null) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
                (route) => false);
      } else {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => Homepage()),
                (route) => false);
      }
    });
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              "assets/splash.jpeg",
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
            ),
            Expanded(child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Text("Welcome to e_commerce app",
                  //   style: TextStyle(
                  //     color: Colors.deepOrange.shade600,
                  //     fontSize: 35.0,
                  //     fontWeight: FontWeight.w600,
                  //   ),
                  // ),
                ],
              ),
            ))
          ],
        )
    );
  }
}
