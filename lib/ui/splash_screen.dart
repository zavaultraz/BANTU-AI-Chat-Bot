import 'dart:async';
import 'package:flutter/material.dart';
import '../widget/text_gradient.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home-page');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF0B024C), // Navy dark background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image at the top
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/chat.png')
                ),
              ),
            ),
            SizedBox(height: 5), // Spacing between the image and text

            // Main Title - "Gemuani"
            GradientText(
              "BANTU",
              style: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
              ),
              gradient: LinearGradient(colors: [
                Color(0xFFF69170), // Gradient color 1
                Color(0xFF7D96E6), // Gradient color 2
              ]),
            ),
            // Spacing between the title and subtitle
            // Subtitle - "Powered by Gemini"
            Text(
              "Powered by Gemini",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.white.withOpacity(0.7), // Light text with opacity
              ),
            ),
          ],
        ),
      ),
    );
  }
}
