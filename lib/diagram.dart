import 'package:flutter/material.dart';
 class PlaceHolder extends StatefulWidget {
  const PlaceHolder({super.key});

  @override
  State<PlaceHolder> createState() => _State();
}

class _State extends State<PlaceHolder> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(2),

    child: Text("Hi"),
    );
  }
}
