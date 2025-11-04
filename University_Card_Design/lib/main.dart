import 'package:flutter/material.dart';
import 'card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      home: const ProfileInfo(),
    );
  }
}
class ProfileInfo extends StatefulWidget
{
  const ProfileInfo({super.key});

  @override
  State<ProfileInfo> createState() => _ProfileInfo();
}
class _ProfileInfo extends State<ProfileInfo>
{
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final String userName = "admin";
  final String password = "12345";

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submit()
  {
    String name = _nameController.text;
    String pass = _passwordController.text;
    if (name==userName && pass==password)
    {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyClass()),
      );
      
    }
    else
    {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Invalid username or password.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page',style: TextStyle(color: Colors.blue,fontSize: 40,fontWeight: FontWeight.w700),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 39, 85, 12),
      ),
      body:Center(
        child: Container(
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(20),
            height: 400,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.black87,
            ),
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
// --------------------------------USER Name---------------------------------------------------------
                TextField(
                  controller:_nameController,
                  cursorColor: Color(0xFF00FF00),
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(255, 53, 47, 47),
                    focusColor: Colors.red,
                    filled: true,
                    hintText:" Enter Your Name",
                    hintStyle: TextStyle(color: Colors.white70),
                    labelText: "User Name",
                    labelStyle: TextStyle(color: Colors.blueAccent),
                     enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide( color: const Color.fromARGB(255, 37, 199, 110), width: 2),) ,
                  ),
                ),
                SizedBox(height: 10,),
// --------------------------------PASSWORD---------------------------------------------------------
                TextField(
                  controller:_passwordController,
                  cursorColor: Color(0xFF00FF00),
                  style: TextStyle(color: Colors.white),
                  keyboardType:TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(255, 53, 47, 47),
                    focusColor: Colors.red,
                    filled: true,
                    hintText:" Enter Your Password",
                    hintStyle: TextStyle(color: Colors.white70),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.blueAccent),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide( color: const Color.fromARGB(255, 37, 199, 110), width: 2),) ,
                  ),
                  obscureText: true,
                ),
                
                SizedBox(height: 40,),
             Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
// --------------------------------LOGIN BUTTON---------------------------------------------------------
                  ElevatedButton(
                    onPressed: _submit,
                    child:SizedBox(
                      width:300,
                      height: 50,
                      child: Text('Login',textAlign: TextAlign.center,style: TextStyle(fontSize:35,fontWeight:FontWeight.bold,color:Colors.green),),
                    ) , 
                  ),
                  
            ],
        ),
          ],
            )
        ),
        ),
      ),
    );
  }
}

