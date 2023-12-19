import 'package:flutter/material.dart';
import 'package:sample_exam/image.dart';
import 'car.dart';
class ShowCars extends StatefulWidget {
  const ShowCars({super.key});

  @override
  State<ShowCars> createState() => _ShowCarsState();
}

class _ShowCarsState extends State<ShowCars> {


  String _text='Available Cars';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_text),
        centerTitle: true,
      ),

      body: ListView.builder(
        padding: EdgeInsets.all(35),
          itemCount: cars.length,
          itemBuilder: (context,index){
            return Row(
              children: [
                /// /// ////////////////////////
                IconButton(
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const ShowImage(),
                        settings: RouteSettings(arguments: cars[index]),
                        )
                      );

                    },
                    icon: Icon(Icons.zoom_in)),
                /// //////////////////
                IconButton(
                    onPressed: (){
                    setState(() {
                      _text='Model: ${cars[index].model} Price: ${cars[index].rentPerDay}';
                      });
                    },
                    icon: Icon(Icons.account_balance)),
              /// ///////////////////////
                Text(cars[index].toString(), style: TextStyle(fontSize: 20),),

              ],

            );

          }

      ),
    );
  }
}


