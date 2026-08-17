import 'package:flutter/material.dart';


 class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Öğreniyorum'), backgroundColor: Colors.red , ),
      body:Text('merhaba'),
      bottomNavigationBar: BottomNavigationBar(items: const[
      BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label:'a',backgroundColor:Colors.amber),
      BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label:'b', backgroundColor: Colors.red),
      
      
      ]),
    );
  }
}