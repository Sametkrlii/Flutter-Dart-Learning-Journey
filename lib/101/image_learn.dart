import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 100,
            height: 150,

            child: Image.asset(ImageItems().appleWithBook, fit: BoxFit.cover),
          ),
          SizedBox(
            width: 150,
            height: 150,

            child: PngImage(path: ImageItems().appleWithBookWithoutPath),
          ),

          SizedBox(
            width: 250,
            height: 300,

            child: Image.network( 'https://picsum.hotos/300/200',

          errorBuilder:(context, error, stackTrace) =>const Icon(Icons.error) ,
            ))
          
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/png/books.png";
  final String appleWithBookWithoutPath = "books";
}

class PngImage extends StatelessWidget {

  const PngImage({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath, 
      fit: BoxFit.cover);
  }

  String get _nameWithPath => "assets/png/$path.png";
}
