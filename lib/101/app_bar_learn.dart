import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String _title="HOŞ GELDİNİZ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        // Başlığı bir değişkende tutmak kodu daha düzenli hâle getirir.
        title: Text(_title),
        leading:Icon(Icons.arrow_back_ios_new,),
        shadowColor: Colors.grey,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        // centerTitle, main.dart içinde true olarak ayarlandı.
        // backgroundColor, main.dart içinde transparent olarak ayarlandı.
        // elevation, main.dart içinde 5 olarak ayarlandı.
        
        // leadingWidth, AppBar'ın solundaki ikon alanının genişliğini belirler.
        // automaticallyImplyLeading: false,

          
        actions: [
          IconButton(
            onPressed: (){}, icon: Icon(Icons.access_alarms),
            padding:const EdgeInsets.only(right: 10,bottom:5,)
            
            ),
            const Center(child:CircularProgressIndicator(color: Colors.cyan,))
        ],

      )
    );
    

  }
}
