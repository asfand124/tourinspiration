import 'package:flutter/material.dart';

class Imagepre extends StatelessWidget {
  final String image;
  const Imagepre({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(),
      body: 
      Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Center(child: Image.asset(image),),
      ),
    );
  }
}