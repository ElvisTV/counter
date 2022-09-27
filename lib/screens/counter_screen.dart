import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreeen extends StatefulWidget {
  

  const CounterScreeen({Key? key}) : super(key: key);

  @override
  State<CounterScreeen> createState() => _CounterScreeenState();
}

class _CounterScreeenState extends State<CounterScreeen> {
  int counter = 10;

  @override
  Widget build(BuildContext context) {

    const fontSize30 =  TextStyle( fontSize: 30 );

    return Scaffold(
      appBar: AppBar(

        title: const Text ('CounterScreeen'),
        
        elevation: 0,
      ),
      body: Center (
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Número de clicks', style: fontSize30 ),
            Text( '$counter' , style: fontSize30 )
          ],          
         )
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {

              counter ++;
              
              setState(() {
                
              });
            }

          ),

          const SizedBox(width: 20),

           FloatingActionButton(
            child: const Icon(Icons.ac_unit),
            onPressed: () {

              counter = 0;
              
              setState(() {
                
              });
            }

          ),

           const SizedBox(width: 20),

           FloatingActionButton(
            child: const Icon(Icons.ac_unit),
            onPressed: () {

              counter --;
              
              setState(() {
                
              });
            }

          ),
        ],
      ),
    );
  }
}