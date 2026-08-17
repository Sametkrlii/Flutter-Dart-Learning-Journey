import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DemosApp extends StatelessWidget {
  const DemosApp({super.key});
  final _title = "Create Your First Note";
  final _description = "Note Add ";
  final  _createnote ="Create a Note";
  final _importnote="import a Note";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 241, 255),
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark,),
      body: Padding(
        padding: PaddingItems.defaultPadding,
        child: Column(
          children: [
            PngImage(name: "books", size: 350),

            _TitleWidget(title: _title, size: 18),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                _description * 15,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 13.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),

            ElevatedButton(
              style:ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue),
              shape:WidgetStatePropertyAll(RoundedRectangleBorder())),
              onPressed: () {},
              child:  SizedBox(
                height: ButtonHeights.buttonNormalHeight,
                child: Center(child:Text(_createnote,
                style:Theme.of(context).textTheme.headlineSmall,
                
                )),
                
                
              ),
            ),
            TextButton(onPressed: (){}, child: Text(_importnote,style:TextStyle(color:Colors.blue)))
          ],
        ),
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    // ignore: unused_element_parameter
    super.key,
    required this.title,
    required this.size,
  });

  final String title;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: size,
      ),
    );
  }
}

class PaddingItems {
  static const EdgeInsets defaultPadding = EdgeInsets.symmetric(
    horizontal: 15,
    vertical: 35,
  );
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name, required this.size});
  final String name;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        _nameWithPath,
        fit: BoxFit.cover,
        height: size,
        width: size,
      ),
    );
  }

  String get _nameWithPath => 'assets/png/$name.png';
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
