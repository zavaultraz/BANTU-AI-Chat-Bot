import 'package:chatbot_gemini/ui/explore_screen.dart';
import 'package:chatbot_gemini/ui/fitur.dart';
import 'package:flutter/material.dart';

import '../widget/text_gradient.dart';



class HomePage extends StatelessWidget {
  static const routeName  = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  GradientText(
          "BANTU",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          gradient: LinearGradient(
              colors: [
                Color(0xFFF69170),
                Color(0xFF7D96E6),
              ]
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          //get colors from hex
                          Color(0xFFF69170),
                          Color(0xFF7D96E6),
                        ]
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 16.0, left: 16.0),
                            child: (
                                Text("Hi! You Can Ask Me", style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white))
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: (
                                Text("Anything", style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white))
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 16.0, bottom: 16.0),
                            child: (
                                TextButton(
                                    onPressed: (){
                                      Navigator.pushNamed(context, '/chat');
                                    },
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      child: GradientText(
                                        "Ask Now",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        gradient: LinearGradient(
                                            colors: [
                                              Color(0xFFF69170),
                                              Color(0xFF7D96E6),
                                            ]
                                        ),
                                      ),
                                    )
                                )
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/chat.png"), fit: BoxFit.cover),
                          ),
                          child: SizedBox(height: 150, width: 150,),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0, left: 16.0),
                child: Text("Explore", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),
              ),
              ExploreScreen(),
              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 16.0),
                child: Text('Try us', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),
              ),
              PromptLibraryScreen()
            ],
          ),
        ),
      ),
    );
  }
}