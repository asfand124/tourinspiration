import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:google_fonts/google_fonts.dart';

class Stylesheet extends StatelessWidget {
  
   Stylesheet({super.key, required this.title, required this.page, required this.image, required this.Description,});
     final String title;
     final String page;
    final String image;
  // final double star;

    final String Description;
    int totalpage =4;
  @override
  Widget build(BuildContext context) {
  
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
            0.3,
            0.9
          ], colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.2),
          ]),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    page.toString(),
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/'+ totalpage.toString(),
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ).animate().fade(duration: 800.milliseconds).slideY(duration: 1000.milliseconds).then(),
                   
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(Icons.star,
                           color: Colors.yellow,
                            size: 15, ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),
                        Text(
                          '0.4',
                          style: TextStyle(color: Colors.white70),
                        ),
                        Text(
                          '/2300)',
                          style: TextStyle(color: Colors.white38, fontSize: 12),
                        ),
                       
                      ].animate().fade(duration: 1000.milliseconds).slideY(duration: 1000.milliseconds).then(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        Description,
                        style: TextStyle(
                            color: Colors.white.withOpacity(.9),
                            fontSize: 15,
                            height: 1.6),
                      ).animate().fade(duration: 1000.milliseconds).slideY(duration: 1000.milliseconds).then(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'READ MORE',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: GoogleFonts.nunito().fontFamily),
                    ).animate().fade(duration: 1010.milliseconds).slideY(duration: 1000.milliseconds).then(),
                    SizedBox(
                      height: 20,
                      child: Row(
                        children: [
                        
                        ],
                      ),

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}