import 'package:flutter/material.dart';
import 'package:flutter_particles/particles.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:webportfolio_app/home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SplashScreen(
  seconds: 4,

    backgroundColor: Colors.black,

    image: Image.asset('assets/loading.gif'),

    loaderColor: Colors.white,

    photoSize: 110.0,

    navigateAfterSeconds: Home(),



    ),
);
  }
}

//
// Scaffold(
// body: SafeArea(
// child: SplashScreen(
// seconds: 4,
// backgroundColor: Colors.black,
// image: Image.asset('assets/loading.gif'),
// loaderColor: Colors.white,
// photoSize: 110.0,
// navigateAfterSeconds: Home(),
//
// ),
// ),
// );

// Particles(30, Colors.blue),