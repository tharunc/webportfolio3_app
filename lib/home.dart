import 'package:flutter/cupertino.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';
import 'package:flutter_particles/draw_particles.dart';
import 'package:flutter_particles/particle.dart';
import 'package:flutter_particles/particles.dart';





const colorizeColors = [


  Color(0xFF29B6F6),
  Color(0xFF01579B),
  Color(0xFF54C5F8),
  Color(0xFF0F1EF9),
];
const colorizeTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.bold,
    letterSpacing: 2.0,

);
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  openURL(String url) async{
    if(await canLaunch(url)){
      await launch (url);
    } else{
      throw'Error $url Not Found';
    }
  }
   // launchURL(String url) async =>
   //    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

          primaryColor: Colors.white,),
      home: Material(
        child: Scaffold(
          appBar: AppBar(backgroundColor: Color(0xFFFFFFFF),title: Center(child: Text('Tharun C' ,style: GoogleFonts.prompt(color: Color(0xFF25292C),fontWeight: FontWeight.w600)),),
          actions: [
            GestureDetector(
              onTap: (){
                Get.isDarkMode? Get.changeTheme(ThemeData.light()) : Get.changeTheme(ThemeData.dark());
              },
          child: Image.asset('assets3/day-and-night.png',height: 9.0,),
            )
          //   (child: Image.asset('assets3/day-and-night.png',height: 9.0,)),
          // ],
          ]),

          // backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
      children: [
        // Particles(3, Colors.blue),

        SizedBox(
            height: 37.0,
        ),
            Center(
              child: CircleAvatar(
                backgroundColor: Color(0xFF29B6F6),
              radius: 75.0, backgroundImage: AssetImage('assets/image.png')),

            ),
        SizedBox(
            height: 70.0,
        ),
        TyperAnimatedTextKit(text: ["Hi, I'm Tharun C"], textStyle: GoogleFonts.itim(color: Color(0xFFFFFFFF),fontSize: 40.0,fontWeight: FontWeight.w200,letterSpacing: 1.0,backgroundColor: Color(0xFF0F1EF9))),
        SizedBox(
          height: 20.0,
        ),
        ColorizeAnimatedTextKit(text: ['Flutter Developer'], textStyle: colorizeTextStyle,colors: colorizeColors),

        SizedBox(
          height: 20.0,
          width: 50.0,

        ),

        SizedBox(
          height: 1.0,
        ),
        Container(
          height: 100.0,
          width: 300.0,
          color: Colors.white38,
          child: Center(
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    openURL('https://www.linkedin.com/in/tharunc/');
                  },
                  child: Image.asset('assets2/linkedin.png',height: 50.0,width: 100.0,),
                ),
                GestureDetector(
                  onTap: (){
                    openURL('https://github.com/tharunc');
                  },
                  child: Image.asset('assets2/github.png',height: 50.0,width: 100.0,),
                ),
                GestureDetector(
                  onTap: (){
                    openURL('https://www.twitter.com/Tharun22C?s=09');
                  },
                  child: Image.asset('assets2/twitter.png',height: 50.0,width: 100.0,),
                ),

              ],
            ),
          ),

        ),
        SizedBox(
          height: 60.0,
        ),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                gradient: LinearGradient(
                    colors: [Color(0xFFA2834D), Color(0xFFBC9A5F)]
                )
            ),
            child: GestureDetector(
              onTap: (){
                openURL('https://drive.google.com/file/d/17B_I0R985yRHhoIHYL3I7kx62uGmzX_N/view?usp=drivesdk');
              },
              child: Text('Résumé',style: TextStyle(color: Colors.white),),

            ),
            // child: Text('Résumé',style: TextStyle(color: Colors.white),),
          ),
        )



            ],
      ),
          )),
    ));
  }
}

// height: 300,
// width: 300,
// child: Lottie.asset('assets1/success-state.json'),

//assets/image.png"

// child: Container(
// child: Container(
// color: Color(0xFF181818),
// child: Container(
// decoration: BoxDecoration(
// color: Colors.yellow,
// borderRadius: BorderRadius.circular(300.0)
// ),
// ),
// ),
// ),
//

// color: Color(0xFF181818),

// Center(
// child: SingleChildScrollView(
// child: Column(
// children: [
// Row(
// children: [
// SizedBox(
// width: 70.0,
// ),
// GestureDetector(
// onTap: (){
// openURL('https://www.linkedin.com/in/tharunc/');
// },
//
// child: Image.asset('assets2/linkedin.png',height: 50.0,width: 100.0,),
// ),
// SizedBox(
// width: 30.0
// ),
//
// GestureDetector(
// onTap: (){
// openURL('https://github.com/tharunc');
// },
//
// child: Image.asset('assets2/github.png',height: 50.0,width: 50.0,),
// ),
// SizedBox(
// width: 59.0,
// ),
//
// GestureDetector(
// onTap: (){
// openURL('https://www.twitter.com/Tharun22C?s=09');
// },
//
//
// child: Image.asset('assets2/twitter.png',height: 50.0,),
// ),
//
//
//
// ],
// ),
// ],
// ),
// ),
// ),