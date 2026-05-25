import 'package:flutter/material.dart';

class MoodCard extends StatelessWidget {
  final String emoji;
  final String title;
  final Color color;

  final VoidCallback OnTap;

  const MoodCard({
    required this.emoji,
    required this.title,
    required this.color,
    required this.OnTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

   onTap: OnTap, 

   child: Container(
    decoration: BoxDecoration(
      color: color,
       borderRadius: BorderRadius.circular(20),


    ),

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,


      children: [
           
           Text(
            emoji,
            style: const TextStyle(fontSize: 20),
           ),

           SizedBox(height: 10),

           Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
           ),
      ],
    ),




   ),


    );
  }
}
