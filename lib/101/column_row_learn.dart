import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex:3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(flex:4,child: Container(color: Colors.red,)),
                Expanded(flex:4,child: Container(color: Colors.white,)),
                Expanded(flex:1,child: Container(color: Colors.red,)),
                Expanded(flex:1,child: Container(color: Colors.white,)),
                
              ],
            ),
          ),
          Expanded(flex:3,child: Container(color: Colors.white,)),
          Expanded(flex:2,child: Container(color: Colors.yellow,)),
          Expanded(flex:2,child: Container(color: Colors.blue,)),

          ],
          
        
      )
    );
    
  }
}