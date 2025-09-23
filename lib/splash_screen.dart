import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/colors.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, 'intro');
    });
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Column(
        children: [
          SizedBox(height: 350,),
          Center(child: Image(image: AssetImage("assets/images/mosque.png"))),
          SizedBox(height: 250,),
          Center(child: Image(image: AssetImage("assets/images/routegold.png"))),
          Text("Supervised by Mohamed Nabil",style: TextStyle(color: AppColor.gold),)
        ],
      ),
    );
  }
}
