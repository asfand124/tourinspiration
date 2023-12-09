import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  final int selectedStars; // Number of stars to display

  final List<Map<String, dynamic>> starData = [
    {'star': 7, 'value': 4, 'rating': Icons.star},
    {'star': 4, 'value': 3, 'rating': Icons.star},
    {'star': 3, 'value': 8, 'rating': Icons.star},
  ];

  Stars({required this.selectedStars});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 69,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: selectedStars,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Icon(
                starData[index % starData.length]['rating'],
                color: Colors.yellow,
                size: 15,
              ),
            ],
          );
        },
      ),
    );
  }
}


// Text(
//                           star.toString(),
//                           style: TextStyle(color: Colors.white70),
//                         ),
//                         Text(
//                           value.toString(),
//                           style: TextStyle(color: Colors.white38, fontSize: 12),
//                         ),