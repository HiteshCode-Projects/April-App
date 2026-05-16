import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Icon(Icons.person_4_rounded)),

        body: Center(
          child: Container(
            width: 300,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(25),

            decoration: BoxDecoration(
              color: Colors.lightBlue.shade300,
              borderRadius: BorderRadius.circular(12),
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: [
                Text("John Cena", style: TextStyle(fontSize: 22)),

                SizedBox(height: 10),

                Text("Flutter Developer"),

                SizedBox(height: 10),

                Text("India📍"),

                Icon(Icons.location_city),

                SizedBox(height: 10),

                TextButton(
                  onPressed: () {
                    print("Button Clicked");
                  },
                  child: Text("Follow"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
