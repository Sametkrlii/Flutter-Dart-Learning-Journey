// ignore_for_file: avoid_print

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


  @override
  void initState() {
    //Önce init state çalışır ardından didChangeDependencies çalışır.
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;

    _computeName();
    print("1-initstate");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("2-didchangedependencies");
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);

    print("didUpdateWidget çalıştı");
    print("Eski: ${oldWidget.message}");
    print("Yeni: ${widget.message}");

    if (oldWidget.message != widget.message) {
      print("GERÇEKTEN DEĞİŞTİ");

      _message = widget.message;
      _isOdd = widget.message.length.isOdd;
      _computeName();
    }
  }

  @override
  void dispose() {
    super.dispose(); //sayfadan çıkıldığında çağrılır.
    print("5-dispose , message boş string atandı.");
    _message = "";
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
    print("3-build");
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
