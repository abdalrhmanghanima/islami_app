import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/ui/intro.dart';
import 'package:islami_app/ui/home/HomeScreen.dart';

class IntroScreen {
  static const String routeName = 'intro';
}

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      infiniteAutoScroll: true,
      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          child: const Text(
            'Let\'s go right away!',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () => _onIntroEnd(context),
        ),
      ),
      pages: [
        PageViewModel(
          titleWidget: const SizedBox.shrink(),
          bodyWidget: IntroDesign(
            image: const AssetImage("assets/images/first_logo.png"),
            text: "Welcome To Islami App",
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: const SizedBox.shrink(),
          bodyWidget: IntroDesign(
            image: const AssetImage("assets/images/sec_logo.png"),
            text: "Welcome To Islami\n We Are Very Excited To Have You In Our Community",
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: const SizedBox.shrink(),
          bodyWidget: IntroDesign(
            image: const AssetImage("assets/images/third_logo.png"),
            text: "Reading the Quran\n Read, and your Lord is the Most Generous",
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: const SizedBox.shrink(),
          bodyWidget: IntroDesign(
            image: const AssetImage("assets/images/fourth_logo.png"),
            text: "Bearish\n Praise the name of your Lord, the Most High",
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: const SizedBox.shrink(),
          bodyWidget: IntroDesign(
            image: const AssetImage("assets/images/fifth_logo.png"),
            text: "Holy Quran Radio\n You can listen to the Holy Quran Radio through the application for free and easily",
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context),
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
