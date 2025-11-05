import 'package:flutter/material.dart';


void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
 return MaterialApp(
   home: Sandbox(),
 );

  }
}


class  Sandbox extends StatefulWidget {
  const Sandbox({super.key});

  @override
  State<Sandbox> createState() => _State();
}

class _State extends State<Sandbox> {

 double _opacity = 1;
 double _margin = 0;
 double _width = 200;
 Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds:3),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child:Text("animate margin"),
              onPressed:() => setState(() =>
                _margin = 50
              ),
            ),
            ElevatedButton(

                onPressed: ()=>
                setState(()=>
                _color = Colors.purple
                ), child: Text("Animate Color"),),
ElevatedButton(onPressed: ()=>
    setState(()=>
    _width = 400), child:
Text("Animate Width"),),

ElevatedButton(onPressed: ()=>
    setState(()=> _opacity =0), child:
Text("animate opacity"),),

            AnimatedOpacity(
              duration: Duration(seconds: 2),
opacity: _opacity,
              child: Text("hide me",style: TextStyle(color:
              Colors.white),),


            )



          ],
        ),













      ),





    );
  }
}
