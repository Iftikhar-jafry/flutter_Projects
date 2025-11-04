import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"GeekForGeeks",
      
      home:Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.green,
        leading: const Icon (Icons.menu ,color:Colors.white),
        title:const Text("GeekForGeeks" ,style: TextStyle(color:Colors.white),),
      ),
      body:const Center(
        child:Text("Welcome to GeeksForGeeks", style:TextStyle(fontSize:35,fontWeight:FontWeight.w400,color:Colors.red,fontStyle:FontStyle.italic),)
      )
      ),
    );
  }

}