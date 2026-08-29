import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    _items = CollectionItems().items;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: ListView.builder(
        padding: PaddingUtility().paddingHorizontal,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({required this._model});

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,

      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingGeneral,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(24.0),
                    image: DecorationImage(image: AssetImage(_model.imagePath), fit: BoxFit.cover),
                  ),
                ),
              ),

              Padding(
                padding: PaddingUtility().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_model.title, style: Theme.of(context).textTheme.titleMedium),
                    Text('${_model.price} eth', style: Theme.of(context).textTheme.titleMedium),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.price, required this.title});
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(imagePath: ProjectImages.ethImage, price: 3.4, title: "Abstract Art"),
      CollectionModel(imagePath: ProjectImages.ethImage, price: 4.5, title: "Abstract Art 2"),
      CollectionModel(imagePath: ProjectImages.ethImage, price: 2.8, title: "Abstract Art 3"),
      CollectionModel(imagePath: ProjectImages.ethImage, price: 5.8, title: "Abstract Art 4"),
    ];
  }
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 16.0);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 16.0);
  final paddingBottom = const EdgeInsets.only(bottom: 40);
  final paddingGeneral = const EdgeInsets.all(20.0);
}

class ProjectImages {
  static const ethImage = "assets/png/image_demo_collection.jpg";  // static const -> class'a ait ve sabit değişken.
  // final -> class'tan oluşturulan nesneye ait değişken olabilir.
  // Eğer static olmasaydı:
  // ProjectImages().ethImage
  // şeklinde erişmek gerekirdi ve her çağrıda yeni bir ProjectImages nesnesi oluşturulurdu.
}
