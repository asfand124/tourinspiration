import 'package:flutter/material.dart';
import 'package:flutter_1_of_100/Components/Day3/FadeAnimation.dart';

class Style extends StatefulWidget {
  const Style({super.key});

  @override
  State<Style> createState() => _StyleState();
}

class _StyleState extends State<Style> {
  List<String> categories = ["Pizza", "Burgers", "Kebab", "Desert", "Salad"];
  List<dynamic> foods = [{
    "image": "asserts/Day3/one.jpg",
    "isFavorite": false,
  }, 
  {
    "image": "asserts/Day3/two.jpg",
    "isFavorite": false,
  },
  {
    "image": "asserts/Day3/three.jpg",
    "isFavorite": false,
  }
  ];

  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        
        leading: Icon(null),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_basket, color: Colors.grey[800],),
          ),
          
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                   Text('Food Delivery', style: TextStyle(color: Colors.grey[80], fontWeight: FontWeight.bold, fontSize: 30),),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                         makeCategory(title: 'Pizaa'),
                         makeCategory(title: 'Burgers'),
                        makeCategory(title: 'Kebab'),
                         makeCategory(title: 'Desert'),
                         makeCategory(title: 'Salad'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            FadeAnimation(1, Padding(
              padding: EdgeInsets.all(20),
              child: Text('Free Delivery', style: TextStyle(color: Colors.grey[700], fontSize: 20, fontWeight: FontWeight.bold),),
            )),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    makeItem(image: 'asserts/Day3/one.jpg'),
                    makeItem(image: 'asserts/Day3/two.jpg'),
                     makeItem(image: 'asserts/Day3/three.jpg')
                  ],
                ),
              ),
            ),
           
          ],
        ),
      ),
    );
  }

  Widget makeCategory({title, index}) {
  int selectedCategory = 0;
    
    return GestureDetector(
      
        onTap: () {
          setState(() {
            selectedCategory = index;

          });
        },
        child: AnimatedContainer(
          width: 120,
          duration: Duration(milliseconds: 300),
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: selectedCategory == index ? Colors.yellow[700] : Colors.grey[300],
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(title, style: TextStyle(
              color: selectedCategory == index ? Colors.black : Colors.grey[700], 
              fontSize: 16, 
              fontWeight: FontWeight.w600),),
          ),
        ),
    );
  }

  Widget  makeItem({image, isFavorite, index}) {

    return AspectRatio(
      aspectRatio: 1 / 1.5,
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                stops: [.2, .9],
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.3),
                ]
              )
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        foods[index]["isFavorite"] = !foods[index]["isFavorite"];
                      });
                    },
                    child: Align(
                      alignment: Alignment.topRight,
                      child: AnimatedContainer( 
                        duration: Duration(milliseconds: 300),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 1.5, color:const Color.fromARGB(255, 77, 62, 61) ),
                        ),
                      child:  Icon(Icons.favorite, color: Colors.red) ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("\$ 15.00", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Vegetarian Pizza", style: TextStyle(color: Colors.white, fontSize: 20),)
                    ],
                  )
                ],
              ),
            // ),
          ),
        ),
      ),
      ),
    );
  }
 }


