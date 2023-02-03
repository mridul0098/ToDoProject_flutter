import 'package:flutter/material.dart';
import 'package:todoproject/Style.dart';
class todopageview extends StatefulWidget {
  const todopageview({Key? key}) : super(key: key);

  @override
  State<todopageview> createState() => _todopageviewState();
}

class _todopageviewState extends State<todopageview> {
 List ToDoList=[];
String item="";
MyinputOnChange(content){
  setState(() {
    item=content;
  });
  
}
 AddItem(){
  setState(() {
    ToDoList.add({"item":item});
  });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TodoApp"),),
      body: Container(
        padding: EdgeInsets.all(20),
        child:Column(
          children: [
            Expanded(
           flex: 10,
                child: Row(
                  children: [
                    Expanded(
                      flex:70,
                        child: TextFormField(
                          onChanged: (content){MyinputOnChange(content);},

                          decoration: AppInputDecoration("name"),
                        )),
                   SizedBox(width: 8,),
                   Expanded(
                     flex: 30,
                       child: ElevatedButton(
                           onPressed: (){
                             AddItem();
                           },
                           style: AppButtonStyle(),
                          child: Text("click hear")))
                  ],
                ),),
            Expanded(
              flex: 90,
                child:ListView.builder(
                  itemCount: ToDoList.length,

                    itemBuilder: (context,index){
                      return Card(
                        child: Row(
                          children: [
                            Expanded(
                                flex:70,
                                child: Text(ToDoList[index]["item"].toString()),
                                ),
                            Expanded(
                                flex: 30,
                                child: TextButton(
                                    style: AppButtonStyle(),
                                    onPressed: (){}, child: Icon(Icons.delete)))
                          ],
                        ),
                      );
                    }

                )
            )
          ],
        )
      ),
    );
  }
}
