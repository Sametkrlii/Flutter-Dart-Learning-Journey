// Bir ekran olacak.
// bu ekranda 3 buton ve bunlara basınca renk değişimi olacak.
// Seçili olan buton selected icon olsun.


import 'package:flutter/material.dart';

class ColorDemosView extends StatefulWidget {
  const ColorDemosView({super.key, required this.initialColor});
  final Color? initialColor;
  @override
  State<ColorDemosView> createState() => _ColorDemosViewState();
}

class _ColorDemosViewState extends State<ColorDemosView> {
  Color? setBGColor;
  final String _error = "Error Occured";

  @override
  void initState() {
    super.initState();
    setBGColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemosView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialColor != setBGColor && widget.initialColor != null) {
      _changeBackGroundColor(widget.initialColor!);
    }
  }

  void _changeBackGroundColor(Color color) {
    setState(() {
      setBGColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: setBGColor,
      //appBar:AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        //4 itemi eşit bir şekilde yerleştirir.
        //1-3 item -> fixed, 4+ item -> shifted.
        onTap: (value) {
          _colorOnTap(value);
        },

        items: [
          BottomNavigationBarItem(label: "Main Menu", icon: Icon(Icons.home), semanticsLabel: "Ana Sayfaya döner"),

          BottomNavigationBarItem(
            label: "Red",
            icon: _NavigationColorContainer(setColor: Colors.red),
            semanticsLabel: "Sayfayı Kırmızıya çevirir",
          ),

          BottomNavigationBarItem(
            label: "Blue",
            icon: _NavigationColorContainer(setColor: Colors.blue),
            semanticsLabel: "Sayfayı Maviye çevirir",
          ),

          BottomNavigationBarItem(
            label: "Yellow",
            icon: _NavigationColorContainer(setColor: Colors.yellow),
            semanticsLabel: "Sayfayı Sarıya çevirir",
          ),
        ],
      ),
    );
  }

  void _colorOnTap(int value) {
    if (value == _MyColors.main.index) {
      _changeBackGroundColor(Colors.white);
    } else if (value == _MyColors.red.index) {
      _changeBackGroundColor(Colors.red);
    } else if (value == _MyColors.blue.index) {
      _changeBackGroundColor(Colors.blue);
    } else if (value == _MyColors.yellow.index) {
      _changeBackGroundColor(Colors.yellow);
    } else {
      print(_error);
    }
  }
}

enum _MyColors { main, red, blue, yellow }

class _NavigationColorContainer extends StatelessWidget {
  const _NavigationColorContainer({required this.setColor});

  final Color setColor;

  @override
  Widget build(BuildContext context) {
    return Container(width: 10, height: 10, color: setColor);
  }
}
