import 'package:flutter/material.dart';
import 'contact.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    final Contact c=ModalRoute.of(context)!.settings.arguments as Contact;
    String _text='${c.name}';
    return Scaffold(
      appBar: AppBar(
        title: Text(_text),
        centerTitle: true,
      ),
      body: Column(
          // itemCount: contacts.length,
          // itemBuilder: (context,index){
          //   return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('${c.image}',width: 200, height: 200,),
                Text('${c.toString()}',style: TextStyle(fontSize: 20),),


              ],

            // );

          // }
          ),
    );
  }
}
