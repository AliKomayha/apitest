import 'package:flutter/material.dart';
import 'items.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  bool _showSelected=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(onPressed:(){
            setState(() {
              _showSelected=true;
            });

            }
              , icon: Icon(Icons.shopping_cart_checkout, size:35,) ),

          IconButton(onPressed:(){
            setState(() {
              _showSelected=false;
            });
          }
              , icon: Icon(Icons.restore, size:35,) ),
        ],
      ),
      body: _showSelected==true?ShowSelected(): ListView.builder(
          padding: EdgeInsets.all(25.0),
          itemCount: items.length,
          itemBuilder: (context,index){
            return Row(
              children: [
                Checkbox(value: items[index].isSelected, onChanged: (bool? val){
                  setState(() {
                    items[index].setSelected =val as bool;
                  });

            }),
                Text(items[index].name, style: TextStyle(fontSize: 20),),
              ],
            );

          }

      ),
    );
  }
}
class ShowSelected extends StatelessWidget {
  const ShowSelected({super.key});

  @override
  Widget build(BuildContext context) {
    List<Item> selectedItems=[];
    for(int i=0;i<items.length;i++){
      if(items[i].isSelected)
        selectedItems.add(items[i]);
    }


    return ListView.builder(
        itemCount: selectedItems.length,
        itemBuilder: (context, index){
          return Text(selectedItems[index].name, style:  TextStyle(fontSize: 25.0),);
        });
  }
}
