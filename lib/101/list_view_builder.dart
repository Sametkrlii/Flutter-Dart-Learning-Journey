import 'package:flutter/material.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({super.key});

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: ListView.separated(
        //ListView.Builder -> ekranda gözüktüğü kadar çizilir.
        // ListView.builder gibi lazy çalışır.
        // Sadece ekranda gereken widget'ları ve biraz öncesi/sonrasını oluşturur.
        // itemCount kadar item oluşturulabilir.
        // Aralara itemCount - 1 kadar separator eklenir.
        itemCount: 15, 
        separatorBuilder: (context, index) {
          return Divider(color:Colors.white);
        },
        itemBuilder: (context, index) {
          return SizedBox(
            height: 100,
            width: 100 ,
            child: Column(
              children: [
                Text("$index"),
                Expanded(
                  child: 
                    Image.network('https://picsum.photos/200')
                  ,
                ),
              ],
            ),
          );
          
        },
      ),
    );
  }
}



 