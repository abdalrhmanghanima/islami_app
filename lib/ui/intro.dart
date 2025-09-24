import 'package:flutter/material.dart';
import 'package:islami_app/ui/design.dart';

class IntroDesign extends StatelessWidget {
  final ImageProvider image;
  final String text;

  const IntroDesign({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/mosquelogo.png",
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 20),
          SizedBox(
            child: Image(image: image, fit: BoxFit.contain),
          ),
          const SizedBox(height: 20),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0XFFDAB98D),
            ),
          ),
        ],
      ),
    );
  }
}
