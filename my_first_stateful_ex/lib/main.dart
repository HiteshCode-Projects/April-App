import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

//Structure for StatefulWidget

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp>{
//   //Data Changed and Screen re- Building

//   @override
//   Widget build(BuildContext context) {

//   }
// }

//Example 1
void main() {
  runApp(CounterApp());
}

class CounterApp extends StatefulWidget {
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;

  void increaseCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Counter Appp")),

        body: Center(
          child: Text(
            "Count/Like/💖/Cart:   $count",
            style: TextStyle(fontSize: 24),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: increaseCount,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
