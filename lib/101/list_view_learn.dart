import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        //SCROOL DIRECTION İLE YATAY VEYA DİKEY OLARAK AYARLANABİLİYOR.
        padding: EdgeInsets.zero,

        //scrollDirection: Axis.vertical, //default->vertical
        children: [
          FittedBox(
            child: Text(
              "Merhaba",
              maxLines: 1,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          Container(height: 150, color: Colors.red, child: Icon(Icons.sports_football_rounded)),
          Container(height: 150, color: Colors.white),
          const Divider(),

          SizedBox(
            height: 250,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Container(width: 70, color: Colors.blue),
                Container(width: 70, color: Colors.yellow),
                Container(width: 70, color: Colors.blue),
                Container(width: 70, color: Colors.yellow),
                Container(width: 70, color: Colors.blue),
                Container(width: 70, color: Colors.yellow), 
                Container(width: 70, color: Colors.blue),
                Container(width: 70, color: Colors.yellow),
              ],
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.cancel_outlined),
            style: IconButton.styleFrom(shape: const CircleBorder()),
          ),

          //XXXX
          FittedBox(
            child: Text(
              "Merhaba",
              maxLines: 1,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          Container(height: 150, color: Colors.red, child: Icon(Icons.sports_football_rounded)),
          Container(height: 150, color: Colors.white),
          const Divider(),

          SizedBox(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(width: 70, color: Colors.blue),
                Container(width: 70, color: Colors.yellow),
                Container(width: 70, color: Colors.blue),
                Container(width: 70, color: Colors.yellow),
                Container(width: 70, color: Colors.blue),
                Container(width: 70, color: Colors.yellow),
                Container(width: 70, color: Colors.blue),
                Container(width: 70, color: Colors.yellow),
              ],
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.cancel_outlined),
            style: IconButton.styleFrom(shape: const CircleBorder()),
          ),
          _ListDemo(),
        ],
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({super.key});

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    super.initState();
    print("initialstate");
  }

  @override
  void dispose() {
    super.dispose();
    print("exit");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 300,width: 300,color:Colors.green),
        Container(height: 300,width: 300,color:Colors.blue),
        Container(height: 300,width: 300,color:Colors.red),
        Container(height: 300,width: 300,color:Colors.green),
        Container(height: 300,width: 300,color:Colors.blue),
        Container(height: 300,width: 300,color:Colors.red),
        Container(height: 300,width: 300,color:Colors.green),
        Container(height: 300, width: 300,color:Colors.blue),
        Container(height: 300,width: 300,color:Colors.red),
        Container(height: 300,width: 300,color:Colors.green),
        Container(height: 300,width: 300,color:Colors.blue),
        Container(height: 300,width: 300,color:Colors.red),
        
      ],
    );
  }
}
