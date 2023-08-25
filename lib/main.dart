import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
    const MyApp ({super.key});

  
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de pessoas',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const contador(),
    );
  }
}

class contador extends StatefulWidget {
  const contador({super.key});

  @override
  State<contador> createState() => _contadorState();
}

class _contadorState extends State<contador> {
  int count = 0;
  void decrement (){

    setState(() {
      if (count>0){
          count--;
      
      }
    
    });

    print(count);
  }
  void increment(){
    setState(() {
      if (count<30){
          count++;
      
      }
    });
    print(count);
  }
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assert/images/restaurant.png"),
          fit: BoxFit.cover
          )

        ),

      
      
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          
          const Text("Pode entrar!", style: TextStyle(fontSize: 30.0, color: Colors.white )),
          Padding(
                  padding: const EdgeInsets.all(40),
                  child: Text(count.toString(),
                  style: const TextStyle(fontSize: 100, color:Colors.amber)),
                ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              

              
              
              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(backgroundColor: Colors.amber, fixedSize: Size(100, 100), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24) )), 
                child: Text("Entrou", style: TextStyle(fontSize: 16.0, color: Colors.black )),
                
                
              ),
              SizedBox(width: 64,),
                 TextButton(
                onPressed: decrement, 
                style: TextButton.styleFrom(backgroundColor: Colors.amber, fixedSize: Size(100, 100), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24) )),
                child: Text("Saiu", style: TextStyle(fontSize: 16.0, color: Colors.black )),
              )
            ],
          )

        ]

      ),
    ));
  }
}