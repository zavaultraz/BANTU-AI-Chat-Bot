import 'package:chatbot_gemini/ui/chat_page.dart';
import 'package:chatbot_gemini/ui/home_page.dart';
import 'package:chatbot_gemini/ui/splash_screen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat Bot',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      home: SplashScreenPage(),
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        ChatPage.routeName: (context) => const ChatPage(),
        '/home-page' : (context) => HomePage(),
      },
    );
  }
}