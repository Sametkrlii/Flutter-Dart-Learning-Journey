import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});
  final String message;
  @override
  State<StatefullLifeCycleLearn> createState() => _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = '';
  late bool _isOdd = false;


//TODO:lifecyclelar öğrenilecek.


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("c");
  }

 @override
void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
  // Parent widget rebuild olup bu State'e yeni bir StatefullLifeCycleLearn
  // gönderdiğinde çalışır. oldWidget eski değerleri, widget ise yeni değerleri tutar.
  // Eğer message değişmişse state içindeki verileri yeni değere göre güncelliyoruz.
  super.didUpdateWidget(oldWidget);

  if (oldWidget.message != widget.message) {
    _message = widget.message;
    _computeName();

    setState(() {});
  }
}

  @override
  void initState() {
    //Önce init state çalışır ardından didChangeDependencies çalışır.
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;

    _computeName();
    print("a");
  }

  void _computeName() {
    if (_isOdd) {
      _message += " Kelimesi Tektir";
    } else {
      _message += " Kelimesi Çifttir";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_message)),

      body: _isOdd ? _CustomTextButtonForOdd(message: _message) : _CustomFloatingActionButtonForEven(message: _message),
    );
  }
}

class _CustomFloatingActionButtonForEven extends StatelessWidget {
  const _CustomFloatingActionButtonForEven({required this.message});

  final String message;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Text(message, textAlign: TextAlign.center),
    );
  }
}

class _CustomTextButtonForOdd extends StatelessWidget {
  const _CustomTextButtonForOdd({required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.blue)),
      onPressed: () {},
      child: Text(
        message,
        style: TextStyle(color: Colors.black),
        textAlign: TextAlign.center,
      ),
    );
  }
}
