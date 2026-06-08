import 'package:flutter/material.dart';
import 'firebase_options.dart'; //Backend Project Address
import 'package:firebase_core/firebase_core.dart'; //Connection
import 'auth_screen.dart';   //Auth Screen File Is now connected with your main file

void main() async {
  //Backend Strcuture
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // runApp(DemoApp());  Example 1 for DemoAPp

  //Example2 - Auth Service
  runApp(MyApp());
}

// class DemoApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
    
//       home: Scaffold(

//        appBar: AppBar(title: Text("Swiggy")),

//        body: Center(
//         child: Text("Hello Flutter - Firebase connection"),
//        ),

//       ),


//     );
//   }
// }


//Example 2 Class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: AuthScreen(),
     
    );
  }
}
