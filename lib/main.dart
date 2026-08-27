import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learning_journey/101/list_view_builder.dart';
import '101/color_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData.dark().copyWith(
        progressIndicatorTheme: ProgressIndicatorThemeData(strokeWidth: 2.5,color:Color.fromARGB(255, 17, 247, 255)),
        
        colorScheme: ThemeData.dark().colorScheme.copyWith(
          
          error: ColorItems.error,
        ),
        cardTheme: CardThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),

        textSelectionTheme:TextSelectionThemeData(cursorColor: Colors.blue,selectionColor: Colors.indigo,),
        textTheme:const TextTheme(bodyLarge: TextStyle(color:Colors.red) ) ,

        appBarTheme: const AppBarTheme(
          
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: Colors.transparent,
          elevation: 5,
        ),
      ),
      home:  ListViewBuilderLearn(),
    );
  }
}
