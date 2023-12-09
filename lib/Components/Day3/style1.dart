import 'package:flutter/material.dart';
import 'package:flutter_1_of_100/Components/Day3/FadeAnimation.dart';

class style1 extends StatefulWidget {
  const style1({super.key});

  @override
  State<style1> createState() => _style1State();
}

class _style1State extends State<style1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         backgroundColor:   Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0,
          leading: Icon(null),
         
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_basket, color: Colors.grey[800],),
            ),
            
          ],
        ),
      ),
    );
  }
}