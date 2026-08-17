import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding().pagePaddingAll,
        child: Column(
          
          children: [
            Container(color: Colors.white, height: 100, width: 500,),
            Container(color: Colors.white, height: 35, width:150,margin:EdgeInsetsGeometry.only(top:100),
            child:TextButton(onPressed: (){}, child: Text("TIKLAYINIZ",),)
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  final pagePaddingAll = const EdgeInsets.all(15);
  final pagePaddingOnlyLeft = const EdgeInsets.only(left:10);
  final pagePaddingOnlyRight = const EdgeInsets.only(right:10);
  final pagePaddingOnlyTop = const EdgeInsets.only(top:10);
  final pagePaddingOnlyBottom = const EdgeInsets.only(bottom:10);
}
