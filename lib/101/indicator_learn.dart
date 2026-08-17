import 'package:flutter/material.dart';


class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:AppBar(
          actions:const [CenterCircularIndicator()] ,

        ),
        body:
        LinearProgressIndicator()
         
    );
  }
}

class CenterCircularIndicator extends StatelessWidget {
  const CenterCircularIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child:CircularProgressIndicator(
      value: 0.1,
    ));
  }
}