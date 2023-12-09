import 'package:flutter/material.dart';
import 'package:flutter_1_of_100/Components/Day2/Style.dart';
import 'package:google_fonts/google_fonts.dart';

class Day2 extends StatefulWidget {
  const Day2({super.key});

  @override
  State<Day2> createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  PageController _pageController = PageController();
  

  void _onScroll() {
    print('scroll');
  }

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,

    )..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
        
            Stylesheet(title: 'Yosemite National Park', page: '1', image: 'asserts/Day1/image1.jpg', 
            Description: 'Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.'),
               Stylesheet(title: 'Yosemite National Park', page: '2', image: 'asserts/Day1/image2.jpg', 
            Description: 'Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.'),
               Stylesheet(title: 'Yosemite National Park', page: '3', image: 'asserts/Day1/image3.jpg', 
            Description: 'Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.'),
               Stylesheet(title: 'Yosemite National Park', page: '4', image: 'asserts/Day1/image4.jpg', 
            Description: 'Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.')

                  
             
             
        ],
      ),
    );
  }


}
