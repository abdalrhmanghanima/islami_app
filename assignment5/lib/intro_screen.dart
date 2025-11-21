import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'ui/design.dart';
import 'ui/routes.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.HomeScreen.route);
  }

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.black,
      pages: [

        PageViewModel(
          titleWidget: Column(
            children: [
              Image.asset('assets/images/mosquelogo.png'),
              const SizedBox(height: 50),
              Image.asset('assets/images/first_logo.png'),
              const SizedBox(height: 50),
              Text(
                "Welcome To Islami",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.prime,
                ),
              ),
            ],
          ),
          body: "",
        ),

        PageViewModel(
          titleWidget: Column(
            children: [
              Image.asset('assets/images/mosquelogo.png'),
              Image.asset('assets/images/sec_logo.png'),
              const SizedBox(height: 20),
              Text(
                "Reading The Quran",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.prime,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Read, and your Lord is the Most Generous",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: AppColors.prime),
              ),
            ],
          ),
          body: "",
        ),

        PageViewModel(
          titleWidget: Column(
            children: [
              Image.asset('assets/images/mosquelogo.png'),
              Image.asset('assets/images/third_logo.png'),
              const SizedBox(height: 20),
              Text(
                "Bearish",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.prime,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Praise the name of your Lord, the Most High",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: AppColors.prime),
              ),
            ],
          ),
          body: "",
        ),

        PageViewModel(
          titleWidget: Column(
            children: [
              Image.asset('assets/images/mosquelogo.png'),
              const SizedBox(height: 10),
              Image.asset('assets/images/fourth_logo.png'),
              const SizedBox(height: 20),
              Text(
                "Holy Quran Radio",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.prime,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "You can listen to the Holy Quran Radio easily",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: AppColors.prime),
              ),
            ],
          ),
          body: "",
        ),

        PageViewModel(
          titleWidget: Column(
            children: [
              Image.asset('assets/images/mosquelogo.png'),
              const SizedBox(height: 10),
              Image.asset('assets/images/fifth_logo.png'),
              const SizedBox(height: 20),
              Text(
                "Holy Quran Radio",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.prime,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "You can listen to the Holy Quran Radio easily",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: AppColors.prime),
              ),
            ],
          ),
          body: "",
        ),

      ],

      // التحكم في الصفحات
      onChange: (index) {
        setState(() {
          currentPage = index;
        });
      },

      // زرار النهاية
      onDone: () => _onIntroEnd(context),

      // إلغاء الـ Auto Scroll
      freeze: true,
      isProgress: true,

      // الأزرار
      showSkipButton: false,
      showBackButton: currentPage > 0,
      back: Text("Back", style: TextStyle(color: AppColors.prime)),
      next: currentPage == 4
          ? Text("Finish", style: TextStyle(color: AppColors.prime))
          : Text("Next", style: TextStyle(color: AppColors.prime)),
      done: Text("Finish",
          style: TextStyle(
              fontWeight: FontWeight.w600, color: AppColors.prime)),

      dotsDecorator: DotsDecorator(
        activeColor: AppColors.prime,
      ),
    );
  }
}
