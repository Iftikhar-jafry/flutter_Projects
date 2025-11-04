import 'package:flutter/material.dart';

class MyClass extends StatefulWidget
{
  const MyClass({super.key});

  @override
  State<MyClass> createState() => _MyClassState();
}
class _MyClassState extends State<MyClass>
{
  List  cardValues=[
    {
    'Name': 'IFTIKHAR HUSSAIN JAFFARI',
    'F/Name': 'MUHAMMAD IBRAHIM',
    'Course': 'BS-CS(AFTERNOON)',
    'Dept': 'Computer Science',
    'Sys ID': 'NUML-S22-14260',
    'Valid till': 'Jan/2026',
    'Image': 'assets/images/mypic.jpg',
  },
  {
    'Name': 'Hammad Ishaq',
    'F/Name': 'MUHAMMAD ISHAQ',
    'Course': 'BS-CS(AFTERNOON)',
    'Dept': 'Computer Science',
    'Sys ID': 'NUML-S22-14260',
    'Valid till': 'Jan/2026',
    'Image': 'assets/images/hammad.jpg',
  },
  {
    'Name': 'Ihsan ur Rehman',
    'F/Name': 'Sardar Munuwar',
    'Course': 'BS-CS(AFTERNOON)',
    'Dept': 'Computer Science',
    'Sys ID': 'NUML-S22-14260',
    'Valid till': 'Jan/2026',
    'Image': 'assets/images/ihsan.jpg',
  },
  {
    'Name': 'Ameer Mauvia',
    'F/Name': '......',
    'Course': 'BS-CS(AFTERNOON)',
    'Dept': 'Computer Science',
    'Sys ID': 'NUML-S22-14260',
    'Valid till': 'Jan/2026',
    'Image': 'assets/images/mavi.jpg',
  },
  {
    'Name': 'Hassaan Khan',
    'F/Name': 'Khan',
    'Course': 'BS-CS(AFTERNOON)',
    'Dept': 'Computer Science',
    'Sys ID': 'NUML-S22-14260',
    'Valid till': 'Jan/2026',
    'Image': 'assets/images/hassaan.jpg',
  },
  {
    'Name': 'Sami Ur Rehman',
    'F/Name': '.............',
    'Course': 'BS-CS(AFTERNOON)',
    'Dept': 'Computer Science',
    'Sys ID': 'NUML-S22-14260',
    'Valid till': 'Jan/2026',
    'Image': 'assets/images/sami.jpg',
  },

  ];
  Map <String,String> data =   {
    'Name': 'IFTIKHAR HUSSAIN JAFFARI',
    'F/Name': 'MUHAMMAD IBRAHIM',
    'Course': 'BS-CS(AFTERNOON)',
    'Dept': 'Computer Science',
    'Sys ID': 'NUML-S22-14260',
    'Valid till': 'Jan/2026',
    'Image': 'assets/images/myPic.jpg',
  };

  void getData(Map<String,String> newData){
    setState(() {
      data=newData;
    });
  }


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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 600,
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: cardValues.map((data){
                 return Column(
                children: [ 
                  SizedBox(
                    width: 180,
                     child: ElevatedButton(onPressed: (){
                      getData(data.cast<String,String>());
                     }, child: Text(data['Name'])),
                  ),
                  SizedBox(height: 10,),
                ],
                 ); 
              }).toList(),
              )
            ),
        SizedBox(
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
                                  Text("${data['Name']}",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                  SizedBox(height: 5,),
                                  Text('${data['F/Name']}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                  SizedBox(height: 5,),
                                  Text('${data['Course']}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                  SizedBox(height: 5,),
                                  Text('${data['Dept']}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                  SizedBox(height: 5,),
                                  Text('${data['Sys ID']}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                  SizedBox(height: 5,),
                                  Text('${data['Valid till']}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                                ],),
                              ),
                              SizedBox(
                                child: Image.asset('${data['Image']}' , width: 150,height: 150,),
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
        ]
      ),
      ),
      )
    );
  }
}