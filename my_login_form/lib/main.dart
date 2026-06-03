import 'package:flutter/material.dart';

void main() {
  runApp(LoginFromApp());
}

class LoginFromApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreen());
  }
}

class LoginScreen extends StatelessWidget {
  //Form - Assign GolbalKey - Which controls The form from outside

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Form")),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Form(
          key: _formKey,   //Important we are declaring The Global Key

          child: Column(
            children: [
              //Email Input Box - TextFormFeild
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {  //Validation means checking value means - What user writes inside input box
                  if (value == null || value.isEmpty || !value.contains("@")) {
                    return "Email Cannot be Empty or missing @";
                  }
                  return null;
                },
              ),

              SizedBox(height: 15),

              TextFormField(
                obscureText: true,   //Hide the value
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.length < 6) {
                    return " Password must be atleast 6 characters";
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),

              //Login Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {  //Condition is to check wheather i am in validation state or not
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Login Successfull"))
                    );
                  }
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
