import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final String title = "Merhaba";
  final IconSizes iconSize = IconSizes();
  final IconColors iconColor=IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),

      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              size: iconSize.iconLarge,
              color:iconColor.crema,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              size: iconSize.iconLarge,
              color:iconColor.crema,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              size: iconSize.iconLarge,
              color:iconColor.crema,
            ),
          ),
          
        ],
        ),
  


      
    );
  }
}

class IconSizes {
  final double iconSmall = 20;
  final double iconMedium = 30;
  final double iconLarge = 40;
  final double iconExtra = 50;
}

class IconColors {
final congGreen = Color.fromARGB(225,1, 198, 139,);
final trustedPurple = Color.fromARGB(225,99, 1, 198);
final rowan = Color.fromARGB(225,198, 1, 96,);
final crema = Color.fromARGB(225,198, 96, 1);

}

