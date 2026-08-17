import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:Stack(//LIFO , SON GİREN İLK GÖZÜKÜR,ÜSTTE KALIR.
        children: [
          Container(
            color:Colors.red,
            height: 100,
          ),
          Container(
            color:Colors.blue,
            height: 25,
            margin: EdgeInsets.only(top:50),
          )

        ],
      ),
    );
  }
}