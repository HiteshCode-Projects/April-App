import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'home_screen.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  //Authentication
  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;

  //SIGNUP- User Creates The Account - Register
  void signUp() async {
    try {
      //Email and Password

  UserCredential user  =    await auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      print("User Created");

      //Save User Details In Firestore-Database
      await firestore.collection('users').doc(user.user!.uid).set({
        //key:value
        'email': emailController.text,
        'createdAt': Timestamp.now(),
      });

      //Going To New Screen/Home Screen
      Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()),);
    } catch (error) {
      print(error);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(error.toString())));
    }
  }

  //LOGIN

  void login() async {
    try {
      //Email and Password

      await auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );


      //Going To Next Screen
      Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()),);


    }  catch (error) {
      print(error);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(error.toString())));
    }
  }

  //Screen Building - Design
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Firebasee Auth")),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),

            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: "Password"),
            ),

            SizedBox(height: 20),

            ElevatedButton(onPressed: signUp, child: Text("Sign Up")),

            SizedBox(height: 10),

            ElevatedButton(onPressed: login, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
