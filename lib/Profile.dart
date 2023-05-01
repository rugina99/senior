import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'SOLOCADEMY',
            style: TextStyle(fontFamily: 'Castellar'),
          ),
          backgroundColor: Color(0xff3a89b9),
        ),
        body: Stack(children: [
          Container(
            color: Color(0xffeeeeee),
            height: MediaQuery.of(context).size.height
          ),
             Container(
            color: Color(0xff3a89b9),
            height: 230
          ),
          Positioned(
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
                    width: 70,
                    height: 70,
                    child: FloatingActionButton(
                      backgroundColor: Color(0xffeeeeee),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: const Text("Avatar", style: TextStyle(color:Color(0xff3a89b9),
                              fontSize: 18,
                              fontFamily: 'Poltawski',
                              fontWeight: FontWeight.bold
                            ),),
                            content:
                                const Text("How would you like to change your avatar?", style: TextStyle(color:Color(0xff3a89b9),
                              fontSize: 18,
                              fontFamily: 'Poltawski',
                            ),),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  _getFromCamera();
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(14),
                                  child: const Text("from camera",  style: TextStyle(color:Color(0xff3a89b9),
                              fontSize: 16,
                              fontFamily: 'Poltawski',
                            ),),
                                ),
                              ),
                                 TextButton(
                                onPressed: () {
                                  _getFromGallery();
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(14),
                                  child: const Text("from gallery", style: TextStyle(color:Color(0xff3a89b9),
                              fontSize: 16,
                              fontFamily: 'Poltawski',
                            ),),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      child: Image.asset(
                        "assets/Images/programmer.png",
                        fit: BoxFit.fill,
                        width: 50,
                      ),
                    )),
                SizedBox(
                  height: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("   Rugina Alkassem", style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poltawski',
                              ),),
                               Text(" SOLO11963878", style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poltawski',
                              ),)
                    ],
                  ),
                ),
              ])
            ]),
          )
        ]));
  }

  _getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
    }
  }

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
    }
  }
}
