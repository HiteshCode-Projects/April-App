import 'package:flutter/material.dart';

class MoodScreen extends StatelessWidget {
  final String emoji;
  final String title;
  final Color color;
  final String music;
  final String food;

  MoodScreen({
    required this.emoji,
    required this.title,
    required this.color,
    required this.food,
    required this.music,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: color.withOpacity(0.2),

      appBar: AppBar(
        backgroundColor: color,
        title: Text(title),
      ),      

     body: Center(

   child: Container(

   margin: EdgeInsets.all(20),

   padding: EdgeInsets.all(25),
       
       decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
       ),

          
          child: Column(
             mainAxisSize: MainAxisSize.min,

            Text(
              emoji,
              style: TextStyle(fontSize: 80),
            ),
          

           SizedBox(height: 10),

           Text(
             "Your Mood   $title",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
           ),
               SizedBox(height: 10),

            Text("Food $food" ,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            ),
               
                 SizedBox(height: 10),
  
            Text("Music $music" ,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            )


          ),



   ),



     ),




    );
  }
}
