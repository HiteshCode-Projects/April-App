import 'package:flutter/material.dart';

void main() {
  runApp(LikeApp());
}

class LikeApp extends StatefulWidget {
  @override
  State<LikeApp> createState() => _LikeAppState();
}

class _LikeAppState extends State<LikeApp> {
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
           
           home: Scaffold(

                appBar: AppBar(title: Text("Like Example")),

                body: Center(
                   child: IconButton(onPressed: toggleLike, icon: Icon( isLiked ?  Icons.favorite : Icons.favorite_border , 
                    color: Colors.red,
                    size: 40,
                     )),

                ),
            

           ),

            
    );
  }
}
