import 'package:flutter/material.dart';
import 'todo_list_2_second_screen.dart';

class Todo_List extends StatelessWidget {
  const Todo_List({super.key});

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

  bool isHover1=false;
  bool isHover2=false;

  final TextEditingController controller=TextEditingController();
  final List <String> _task=["Iftikhar",];
  final List <String> _complete=[];
  final List <String> _not_complete=[];

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
  void _completed(int index)
  {
    setState(() {
      _complete.add(_task[index]);
      _task.removeAt(index);
    });
  }
  void _inCompleted(int index)
  {
    setState(() {
      _not_complete.add(_task[index]);
      _task.removeAt(index);
    });
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
        title: const Text('Todo List With Complete or Not Option', style: TextStyle(color:Color.fromARGB(255, 255, 238, 3), fontSize: 30,fontWeight: FontWeight.bold),),
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
                 ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) =>SecondScreen(tasks:_complete)));
                      }, child: Text("Completed")),
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
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [IconButton(
                            // onpressed:()=>_remove(index)
                            onPressed: (){_remove(index);}
                            ,
                             icon: Icon(Icons.delete)),
                             SizedBox(width: 5,),
                             Tooltip(
                              message: "Completed",
                             child:ElevatedButton(
                              onPressed: (){_completed(index);},
                              onHover: (hover)=>setState(()=>isHover1=hover), 
                              child: Icon(Icons.thumb_up, color:isHover1?Colors.green:Colors.blue,))
                             ),
                             Tooltip(
                              message:"Not Completed",
                              child: ElevatedButton(
                                onPressed: (){_inCompleted(index);},
                                onHover: (hover)=>setState(()=>isHover2=hover),
                                child: Icon(Icons.dangerous, color: isHover2?Colors.red:Colors.blue,)),
                             ),
                             
                            ]
                          ),
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