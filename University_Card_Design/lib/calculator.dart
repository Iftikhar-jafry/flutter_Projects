import 'package:flutter/material.dart';

class Calculator extends StatefulWidget{
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}
class _CalculatorState extends State<Calculator>{
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            color: Colors.blueAccent,
            height: 700,
            width: 500,
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Your Name',
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  keyboardType:TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Your Password',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: SizedBox(
                      width:100,
                      child: Text('Add',textAlign: TextAlign.center,),
                    ) ,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: SizedBox(
                      width:100,
                      child: Text('Subtract',textAlign: TextAlign.center,),
                    ) ,
                  ),
                ],),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  ElevatedButton(
                    onPressed: () {},
                    child:SizedBox(
                      width:100,
                      child: Text('Multiply',textAlign: TextAlign.center,),
                    ) , 
                  ),
                  
                  ElevatedButton(
                    onPressed: () {},
                    child:SizedBox(
                      width:100,
                      child: Text('Divide',textAlign: TextAlign.center,),
                    ) ,
                  ),
                 
              ],
            ),
            SizedBox(height: 20,),
             TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Result',
                  ),
                ),
            SizedBox(height: 20,),
             Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  ElevatedButton(
                    onPressed: () {},
                    child:SizedBox(
                      width:100,
                      child: Text('Clear',textAlign: TextAlign.center,),
                    ) , 
                  ),
                  
                  ElevatedButton(
                    onPressed: () {},
                    child:SizedBox(
                      width:100,
                      child: Text('Exit',textAlign: TextAlign.center,),
                    ) ,
                  ),
            ],
        ),
          ],
            )
        ),
        ),
      );
  }
}