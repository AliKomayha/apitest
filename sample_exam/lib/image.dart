import 'package:flutter/material.dart';
import 'home.dart';
import 'car.dart';

class ShowImage extends StatelessWidget {
  const ShowImage({super.key});

  @override
  Widget build(BuildContext context) {
    final Car c=ModalRoute.of(context)!.settings.arguments as Car;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Car Image'),
        centerTitle: true,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Image.asset( c.image,width: 600, height: 300, fit: BoxFit.fill),
            const SizedBox(height: 25,),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.navigate_before, size:60)),
        ],
      ),
    );
  }
}
