import 'package:flutter/material.dart';
import 'package:flutter_learn1/core/random_image.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});
  final double _cardHeight = 50.0;
  final _cardWidth = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(bottom: _cardHeight / 2, child: RandomImage()),
                Positioned(height: _cardHeight, width: _cardWidth, bottom: 0, child: _cardCustom()),
              ],
            ),
          ),
          const Spacer(flex: 6),
        ],
      ),
    );
  }

  Card _cardCustom() {
    return Card(color: Colors.white, shape: RoundedRectangleBorder());
  }
}
