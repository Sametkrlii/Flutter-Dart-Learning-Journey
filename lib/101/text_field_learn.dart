import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learning_journey/product/languages/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {

FocusNode focusNodeTextFieldOne =FocusNode();
FocusNode focusNodeTextFieldTwo =FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            // style: TextStyle(color: Colors.red), //bodyLarge temasından alıyor rengini main.darttan da subtitle1 color olarak verilebilir.
            autocorrect: false,
            maxLength: 25,
            keyboardType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email],
            inputFormatters: [TextProjectInputFormatter()._formatter],
            textInputAction: TextInputAction.next,
            focusNode: focusNodeTextFieldOne,
            autofocus: true,          
            buildCounter: (context, {int? currentLength, bool? isFocused, int? maxLength}) {
              return _animatedContainer(currentLength);
            },
          
            //TEXTFIELDIN ALTINDA BULUNAN BÖLÜME CUSTOM COUNTER OLUŞTURDUK
            decoration: _InputDecoration().emailInput
          ),
          TextFormField(
            focusNode: focusNodeTextFieldTwo,
            autocorrect: false,
            minLines: 2,
            maxLines: 4,
            
          )
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 120),
      height: 2,
      width: (10 + ((currentLength ?? 0) * 16)),
      color: Colors.green,
    );
  }
}

class TextProjectInputFormatter {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text.startsWith(" ")) {//basit bir örnek olarak, boşluk ile başlayamaz.
      return oldValue;
    }
    return newValue;
  });
}



class _InputDecoration{


final emailInput= InputDecoration(
              prefixIcon: Icon(Icons.mail_outline_sharp),
              hintText: "ornekmail.123@gmail.com",
              labelText: LanguageItems.mailTitle,
            );



}