// Product klasörü, uygulamaya özgü iş mantığını ve bileşenleri içerir.

import "package:flutter/material.dart";
import "package:flutter_learning_journey/product/languages/language_items.dart";

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counterValueCustom = 0;
  final String _welcomeTitle = LanguageItems.welcomeTitle;

  void _updateCounter() {
    setState(() {
      ++_counterValueCustom;
    });
  }

  void _longPressUpdateCounter() {
    setState(() {
      _counterValueCustom *= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _updateCounter,
      onLongPress: _longPressUpdateCounter,
      child: Text("$_welcomeTitle $_counterValueCustom"),
    );
  }
}
