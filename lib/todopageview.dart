import 'package:flutter/material.dart';
import 'package:todoproject/Style.dart';
class todopageview extends StatefulWidget {
  const todopageview({Key? key}) : super(key: key);

  @override
  State<todopageview> createState() => _todopageviewState();
}

class _todopageviewState extends State<todopageview> {
 List ToDoList=[{"1":"1"},{"1":"1"},];
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
                          decoration: AppInputDecoration("name"),
                        )),
                   Expanded(
                     flex: 30,
                       child: ElevatedButton(
                           style: AppButtonStyle(),
                           onPressed: (){}, child: Text("click hear")))
                  ],
                ),),
            Expanded(
              flex: 90,
                child:ListView.builder(
                  itemCount: ToDoList.length,

                    itemBuilder: (context,index){
                      return Card(
                        child: Text("mridul"),
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
