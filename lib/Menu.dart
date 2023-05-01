import 'package:flutter/material.dart';
import 'Profile.dart';
class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          
                  AspectRatio(
                    aspectRatio: 3/2,
                    child: Container(
                              margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                     
                            
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
                                color: Colors.pink
                              ),
                              ),
                  ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 10, 15, 15),
            height: MediaQuery.of(context).size.height * 0.38,
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
              color: Color(0xffeeeeee),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(children: [
                  Image.asset("assets/Images/programmer.png", width: 30,),
                  TextButton(
                    child: Text(
                      " Profile",
                      style: TextStyle(
                        fontFamily: 'Poltawski',
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                    },
                  )
                ]),
                Row(children: [
                  Image.asset("assets/Images/badge.png", width: 30,),
                  TextButton(
                    child: Text(
                      " Achievements",
                      style: TextStyle(
                        fontFamily: 'Poltawski',
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {},
                  )
                ]),
                Row(children: [
                  Image.asset("assets/Images/information.png", width: 30,),
                  TextButton(
                    child: Text(
                      " About Us",
                      style: TextStyle(
                        fontFamily: 'Poltawski',
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {},
                  )
                ]),
                Row(children: [
                  Image.asset("assets/Images/logout.png", width: 30,),
                  TextButton(
                    child: Text(
                      " Log Out",
                      style: TextStyle(
                        fontFamily: 'Poltawski',
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {},
                  )
                ])

              ],
            ),
          ),
   
        ],
      ),
    ));
  }
}
