import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

import 'Signin.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup>with TickerProviderStateMixin {
  bool _obscure = true;
  bool _obscure2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xff3a89b9),
        body: AnimatedBackground(
      behaviour: RandomParticleBehaviour(),
      vsync: this,
      child: SingleChildScrollView(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 630,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "SOLOCADEMY",
                          style: TextStyle(
                              fontSize: 42,
                              color: Colors.white,
                              fontFamily: 'Castellar'),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          width: 300,
                          height: 330,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white60.withOpacity(0.40),
                          ),
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3, color: Colors.white70),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3,
                                            color:
                                            Color(0xff0e8388)), //<-- SEE HERE
                                      ),
                                      hintText: "Email",
                                      hintStyle: TextStyle(
                                        color:
                                            Colors.white.withOpacity(0.80),
                                      )),
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  obscureText: _obscure,
                                  decoration: InputDecoration(
                                      suffixIcon: IconButton(onPressed: (){
                                        setState(() {
                                          _obscure = !_obscure;
                                        });
                                      }, icon: Icon(
                                        _obscure ?
                                        Icons.visibility : Icons.visibility_off,
                                        color: Colors.white,
                                      ),),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3,
                                            color:
                                                Colors.white70), //<-- SEE HERE
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3,
                                            color:
                                            Colors.white), //<-- SEE HERE
                                      ),
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                        color:
                                            Colors.white.withOpacity(0.80),
                                      )),
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  obscureText: _obscure2,
                                  decoration: InputDecoration(
                                      suffixIcon: IconButton(onPressed: (){
                                        setState(() {
                                          _obscure2 = !_obscure2;
                                        });
                                      }, icon: Icon(
                                        _obscure2 ?
                                        Icons.visibility : Icons.visibility_off,
                                        color: Colors.white,
                                      ),),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3,
                                            color:
                                            Colors.white70), //<-- SEE HERE
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3,
                                            color:
                                            Colors.white), //<-- SEE HERE
                                      ),
                                      hintText: "Repeat password",
                                      hintStyle: TextStyle(
                                        color:
                                        Colors.white.withOpacity(0.80),
                                      )),
                                ),
                              ),
                              Container(
                                  width: 250,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(80),
                                      color: Colors.white),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Sign up',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff14213d),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ],
                          )),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Signin()),
                      );
                    },
                    child: Text(
                      'Already have an account? Sign in',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
        ) 
    );
  }
}
