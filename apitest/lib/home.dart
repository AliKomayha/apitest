import 'package:flutter/material.dart';
import 'product.dart';
import 'search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _load=false;
  
  void update(bool success){
    setState(() {
      _load=true;
      if(!success){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('failed to load data') ,));
      }
      
    });
  }

  @override
  void initState(){
    updateProducts(update);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(actions: [
        IconButton(
            onPressed: !_load ? null: (){
              setState(() {
                _load= false;
                updateProducts(update);
              });
            },
            icon: const Icon(Icons.refresh) ),

        IconButton(
            onPressed: (){
              setState(() {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Search())
                );
              });
            },
            icon: Icon(Icons.search))
      ],
        title: Text("Available Products"),
        centerTitle: true,
      ),

      body: _load ? ShowProducts() : const Center(
        child: SizedBox(width:100, height:100, child:CircularProgressIndicator())
    )
    );
  }
}
