import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png",
              color: Colors.white60,    // opacity ale inne podejscie niz ponizej
              width: 300),
          // Opacity(
          //     opacity: 0.5,
          //     child: Image.asset("assets/images/quiz-logo.png", width: 300),
          // ),
          // Padding( padding: const EdgeInsets.all(60.0),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'start scren',
            style: TextStyle(
                color: Colors.white60, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 80,
          ),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.arrow_right_alt),
            // konstruktor(obiekt konstruktora)
            label: Text('Start quiz'),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }
}
