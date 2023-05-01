import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.asset("assets/Images/crsImg1.jpg"
         , fit: BoxFit.cover),
            Positioned(
              child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient (
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.grey.shade50.withOpacity(1),
                    Colors.grey.shade50.withOpacity(1),
                    Colors.grey.shade50.withOpacity(1),
                    Colors.grey.shade50.withOpacity(1),
                    Colors.grey.shade50.withOpacity(0),
                    Colors.grey.shade50.withOpacity(0),
                    Colors.grey.shade50.withOpacity(0),
                    Colors.grey.shade50.withOpacity(0),
                  ]
                ),
              ),
            ),
            ),
               Positioned(
                 child:CarouselSlider(
                   options: CarouselOptions(height: 400.0),
                   items: [1,2,3,4,5].map((i) {
                     return Builder(
                       builder: (BuildContext context) {
                         return Container(
                             width: MediaQuery.of(context).size.width,
                             margin: EdgeInsets.symmetric(horizontal: 5.0),
                             decoration: BoxDecoration(
                                 color: Colors.pink
                             ),
                             child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                         );
                       },
                     );
                   }).toList(),
                 ),
               )
          ],
    ) ,

        ),
      );
  }
}
