import 'package:flutter/material.dart';

import 'package:flutter_1_of_100/Components/Day3/style.dart';
import 'package:flutter_animate/flutter_animate.dart';




class Day3 extends StatefulWidget {
  const Day3({super.key});

  @override
  State<Day3> createState() => _Day3State();
}

class _Day3State extends State<Day3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('asserts/Day3/start.jpg'),                                    
          fit: BoxFit.cover),
        ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.2),
              ]
              ),
        ),
        child: Padding(padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget> [
            Text('Taking Order For Delivery',style: TextStyle(fontSize: 50,fontWeight:FontWeight.bold,color: Colors.white),),
              SizedBox(
                height: 20,
              ),
              Text('See resturants near by \n nadding location',style: TextStyle(color: Colors.white,height: 1.4,fontSize: 18),),
              SizedBox(height: 100,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    
            colors: [
            
              Colors.yellow,
              Colors.orange,
              ]
              ),
                ),
                child: MaterialButton(
                        onPressed:(){
                          
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Style()));
                        },
                        minWidth: double.infinity,
                        child: Text("Start", style: TextStyle(color: Colors.white),),
                      ),
              ),
              SizedBox(height: 30,),
              Align(
                child: Text('Now Deliver To Your Door 24/7',style: TextStyle(color: Colors.white70,fontSize: 15),
                ).animate().fade(duration: 8010.milliseconds).slideY(duration: 1000.milliseconds,).then(),
              ),
              SizedBox(height: 30,),

          ],
        ),
        
        ),
      ),
      ),
        
      
    );
  }
}