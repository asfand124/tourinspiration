import 'package:flutter/material.dart';
import 'package:flutter_1_of_100/Components/DaysCard.dart';
import 'package:flutter_1_of_100/Screens/Day1.dart';
import 'package:flutter_1_of_100/Screens/Day2.dart';
import 'package:flutter_1_of_100/Screens/Day3.dart';
import 'package:flutter_1_of_100/Screens/Day4.dart';
import 'package:flutter_1_of_100/Screens/Test.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
        fontFamily: 'nunito',
        
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
          children: [
           DaysCard(name: 'MOVE TO PRESS', title: 'DAY 1', page: Day1()),
           DaysCard(name: 'MOVE TO PRESS', title: 'DAY 2', page: Day2()),
           DaysCard(name: 'MOVE TO PRESS', title: 'DAY 3', page: Day3()),
           DaysCard(name: 'MOVE TO PRESS', title: 'TEST FILE', page: Test()),
           DaysCard(name: 'MOVE TO PRESS', title: 'DAY 4 ', page: Day4()),
           
        
         
          ],
          ),
        )
      ),
    );
  }
}
