import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String _title="HOŞ GELDİNİZ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(_title),//final String tanımlayarak atamak daha mantıklı daha düzenli
        leading:Icon(Icons.arrow_back_ios_new,),
        shadowColor: Colors.grey,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        //centerTitle:true, main.dart otomatik olarak true atandı zaten.
        //backgroundColor: Colors.transparent, main.darttan ayarlandı.
        //elevation: 10, main.dart default 10 atandı zaten.
        
        //leadingWidth:56,//default 56  appbar solunda iconu sağa çeker.
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