import 'package:flutter/material.dart';
import 'package:flutter_learning_journey/demos/color_demos_view.dart';

class ColorLifeCycle extends StatefulWidget {
  const ColorLifeCycle({super.key});

  @override
  State<ColorLifeCycle> createState() => _ColorLifeCycleState();
}

class _ColorLifeCycleState extends State<ColorLifeCycle> {
   Color _backGroundColor=Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: _changeBackground,
            icon: Icon(Icons.clear),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Spacer(flex: 25),
          Expanded(
            flex: 75,
            child: ColorDemosView(initialColor:_backGroundColor),

          ), 
        ],
      ),
    );
  }

  void _changeBackground() {
            setState(() {
              _backGroundColor = Colors.pink;
            });
          }
}
