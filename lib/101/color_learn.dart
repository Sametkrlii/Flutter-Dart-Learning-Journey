import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  const ColorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body:Column (
        children: [
          Container(
            color:Theme.of(context).colorScheme.error
          )
        
        ],
        
        
          
          
      ),
    );
  }
}

class ColorItems {
  ColorItems._();

  // Marka renkleri
  static const Color primary = Color.fromARGB(255, 1, 198, 139);
  static const Color secondary = Color.fromARGB(255, 99, 1, 198);
  static const Color accent = Color.fromARGB(255, 198, 1, 96);
  static const Color crema = Color.fromARGB(255, 198, 96, 1);

  // Arka plan renkleri
  static const Color background = Color.fromARGB(255, 250, 250, 250);
  static const Color darkBackground = Color.fromARGB(255, 18, 18, 18);
  static const Color surface = Color.fromARGB(255, 255, 255, 255);
  static const Color darkSurface = Color.fromARGB(255, 30, 30, 30);

  // Yazı renkleri
  static const Color textPrimary = Color.fromARGB(255, 25, 25, 25);
  static const Color textSecondary = Color.fromARGB(255, 100, 100, 100);
  static const Color textDisabled = Color.fromARGB(255, 160, 160, 160);
  static const Color textWhite = Color.fromARGB(255, 255, 255, 255);

  // Durum renkleri
  static const Color success = Color.fromARGB(255, 34, 197, 94);
  static const Color warning = Color.fromARGB(255, 245, 158, 11);
  static const Color error = Color.fromARGB(255, 239, 68, 68);
  static const Color info = Color.fromARGB(255, 59, 130, 246);

  // Buton renkleri
  static const Color buttonPrimary = primary;
  static const Color buttonSecondary = secondary;
  static const Color buttonDisabled = Color.fromARGB(255, 210, 210, 210);

  // İkon renkleri
  static const Color iconPrimary = Color.fromARGB(255, 50, 50, 50);
  static const Color iconSecondary = Color.fromARGB(255, 120, 120, 120);
  static const Color iconWhite = Color.fromARGB(255, 255, 255, 255);

  // Çizgi ve kenarlık renkleri
  static const Color border = Color.fromARGB(255, 225, 225, 225);
  static const Color divider = Color.fromARGB(255, 235, 235, 235);
  static const Color focusedBorder = primary;

  // Genel renkler
  static const Color transparent = Colors.transparent;
  static const Color black = Colors.black;
  static const Color white = Colors.white;
}
