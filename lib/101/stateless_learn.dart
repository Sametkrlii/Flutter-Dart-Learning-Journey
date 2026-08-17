import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const TitleTextWidget(text: "fdwfw"),
          _emptyBox(),
          const TitleTextWidget(text: "data"),
          _emptyBox(),
          _CustomContainer(height:101),
          _emptyBox()
        ],
      ),
    );
  }

  SizedBox _emptyBox() => SizedBox(height:10);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({   required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: height,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,

        border: Border(
          top: BorderSide(width: 10),
          bottom: BorderSide(width: 10),
          left: BorderSide(width: 10),
          right: BorderSide(width: 10),
        ),
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineMedium);
  }
}
