
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
 //FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      // if (auth.currentUser == null) {
      //   Navigator.pushAndRemoveUntil(
      //       context,
      //       MaterialPageRoute(builder: (context) => LoginPage()),
      //           (route) => false);
      // } else {
      //   Navigator.pushAndRemoveUntil(
      //       context,
      //       MaterialPageRoute(builder: (context) => Homepage()),
      //           (route) => false);
      // }
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
