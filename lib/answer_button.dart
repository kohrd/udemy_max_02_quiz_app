import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
   const AnswerButton( {super.key,required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;


  @override
  Widget build( BuildContext context) {
    return   Container(
      margin: EdgeInsets.symmetric(vertical: 7), // odstęp miedzy elevatedButton
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 3),
          backgroundColor: Color.fromARGB(250, 70, 93, 119),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
        ),
        child:  Text(answerText, style: TextStyle(fontSize: 18,
            // fontWeight: FontWeight.bold
        ),
        ),
      ),
    );
  }
}
