// ===============About Me UI ============================

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(debugShowCheckedModeBanner: false, home: ProfilePage());
//   }
// }
//
// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       appBar: AppBar(
//         title: Text("My Profile"),
//         backgroundColor: Colors.blueAccent,
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             CircleAvatar(
//               radius: 60,
//               backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
//             ),
//
//             SizedBox(height: 20),
//             Text(
//               "Roman Gurung",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
//             ),
//
//             Text(
//               "Flutter Devloper",
//               style: TextStyle(fontSize: 16, color: Colors.black),
//             ),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.email, color: Colors.blueAccent),
//                 SizedBox(width: 8),
//                 Text("romangrg23@gmail.com"),
//               ],
//             ),
//             SizedBox(height: 20),
//             Container(
//               padding: EdgeInsets.all(15),
//               margin: EdgeInsets.symmetric(vertical: 10),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.shade300,
//                     blurRadius: 5,
//                     spreadRadius: 2,
//                   ),
//                 ],
//               ),
//
//               child: Column(
//                 children: [
//                   Text(
//                     "About Me",
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     "I am pasionate on a flutter devloper",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 23,
//                       color: Colors.black,
//                     ),
//
//                     textAlign: TextAlign.center,
//                   ),
//
//                   SizedBox(height: 10),
//
//                   ElevatedButton.icon(
//                     onPressed: () {},
//                     icon: Icon(Icons.phone),
//                     label: Text("Contact Me"),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blueAccent,
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 20,
//                         vertical: 12,
//                       ),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ===============About Me UI ============================


// ===============Login Screen UI ============================
// import 'package:flutter/material.dart';
// void main(){
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget{
//   MyApp({super.key});
// @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//  return MaterialApp(
//    debugShowCheckedModeBanner: false,
//    home: LoginScreen(),
//  );
//   }
//
//
// }
// class LoginScreen extends StatelessWidget{
//   LoginScreen({super.key});
//
//   // Use ValueNotifier to track password visibility
//   final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);
//
// @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
// return Scaffold(
//   backgroundColor: Colors.white,
//
//   appBar: AppBar(
//     title: Text("LoginUi"),
//     backgroundColor: Colors.black,
//
//   ),
//   body: Center(
// child: SingleChildScrollView(
//   padding: EdgeInsets.all(25),
//   child:Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Icon(Icons.lock_outline,
//       size: 80,
//         color: Colors.blueAccent,
//       ),
//       SizedBox(height: 20,),
//       Text("Welcome Back !",
//       style: TextStyle(
//         fontSize: 16,
//         color: Colors.grey[600],
//       ),
//
//       ),
//       SizedBox(height: 30,),
//
//       Text("Login to Continue",
//       style: TextStyle(
//         fontSize: 16,
//         color: Colors.grey[600],
//       ),),
//       SizedBox(height: 30,),
//       TextField(
//         decoration: InputDecoration(
//           labelText: "Email",
//           prefixIcon: Icon(Icons.email_outlined),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(12)
//           ),
//
//         ),
//       ),
//       SizedBox(height: 30,),
// ValueListenableBuilder<bool>(
//   valueListenable: _obscurePassword,
// builder: (context,value,child){
//     return TextField(
//       obscureText: value,
//       decoration: InputDecoration(
//         labelText: "Password",
//         prefixIcon: Icon(Icons.lock_outline),
//         suffixIcon: IconButton(
//
//           icon: Icon(
//             value ? Icons.visibility_off : Icons.visibility
//           ),
//           onPressed: (){
//             _obscurePassword.value = !_obscurePassword.value;
//
//           },
//         ),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(12),
//           )
//
//       ),
//     );
// }
//
//   ),
//
//       SizedBox(height: 10),
// Align(
//   alignment: Alignment.centerRight,
//   child: TextButton(onPressed: (){}, child:Text("Forgot Password?"),),
// ),
//       SizedBox(height: 20,),
//       ElevatedButton(onPressed: (){
//   },
//           style:ElevatedButton.styleFrom(
//             minimumSize: Size(double.infinity,50),
//             backgroundColor: Colors.blueAccent,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//
//             ),
//           ),
//           child: Text("Login",
//           style: TextStyle(fontSize: 18),),
//
//   ),
//
//
//       SizedBox(height: 30),
//
//       // Sign Up text
//       Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text("Don’t have an account? "),
//           GestureDetector(
//             onTap: () {},
//             child: Text(
//               "Sign Up",
//               style: TextStyle(
//                 color: Colors.blueAccent,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ],
//       ),
//
//
//     ],
//
//
//
//
//
//
//   ),
// ),
//
//
//
//   ),
//
// );
//
//
//
//
//
//
//
//
//   }
//
//
//
// }
//
//






// ===============Login Screen UI ============================


// ===============Product Card Layout UI ============================
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
 return MaterialApp(
   debugShowCheckedModeBanner: false,
   home:ProductListPage(),

 );


  }


}
class ProductListPage extends StatelessWidget{
  const ProductListPage({super.key});
  final List<Map<String,dynamic>> products = const[
    {
      "name":"Wireless Headphones",
      "price":59.99,
      "image":"https://i.imgur.com/X4vZgU2.png",

    },{
    "name":"Smart Watch",
      "price":89.99,
      "image":"https://i.imgur.com/lKJiT77.png",

    },
    {
      "name": "Sneakers",
      "price": 120.0,
      "image": "https://i.imgur.com/4LGAZ8t.png",
    },
    {
      "name": "Backpack",
      "price": 49.50,
      "image": "https://i.imgur.com/MJAkxbh.png",
    },

    {
      "name":"Smart Watch",
      "price":89.99,
      "image":"https://i.imgur.com/lKJiT77.png",

    },
    {
      "name":"Smart Watch",
      "price":89.99,
      "image":"https://i.imgur.com/lKJiT77.png",

    },
    {
      "name":"Smart Watch",
      "price":89.99,
      "image":"https://i.imgur.com/lKJiT77.png",

    },
    {
      "name":"Smart Watch",
      "price":89.99,
      "image":"https://i.imgur.com/lKJiT77.png",

    },








  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop Product"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,

      ),
      backgroundColor: Colors.grey[100],
      body: Padding(padding: EdgeInsets.all(10),
      child: GridView.builder(
      itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context,index){
        final product = products[index];
        return ProductCard(
          name:product["name"],
          price:product["price"],
          imageUrl:product["image"],

        );
          }


      ),



      ),

    );

  }

}

class ProductCard extends StatelessWidget{
  final String name;
  final double price;
  final String imageUrl;
  ProductCard(
  {
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl
}
      );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.shade300,
        blurRadius: 6,
        offset: Offset(2, 3),

      )
    ],



  ),
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
ClipRRect(
  borderRadius: BorderRadius.vertical(top:Radius.circular(16)),
child: Image.network(
  imageUrl,
  height: 120,
  width: double.infinity,
  fit:BoxFit.cover,
),

),
   Padding(
padding: EdgeInsets.all(10),
child: Column(
  children: [
    Text(
      name,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
    SizedBox(height: 6,),
    Text("\$${price.toStringAsFixed(2)}",
    style: TextStyle(
      fontSize: 15,
      color:Colors.blueAccent,
      fontWeight: FontWeight.bold,
    ),
    
    
    ),
    SizedBox(height: 10,),
    ElevatedButton(onPressed: (){

    }
      
    , 
   style: ElevatedButton.styleFrom(
     backgroundColor: Colors.blueAccent,
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(8),
     )
   ),
      child: Text("Add to Cart"),

    ),
    
    
    
  ],
),     
   )     
      ],
    )







);







  }





}




// ===============Product Card Layout UI ============================
