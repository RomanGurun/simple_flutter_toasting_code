import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
  // runApp( ToastDemoButton());

}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.green,
//           title: const Text("Flutter is Fun !"),
//         ),
//
//         //
//         // body: Center(
//         //   child: Container(
//         //     margin: const EdgeInsets.all(30), // space outside the container
//         //     padding: const EdgeInsets.all(20), // space inside the container
//         //     decoration: BoxDecoration(
//         //       color: Colors.white,
//         //       borderRadius: BorderRadius.circular(15),
//         //       boxShadow: const [
//         //         BoxShadow(
//         //           color: Colors.black26,
//         //           blurRadius: 6,
//         //           offset: Offset(2, 4),
//         //         ),
//         //       ],
//         //     ),
//         //     child: const Text(
//         //       "Hello, I have margin and padding!",
//         //       style: TextStyle(fontSize: 18, color: Colors.black87),
//         //       textAlign: TextAlign.center,
//         //     ),
//         //
//         //
//         //
//         //   ),
//         //
//         // ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                 child: Text("Hello I am inside a Container"),
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius: BorderRadius.circular(20),
//                   boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
//                 ),
//                 padding: EdgeInsets.all(20),
//               ),
//               SizedBox(
//                 height: 100,
//                 width: 100,
//                 child: Text("Hi I am inside a SizedBox"),
//               ),
//
//               Container(
//                 child: Text("I am a second Container"),
//                 padding: EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                   borderRadius: BorderRadius.circular(20),
//                   boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 40)],
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   Fluttertoast.showToast(
//                     msg: "You Clicked me !",
//                     toastLength: Toast.LENGTH_LONG,
//                     gravity: ToastGravity.BOTTOM,
//                     backgroundColor: Colors.black87,
//                     textColor: Colors.white,
//                     fontSize: 16.0,
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue,
//                   foregroundColor: Colors.white,
//                   elevation: 5,
//                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//
//                 child: Text(
//                   "Click Me",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ),
//
//               ElevatedButton(
//                 onPressed: () {
//                   Fluttertoast.showToast(
//                     msg: "You Clicked me !",
//                     toastLength: Toast.LENGTH_LONG,
//                     gravity: ToastGravity.BOTTOM,
//                     backgroundColor: Colors.black87, // make visible
//                     textColor: Colors.white,
//                     fontSize: 16.0,
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue,
//                   foregroundColor: Colors.white,
//                   elevation: 5,
//                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//                 child: Text(
//                   "Click Me",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ),
//
//
//
//               Icon(Icons.ice_skating),
//               Icon(Icons.ice_skating),
//               Icon(Icons.ice_skating),
//               Icon(Icons.ice_skating),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
Widget build(BuildContext context){
  return MaterialApp(
    home:Scaffold(
      appBar: AppBar(title: Text("FToast Demo"),),
body: Center(child:
  ToastDemoButton(),),
    )
  );
}

}


class ToastDemoButton extends StatefulWidget {
  const ToastDemoButton({super.key});

  @override
  _ToastDemoButtonState createState() => _ToastDemoButtonState();
}

class _ToastDemoButtonState extends State<ToastDemoButton> {
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  void showCustomToast() {
    Widget toast = Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.blueGrey,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check, color: Colors.white),
          SizedBox(width: 12),
          Text("You Clicked me !", style: TextStyle(color: Colors.white)),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: showCustomToast,
      child: Text("Click Me"),
    );
  }
}
