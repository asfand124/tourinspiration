import 'package:flutter/material.dart';
import 'package:flutter_1_of_100/Components/Day2/Stars.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 70,
          width: 200,
          child: Stars(selectedStars: 5),
        ),
         Container(
          height: 70,
          width: 200,
          child: Stars(selectedStars: 1),
        ), Container(
          height: 70,
          width: 200,
          child: Stars(selectedStars: 9),
        ), Container(
          height: 70,
          width: 200,
          child: Stars(selectedStars: 4),
        ),
      ],
    );
  }
}