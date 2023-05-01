import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Models/Courses.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Models/quotes.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex=0;



  bool expand = true;
  List<String> Topics = [
    'Business',
    'AI',
    'Frontend',
    'Backend',
    'Languages',
    'Data science',
    'Marketing',
    'Management',
    'Graphic design'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 150.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: quotes.map((qs){
                return Builder(
                    builder:(BuildContext context){
                      return QuotesWidget(context,qs);
                    }
                );
              }).toList(),
            ),
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(0,10,0,10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: Topics.map((topic) {
                  return Container(
                    padding: EdgeInsets.fromLTRB(3, 2, 3, 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff3a89b9).withOpacity(1)),
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
                      child: TextButton(
                        child: Text(
                          topic,
                          style: TextStyle(color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poltawski',
                          ),
                        ),
                        onPressed: () {},
                      ));
                }).toList(),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "What are you looking for?",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Poltawski',
                      ),
                      filled: true,
                      fillColor: Color(0xffeeeeee),
                      suffixIcon: Icon(Icons.search,color: Color(0xffebb02d),size: 30,)),
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 370,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                pauseAutoPlayOnTouch: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: courses.map((crs){
                return Builder(
                    builder:(BuildContext context){
                      return CourseWidget(context,crs);
                    }
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget CourseWidget(context, crs) {
    return  GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 25, 0, 15),
        width: 300,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
            borderRadius: BorderRadius.circular(15),
            color: Color(0xffeeeeee),),
       child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Image.asset('${crs.image}'),
           Text(crs.name,
           style: TextStyle(
               fontFamily: 'Poltawski',
               fontSize: 18,
               fontWeight: FontWeight.w600
           ),),
           Text(crs.platform,
             style: TextStyle(
                 fontFamily: 'Poltawski',
                 fontSize: 18,
                 fontWeight: FontWeight.w500
             ),),
           SizedBox(
             height: 10,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Row(
                 children: [
                   Icon(Icons.star, color: Color(0xffebb02d),),
                   Text(" ${crs.rate.toString()}", style: TextStyle(
                     fontFamily: 'Poltawski',
                     fontSize: 16,
                   ),)
                 ],
               ),
               Row(
                 children: [
                   Icon(Icons.access_time_outlined, color: Color(0xffebb02d),),
                   Text(" ${crs.duration}", style: TextStyle(
                     fontFamily: 'Poltawski',
                     fontSize: 16,
                   ),)
                 ],
               ),
               IconButton(icon: Icon(Icons.keyboard_double_arrow_right, color: Color(0xffebb02d),size: 25,), onPressed: (){},)
             ],
           )
         ]
       ),
      ),
    );
  }

  Widget QuotesWidget(context, qs){
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
          children: [
        SvgPicture.asset(
                "assets/Images/Curve Line.svg",
                width: 300,

                fit: BoxFit.fill,
              ),
      Center(child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(qs.quote ,  style: TextStyle(fontFamily: 'Poltawski', fontSize: 18, fontWeight: FontWeight.w500 ),),
      ))


]
      ),
    );
  }
}


