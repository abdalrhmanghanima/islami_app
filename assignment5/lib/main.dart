import 'package:flutter/material.dart';
import 'package:islami_app/intro_screen.dart';
import 'package:islami_app/splash_screen.dart';
import 'package:islami_app/ui/chapter_details/ChapterDetails.dart';
import 'package:islami_app/ui/common/MostRecentSharedPrefences.dart';
import 'package:islami_app/ui/design.dart';
import 'package:islami_app/ui/home/HomeScreen.dart';
import 'package:islami_app/ui/providers/MostRecentProvider.dart';
import 'package:islami_app/ui/routes.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MostRecentSharedPreferences
      .init(); // wait until shared prefences being initialized
  runApp(
      ChangeNotifierProvider(
          create: (context) => MostRecentProvider(),
          child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MostRecentSharedPreferences.getInstance();
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.dark,
      routes: {
        AppRoutes.SplashScreen.route:(context) => SplashScreen(),
        AppRoutes.IntroScreen.route :(context) => IntroScreen(),
        AppRoutes.HomeScreen.route: (context) => HomeScreen(),
        AppRoutes.ChapterDetails.route: (context) => ChapterDetails(),
      },
      initialRoute: AppRoutes.SplashScreen.route,
    );
  }
}