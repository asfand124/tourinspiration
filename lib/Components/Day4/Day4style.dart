import 'package:flutter/material.dart';

class Day4style extends StatelessWidget {
  const Day4style({super.key,required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5/1,
      child:  Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3)
              ],
            ),
          ),
             child: Align(
            child: Icon(Icons.play_arrow, color: Colors.white, size: 70,),
        ),
      ),
      
      ),
      );
  }
}