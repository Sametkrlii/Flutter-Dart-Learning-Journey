import 'package:flutter/material.dart';
import 'package:flutter_learning_journey/product/counter_hello_button.dart';
import 'package:flutter_learning_journey/product/languages/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;
  
  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue += 1;
    } else {
      _countValue -= 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(LanguageItems.welcomeTitle)),
      floatingActionButton: SizedBox(
        width: MediaQuery.sizeOf(context).width - 32,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,

          // Row/Column'un ana eksendeki boyutunu belirler.
          // min: Sadece child'ların kapladığı alan kadar yer kaplar.
          // max: Mümkün olan tüm alanı kaplar.
          // Default değeri: MainAxisSize.max
          children: [_incrementButton(), _deincrementButton()],
        ),
      ),
      body: Stack(
        children: [
          Align(alignment: Alignment.topCenter, child: _baslikYazisi(context)),
          Align(alignment: Alignment.center, child: _counterDisplay(context)),
          Placeholder(),
          Align(alignment:Alignment.center,child: CounterHelloButton()),
          
          
        ],
      ),
    );
  }

  Text _counterDisplay(BuildContext context) =>
      Text(_countValue.toString(), style: Theme.of(context).textTheme.displayLarge);
  Text _baslikYazisi(BuildContext context) =>
      Text("Sayaç Uygulaması", style: Theme.of(context).textTheme.headlineLarge);

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(heroTag: 2,
      onPressed: () {
        _updateCounter(true);
      },
      child: Icon(Icons.add),
    );
  }

  FloatingActionButton _deincrementButton() {
    return FloatingActionButton(heroTag: 2,
      onPressed: () {
        _updateCounter(false);
      },
      child: Icon(Icons.remove),
    );
  }
}
