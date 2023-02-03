import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoproject/todopageview.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"todoapp",
      theme: ThemeData(primarySwatch: Colors.green),
      home: todopageview(),
    );
  }
}
