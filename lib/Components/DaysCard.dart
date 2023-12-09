import 'package:flutter/material.dart';

class DaysCard extends StatelessWidget {
  final String name;
  final String title;
  final Widget page;

 const DaysCard(
      {super.key, required this.name, required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    handleNavi() {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      margin:const EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: Colors.blueAccent
      ),
      child: InkWell(
        onTap: handleNavi,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text(title), Text(name),],
          
        ),
      ),
    );
  }
}
