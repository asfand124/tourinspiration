import 'package:flutter/material.dart';
import 'package:flutter_1_of_100/Components/Imagepre.dart';

class PicCard extends StatelessWidget {
  final String url;
  final double height;
  final double width;
  const PicCard({super.key,required this.url,this.height=100, this.width=80});

  @override               
  Widget build(BuildContext context) {
    navigatorHandler(){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Imagepre(image: url)));
    }
    return Container(
      margin: EdgeInsets.all(4),
    child: InkWell(
      onTap: navigatorHandler,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(url),fit: BoxFit.cover),
        ),
      ),
    ),
    );
  }
}