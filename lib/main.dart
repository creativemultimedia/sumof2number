import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}
class MyApp extends StatefulWidget {


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  String s1,s2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Hello"),),
    body: Column(children: [
      Container(child: TextField(decoration: InputDecoration(hintText: "Enter name"),controller: t1,),),
      Container(child: TextField(controller: t2,),),
     RaisedButton(child: Text("Submit"),onPressed: () {
     setState(() {
       s1=t1.text;
       s2=t2.text;
       int a,b,c;
       a=num.parse(s1).toInt();
       b=num.parse(s2).toInt();
       c=a+b;
       print(c);
     });
     },)
    ],),);
  }
}
