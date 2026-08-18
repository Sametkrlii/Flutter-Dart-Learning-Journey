import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});
  final String message;
  @override
  State<StatefullLifeCycleLearn> createState() => _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: widget.message.length.isOdd ? Text("Kelime tektir") : Text("Kelime Çift")),

      body: widget.message.length.isOdd ? _CustomTextButtonForOdd() : _CustomFloatingActionButtonForEven(),
    );
  }
}






//widget.message neden Text içine string olarak verilmiyor önce onu öğren.!!!!







class _CustomFloatingActionButtonForEven extends StatelessWidget {
  const _CustomFloatingActionButtonForEven();
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Text("BUTON", textAlign: TextAlign.center),
    );
  }
}

class _CustomTextButtonForOdd extends StatelessWidget {
  const _CustomTextButtonForOdd();
  
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.blue)),
      onPressed: () {},
      child: Text("BUTON", textAlign: TextAlign.center),
    );
  }
}
