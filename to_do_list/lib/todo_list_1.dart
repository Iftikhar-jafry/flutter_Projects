import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TodoList1(),
    );
  }
}
class TodoList1 extends StatefulWidget {
  const TodoList1({super.key});
  @override
  State<TodoList1> createState() => _TodoList1State();
}
class _TodoList1State extends State<TodoList1> {

  final TextEditingController controller=TextEditingController();
  final List <String> _task=["hello",];

  void _add()
  {
    final String text=controller.text.trim();
    if (text.isNotEmpty)
    {
      setState((){
      _task.add(text);
      });
      controller.clear();
    }
    
  }
  void _remove(int index)
  {
    setState(() {
      _task.removeAt(index);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List', style: TextStyle(color:Color.fromARGB(255, 255, 238, 3), fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child:SizedBox(
          width: 900,
          // height: 600,
          child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              // color: Colors.amber,
              borderRadius: BorderRadius.circular(16),
              shape: BoxShape.rectangle,
              border: Border.all(
                color: Colors.red,
                width: 2,
              )
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: controller,
                        showCursor: true,
                        
                        decoration: InputDecoration(
                          label: Text("Notes", style: TextStyle(color:Colors.black)),
                          // hint: Text(""),
                          filled: true,
                          fillColor: Colors.lightBlue,
                          prefixIcon: Icon(Icons.note),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: const Color.fromARGB(255, 233, 182, 182))),
                          
                          )
                          
                        ),

                    ),
                    SizedBox(width: 40,),
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                        onPressed: _add, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: EdgeInsets.all(16)
                        ),
                        child: Text("Add", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100,color:Colors.red),))
                    ,
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: _task.isEmpty
                  ?Center(
                    child: Text("No Task To Perform!!"),
                  )
                  :SizedBox(
                    width: 700,
                    child:ListView.builder(
                    itemCount: _task.length,
                    itemBuilder: (context,index){
                      return Card(
                        color:Colors.blueAccent,
                        shadowColor: Colors.black,
                        elevation: 16,
                        margin: EdgeInsets.all(6),
                        surfaceTintColor: const Color.fromARGB(255, 16, 245, 233),
                        semanticContainer: true,
                        child: ListTile(
                          title: Text(_task[index],),
                          trailing: IconButton(
                            // onpressed:()=>_remove(index)
                            onPressed: (){_remove(index);}
                            ,
                             icon: Icon(Icons.delete)),
                          
                        ),
                        );
                    },
                    ) ,
                  )
                  
                  )
              ],
            ) ,
          ),
        )
        ),  
    );
  }
}