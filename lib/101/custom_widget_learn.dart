import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});
  final String _food = "Food";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Center(
              child: SizedBox(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: MyCustomButton(food: _food, onPressed: () {}),
                ),
              ),
            ),
          ),

          const SizedBox(height: 100),

          MyCustomButton(food: _food, onPressed: () {}),
        ],
      ),
    );
  }
}

class MyCustomButton extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  MyCustomButton({super.key, required this.food, required this.onPressed});

  final String food;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonTextColor,
        shape: const StadiumBorder(),
      ),
      child: Padding(
        padding: normal2xPadding,
        child: Text(
          food,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: buttonColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

mixin _ColorsUtility {
  final Color buttonTextColor = Colors.red;
  final Color buttonColor = Colors.white;
}

mixin _PaddingUtility {
  final normalPadding = const EdgeInsets.all(8);
  final normal2xPadding = const EdgeInsets.all(16);
}
