import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutPage extends StatelessWidget{
  AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(title: Text("About Page"),),
body: Center(
  child: ElevatedButton(onPressed: ()=> context.pop(), child:

  Text("Back to Home"),
  ),
),
   );






    }
}