import 'package:flutter/material.dart';
import 'package:islami_app/ui/design.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int counter = 0;
  int phraseIndex = 0;

  final List<String> phrases = [
    "سبحان الله",
    "الحمد لله",
    "لا إله إلا الله",
    "الله أكبر",
  ];

  void onTapSebha() {
    setState(() {
      counter++;
      if (counter % 33 == 0) {
        phraseIndex = (phraseIndex + 1) % phrases.length;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/SebhaBackground.png"),
              fit: BoxFit.cover
          )
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 80),
          Center(
            child: GestureDetector(
              onTap: onTapSebha,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedRotation(
                    turns: counter / 36,
                    duration: const Duration(milliseconds: 300),
                    child: Image.asset(
                      AppImages.sebha,
                      width: 280,
                      height: 280,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        phrases[phraseIndex],
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "$counter",
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
