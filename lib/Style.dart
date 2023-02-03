import 'package:flutter/material.dart';

InputDecoration AppInputDecoration(lable){
  return InputDecoration(
    border: OutlineInputBorder(),
    labelText: lable,
    hintText: lable,
  );
}
ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    padding:EdgeInsets.all(25),
  );
}
