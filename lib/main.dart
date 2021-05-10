import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:webportfolio_app/splash.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Splash(),
    );
  }
}
