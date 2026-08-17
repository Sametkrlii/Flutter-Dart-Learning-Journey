import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargins.cardMargin,
            color: Colors.white,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(width: 500, height: 100),
          ),
          const Card(
            margin: ProjectMargins.cardMargin,
            color: Colors.red,
            child: SizedBox(width: 100, height: 100),
          ),

          _CustomCard(child: SizedBox(width: 100, height: 100,child:Center(child:Text("Samet"))))
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(5);
}

class _CustomCard extends StatelessWidget {

   _CustomCard({required this.child});
  final Widget child;
  final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  @override
  Widget build(BuildContext context) {
    
    return Card(
      margin:ProjectMargins.cardMargin,
      
      shape:roundedRectangleBorder,
      color:Colors.blue,
      child: child ,


    );
  }
}
