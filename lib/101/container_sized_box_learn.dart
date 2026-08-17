import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Column(
        children: [
          SizedBox(width: 210, height: 250, child: Text('FLASH' * 50)),

          const SizedBox.shrink(),

          SizedBox.square(dimension: 200, child: Text('İNDİRİM' * 50)),

          Container(
            width: 350,
            height: 50,

            constraints: const BoxConstraints(
              
              maxWidth: 700,
              minWidth: 100,
              minHeight: 100,
              maxHeight: 700,
            ),
            
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoraiton,
            child: Text('AA' * 50,maxLines: 2,),
            

          ),
        ],
      ),
    );
  }
}


class ProjectUtility{

static BoxDecoration boxDecoraiton = BoxDecoration(borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
        boxShadow: const [
          BoxShadow(
            color: Colors.green,
            offset: Offset(0.1, 1),
            blurRadius: 12,
          ),
        ],
        border: Border.all(width: 10, color: Colors.white),
      );


}





class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
    : super(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
        boxShadow: const [
          BoxShadow(
            color: Colors.green,
            offset: Offset(0.1, 1),
            blurRadius: 12,
          ),
        ],
        border: Border.all(width: 10, color: Colors.white),
      );
}
