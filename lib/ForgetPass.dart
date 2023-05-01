import 'package:flutter/material.dart';
import 'package:test_1/Signup.dart';


class ForgetPass extends StatefulWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  _ForgetPassState createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  get navigationKey => null;
  String oldPass='';
  String newPass='';
  String reNewPass='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff14213d),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 400,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              color: Color(0xff4b4b4b),
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                    color: Colors.white10,
                    offset: Offset(4, 8),
                    blurRadius: 9,
                    spreadRadius: 0),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("type your old and new passwords to change it.",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poltawski',
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                TextField(
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poltawski',
                    color: Colors.white,
                  ),
                  onChanged: (String str) {
                    setState(() {
                      oldPass = str;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Old password',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xffecf3f4), width: 2.0)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xffecf3f4), width: 3.0)),
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poltawski',
                      fontSize: 18.0,
                    ),
                  ),
                ),
                TextField(
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poltawski',
                    color: Colors.white,
                  ),
                  onChanged: (String str) {
                    setState(() {
                      newPass = str;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'New password',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xffecf3f4), width: 2.0)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xffecf3f4), width: 3.0)),
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poltawski',
                      fontSize: 18.0,
                    ),
                  ),
                ),
                TextField(
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poltawski',
                    color: Colors.white,
                  ),
                  onChanged: (String str) {
                    setState(() {
                      reNewPass = str;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Repeat new password',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xffecf3f4), width: 2.0)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xffecf3f4), width: 3.0)),
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poltawski',
                      fontSize: 18.0,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  width: 310,
                  height: 45,
                  child: ElevatedButton(
                    child: Text(
                      "Change password",
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Poltawski',
                        color: Colors.white,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Color(0xff07D2B1)),
                      shadowColor:
                      MaterialStateProperty.all(Colors.transparent),
                      shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: BorderSide(
                                color: Color(0xffecf3f4), width: 0)),
                      ),
                    ),
                    onPressed: () {
                   

                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  } }