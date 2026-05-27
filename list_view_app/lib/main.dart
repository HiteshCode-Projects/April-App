import 'package:flutter/material.dart';

void main() {
  runApp(ProductListApp());
}

class ProductListApp extends StatelessWidget {
  final List<String> products = [
    "Mobile",
    "Laptop",
    "Headphone",
    "Smart Watch",
    "Tablet",
    "Shoes",
    "Tee Shirt",
    "Gaming",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Product")),

        //Example 1 : Product List
        // body: ListView.builder(
        //   itemCount: products.length,

        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       leading: Icon(Icons.shopping_cart),
        //       title: Text(products[index]),
        //       onTap: () {
        //         print("User Clicked");
        //       },
        //       trailing: Icon(Icons.arrow_forward_ios),
        //     );
        //   },
        // ),

        //Example 2  -Chat List

        //  body: ListView(

        //    children: [

        //       ListTile(
        //         leading: CircleAvatar(child: Icon(Icons.person),),
        //         title: Text("Biswajit"),
        //         subtitle: Text("Hey Error in Flutter "),
        //         trailing: Text("2:30 Pm"),
        //       ),

        //        ListTile(
        //         leading: CircleAvatar(child: Icon(Icons.person),),
        //         title: Text("Krisha"),
        //         subtitle: Text("Submission of Mini Project"),
        //         trailing: Text("2:00 Pm"),
        //       ),

        //        ListTile(
        //         leading: CircleAvatar(child: Icon(Icons.person),),
        //         title: Text("Pawan"),
        //         subtitle: Text("What is The CLass time"),
        //         trailing: Text("6:00 Pm"),
        //       ),

        //    ],

        //  ),

        //Card Widget
        // body: Card(
        //   elevation: 8,

        //   child: Padding(
        //     padding: EdgeInsets.all(16),

        //       child: Column(
        //         children: [
        //           Text("Hello"),
        //           Divider(), //Line Separtor
        //           Text("Good Eve"),
        //         ],
        //       ),

        //   ),
        // ),
        body: Card(
          elevation: 5,

          shadowColor: Colors.yellow,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),

          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue.shade100,
              child: Icon(Icons.person),
            ),
            title: Text("Biswajit"),
            subtitle: Text("Flutter Developer "),
            trailing: Icon(Icons.call),
          ),
        ),
      ),
    );
  }
}
