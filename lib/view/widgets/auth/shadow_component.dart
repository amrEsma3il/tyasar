import 'package:flutter/material.dart';

class ShadowComponent extends StatelessWidget {
  final double blur, spread,x,y;
 
   const ShadowComponent({
    Key? key,
     this.blur=100,
     this.spread=100,  this.x=3,  this.y=3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration:  BoxDecoration(
      boxShadow: [
        BoxShadow(
          color:const Color.fromARGB(255, 217, 235, 231) ,
          blurRadius:blur, // Set the blur radius
          spreadRadius: spread, // Set the spread radius
          offset:  Offset(x,y), // Set the shadow offset
        ),
      ],
    ),
    child: Container(), // Replace YourWidget with the widget you want to apply the shadow color effect to
    );
  }
}
