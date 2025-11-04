import 'package:flutter/material.dart';

class MyClass extends StatefulWidget
{
  const MyClass({super.key});

  @override
  State<MyClass> createState() => _MyClassState();
}
class _MyClassState extends State<MyClass>
{
  Map <String,String> data = {
    'Name': 'IFTIKHAR HUSSAIN JAFFARI',
    'F/Name': 'MUHAMMAD IBRAHIM',
    'Course': 'BS-CS(AFTERNOON)',
    'Dept': 'Computer Science',
    'Sys ID': 'NUML-S22-14260',
    'Valid till': 'NUML123456',
  };


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile Info',
      home:Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('Student Profile Info', style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color:const Color.fromARGB(255, 117, 92, 15)),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          }),
        
      ),
      body: Center(
        child: SizedBox(
          width: 600,
          height: 400,
          child:Stack(
            children: [
          Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.all(20),
            // color: Colors.blueAccent,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container( 
                      width: 600,
                      height: 80,
                      decoration:BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                                                      ),
                                               ) ,
                      
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('National University of Modern Languages', style: TextStyle(fontSize: 25,fontWeight: FontWeight.w100,color: Colors.white),),
                          Text('H9 , Islamabad', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100,color: Colors.white),),
                        ],
                        ),
                      )
                      ,
                      Text("Tel: 051-9265100-10",style: TextStyle(fontWeight: FontWeight.w700),)
                      ,
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 600,
                        height: 200,
                        child: Row( 
                            children: [
                              SizedBox(
                                width: 120,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text('Name:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                  SizedBox(height: 5,),
                                  Text('F/Name:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                  SizedBox(height: 5,),
                                  Text('Course: ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                  SizedBox(height: 5,),
                                  Text('Dept:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                  SizedBox(height: 5,),
                                  Text('Sys ID:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                  SizedBox(height: 5,),
                                  Text('Valid till:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                ]
                                ),
                              ),
                              SizedBox(
                                width: 270,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text("$data['Name']",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                  SizedBox(height: 5,),
                                  Text('MUHAMMAD IBRAHIM',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                  SizedBox(height: 5,),
                                  Text('BS-CS(AFTERNOON)',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                  SizedBox(height: 5,),
                                  Text('Computer Science',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                  SizedBox(height: 5,),
                                  Text('NUML-S22-14260',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                  SizedBox(height: 5,),
                                  Text('NUML123456',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                ],),
                              ),
                              SizedBox(
                                child: Image.asset('assets/images/myPic.jpg' , width: 150,height: 150,),
                              )
                            ],
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                        width: 600,
                        height: 50,
                        color: Colors.amber,

                       ),
                       Positioned(
                            left: 100,
                            child: Text('AFTERNOON',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color:Colors.white),),
                          ),
                          Positioned(
                            right: 10,
                            child: Text('Director Administration',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),),
                          ),
                        ],
                      )                    ] 
                  ),
          ),
          Positioned(
            top: 70,
            left: 30,
            child:Icon(Icons.favorite, color: Colors.red,size: 50, ))
            // child:Image.asset("assets/images/images.png", width: 50,height: 50,))  
        ],
        )
        ),
      ),
      )
    );
  }
}