import 'package:flutter/material.dart';
import 'package:islami_app/intro_screen.dart';
import 'package:islami_app/splash_screen.dart';
import 'package:islami_app/ui/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
        initialRoute: '/',
        routes: {
          '/': (context) =>const SplashScreen(),
          '/intro':(context)=> App(),
        }
    );
  }
}