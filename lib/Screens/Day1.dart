import 'package:flutter/material.dart';
import 'package:flutter_1_of_100/Components/PicCard.dart';



class Day1 extends StatelessWidget {
   Day1();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left:10,right:10,bottom:5,top: 5),
            child: Column(
              children: [
                Row(children: [ Icon(Icons.menu),
                    SizedBox(height: 80,),],),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'search what you lookin for',
                        
                        prefix: Icon(Icons.search),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
                    ),
                SizedBox(height: 20,),
                  
                Row(
                  children: [
                    Text('Find your',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500,color: Colors.grey),),
                  ],
                ),
                SizedBox(height: 10,),
              
                Row(
                  children: [
                    Text('Inspiration',style: TextStyle(fontSize: 37,fontWeight: FontWeight.w700),),
                  ],
                ),
                SizedBox(height: 10,),
               Container(
                width: 400,
                height: 150,
                 child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [

                    PicCard(url: 'asserts/Day1/image1.jpg', height: 100, width: 100),
                    PicCard(url: 'asserts/Day1/image2.jpg', height: 100, width: 100),
                    PicCard(url: 'asserts/Day1/image3.jpg', height: 100, width: 100),
                    PicCard(url: 'asserts/Day1/image4.jpg', height: 100, width: 100),
                    
                    PicCard(url: 'asserts/Day1/image1.jpg', height: 100, width: 100),
                    PicCard(url: 'asserts/Day1/image2.jpg', height: 100, width: 100),
                    PicCard(url: 'asserts/Day1/image3.jpg', height: 100, width: 100),
                    PicCard(url: 'asserts/Day1/image4.jpg', height: 100, width: 100),
                  ],
                 ),
               ),
                SizedBox(height: 20,),

               Container(
                width: 400,
                height: 150,
                 child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [

                     PicCard(url: 'asserts/Day1/image1.jpg', height: 100, width:MediaQuery.of(context).size.width-50),
                    PicCard(url: 'asserts/Day1/image2.jpg', height: 100, width: MediaQuery.of(context).size.width-50),
                    PicCard(url: 'asserts/Day1/image3.jpg', height: 100, width: MediaQuery.of(context).size.width-50),
                    PicCard(url: 'asserts/Day1/image4.jpg', height: 100, width: MediaQuery.of(context).size.width-50),
                      PicCard(url: 'asserts/Day1/image1.jpg', height: 100, width:MediaQuery.of(context).size.width-50),
                    PicCard(url: 'asserts/Day1/image2.jpg', height: 100, width: MediaQuery.of(context).size.width-50),
                    PicCard(url: 'asserts/Day1/image3.jpg', height: 100, width: MediaQuery.of(context).size.width-50),
                    PicCard(url: 'asserts/Day1/image4.jpg', height: 100, width: MediaQuery.of(context).size.width-50),
               
                  ],
                 ),
               ),
                
                   
               SizedBox(height: 30,),
               ElevatedButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Day1()));

               },
                child: Text('DAY 2',style: TextStyle(color: Colors.white),)),
             
                  
              ],
            ),
          ),
        ),
      ),
    );
  }
}