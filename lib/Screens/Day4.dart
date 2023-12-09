import 'package:flutter/material.dart';
import 'package:flutter_1_of_100/Components/Day4/Day4style.dart';

class Day4 extends StatefulWidget {
  const Day4({super.key});

  @override
  State<Day4> createState() => _Day4State();
}

class _Day4State extends State<Day4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                backgroundColor: Colors.black,

      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('asserts/Day4/emma.jpg'),
                      fit: BoxFit.cover),
                    
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                           colors: [
                            Colors.black,
                            Colors.black.withOpacity(.3)
                           ],
                          )
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Emma Watson", style: 
                              TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
                            ),
                              SizedBox(height: 20,),
                            Row(
                              children:[
                               
                                  Text("60 Videos", style: TextStyle(color: Colors.grey, fontSize: 16),),
                                       SizedBox(width: 50,),
                                 Text("240K Subscribers", style: 
                                  TextStyle(color: Colors.grey, fontSize: 16)
                                ,),
                              ],),
                                
                          ],
                        ),
                        ),
                    ),
                  ),
                ),
              ),
              SliverList(delegate: SliverChildListDelegate(
             [
               Padding(padding: EdgeInsets.all(20),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text("Emma Charlotte Duerre Watson was born in Paris, France, to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where she attended the Dragon School.", 
                        style: TextStyle(color: Colors.grey, height: 1.4),),
                        SizedBox(height: 40,),
                    
                          Text("Born", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        
                          Text("April, 15th 1990, Paris, France", style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 20,),
                         
                          Text("Nationality", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        
                          Text("British", style: TextStyle(color: Colors.grey),),
                        
                        SizedBox(height: 20,),
                  
                          Text("Videos", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                        
                        SizedBox(height: 20,),
                         Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                           Day4style(image: 'asserts/Day4/emma-1.jpg'),
                           Day4style(image: 'asserts/Day4/emma-2.jpg'),
                           Day4style(image: 'asserts/Day4/emma-3.jpg'),

                             
                ],

               ),
               ),
               SizedBox(height: 120,),
                 Positioned.fill(
            bottom: 50,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child:
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow[700]
                    ),
                    child: Align(child: Text("Follow", style: TextStyle(color: Colors.white),)),
                  ),
                ),
              ),
            ),
          
        
             ],
              ),
              ),
            ],
          ),

        

          ),
            ],
          ),
        ],
      ), 
    );
  }
}