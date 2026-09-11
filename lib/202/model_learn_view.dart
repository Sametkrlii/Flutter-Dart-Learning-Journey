import 'package:flutter/material.dart';
import 'package:flutter_learning_journey/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: "Default Body Text");

  @override
  void initState() {
    super.initState();

    final user1 = PostModel1()
      ..userId = 1
      ..body = 'AA';

    final user2 = PostModel2(2, 02, 'BB', 'BBB');
    user2.body = "abc"; //model_learn.dart dosyasında final değil, böyle de atanabiliyor.

    final user3 = PostModel3(3, 03, "CC", "CCC");
    //user3.body = "abc"; -> final olarak tanımlı, böyle kullanılamaz.

    final user4 = PostModel4(userId: 4, id: 04, title: "DD", body: "DDD");
    //user4.body = "abc";  -> final olarak tanımlı.

    final user5 = PostModel5(userId: 5, id: 05, title: "EE", body: "EEE");
    //private variable olduğu için user5. tarzında bir kullanım hiç yok, gözükmüyor.

    final user6 = PostModel6(userId: 6, id: 06, title: "FF", body: "FFF"); //private erişilemez.

    final user7 = PostModel7(); //default değerlerini alıyor. ve private erişilemez

    final user8 = PostModel8(body: "G GG");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {

            user9 = user9.copyWith(title: "Onpressed");
            //model classında copywith generate edilmiş ise copywith kullanarak sadece bu değişken değişir.
            //user9=PostModel8(title: ... ) kullanılsaydı sadece title atanır , diğerleri null atanır.
            user9.updateBody("Merhaba");

          });
        },
      ),
      appBar: AppBar(title: Text(user9.title ?? 'Not has any data',)),
      body:Text(user9.body ?? "There is no body data"),
    );
  }
}
