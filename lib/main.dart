import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myform(),
    );
  }
}

class Myform extends StatefulWidget {
  @override
  State<Myform> createState() => _MyformState();
}

class _MyformState extends State<Myform> {
  final mycontroller = TextEditingController();
  String mydisplay=' ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrive Data'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(hintText: 'your name',
                  hintStyle: TextStyle(color: Colors.red,fontSize: 15),
                labelText: "Enter Your Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )

              ),

              controller: mycontroller,
            ),
          ),

          Padding(padding: EdgeInsets.all(100),
            child: Text(mydisplay,style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            mydisplay = mycontroller.text;
          });
        },

        tooltip: 'please click it',
        child: Icon(Icons.text_fields),
      ),
    );
  }
}
