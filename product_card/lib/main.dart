import 'package:flutter/material.dart';

void main() {
  runApp(ProductApp());
}

class ProductApp extends StatelessWidget {
  //TextEditingController()
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Icon(Icons.person_2_sharp)),

        // body: Center(
        //   child: Container(
        //     width: 300,

        //     padding: EdgeInsets.all(16),

        //     decoration: BoxDecoration(
        //       border: Border.all(color: Colors.red),
        //       borderRadius: BorderRadius.circular(12),
        //     ),

        //     child: Column(
        //       mainAxisSize: MainAxisSize.min,

        //       children: [
        //         Image.network(
        //           "https://images.pexels.com/photos/20385205/pexels-photo-20385205.jpeg",
        //           height: 150,
        //         ),
        //         SizedBox(height: 10),

        //         Text(
        //           "Heaphone",
        //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        //         ),

        //         SizedBox(height: 10),

        //         Text("Rs 2,499.00"),

        //         SizedBox(height: 10),

        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,

        //           children: [
        //             Icon(Icons.shopping_cart_checkout_rounded),
        //             SizedBox(width: 8),
        //             TextButton(
        //               onPressed: () {
        //                 print("Product Added");
        //               },
        //               child: Text("Add To Cart"),
        //             ),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        // ),

        
        //Example 2 - Input Widget
        body: Padding(padding: EdgeInsets.all(15), 
        
         child: Column(
            
             children: [

                
                TextField( 
                decoration: InputDecoration(
                 labelText: "Enter Your Name",
                 border: OutlineInputBorder(),
                ),

                ),
                  
                SizedBox(height: 12),  
              
                 TextField( 
                 obscureText: true,  
                 decoration: InputDecoration(
                 labelText: "Enter Your Password",
                 border: OutlineInputBorder(),
                ),

                ),

                SizedBox(height: 12),  

                ElevatedButton(onPressed: (){}, child: Text("Submit"))

             ],

         ),
        
        
        ),

      ),
    );
  }
}
