import 'package:flutter/material.dart';
import 'package:flutter_learn1/core/random_image.dart';

class ListTileView extends StatelessWidget {
  const ListTileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 3),
            child: Card(
              child: ListTile(
                onTap: () {},
                title: const RandomImage(),
               
                subtitle: Center(child: Text("Thats How to Use Card")),
                leading: Container(
                  width: 20,
                  height: 35,
                  alignment: Alignment.bottomCenter,
                  color: Colors.blue,
                  child: const Icon(Icons.money_off_csred_outlined)),
                trailing: Icon(Icons.chevron_right, size: 40),
                iconColor: Colors.grey,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
