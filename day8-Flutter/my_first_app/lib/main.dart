import 'package:flutter/material.dart';

void main() {
  runApp(MyScreen());
}

//Widget(Everythin on Screen is a widget eg. Text , Button , Image) Tree
//1. MaterialApp - Everything That you put on screeen as widget is Material- App basic Deisgn
//2. Scaffold - Screen Structue/Size
//3. appBar - 1st Part of Screen
//4. body

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Entire Screen Code Inside This Function
    return MaterialApp(

    home: Scaffold(

      appBar: AppBar(title: Text("Fooide🐧")),  

      //EmojiPad - Windows Key + .

      body: Center(

       child: Text("Hello Guys , Welcome To Flutter"),

      ),


    ),

    );
  }
}
