import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_1/ForgetPass.dart';
import 'package:test_1/HomePage.dart';
import 'package:animated_background/animated_background.dart';
import 'Abstract.dart';
import 'Signup.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> with TickerProviderStateMixin {
  bool expand = true;
  bool _obscure = true;
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
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 42,
                            color: Colors.white,
                            fontFamily: 'Castellar'),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            expand = !expand;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          padding: expand == true
                              ? EdgeInsets.all(0)
                              : EdgeInsets.all(20),
                          width: expand == true ? 250 : 300,
                          height: expand == true ? 50 : 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: expand == true
                                ? Colors.white
                                : Colors.white60.withOpacity(0.40),
                          ),
                          child: expand
                              ? Center(
                                  child: Text(
                                    'log in with your account',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xff14213d),
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              : Center(
                                  child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 3,
                                                  color: Colors.white70),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 3,
                                                  color: Color(
                                                      0xff0e8388)), //<-- SEE HERE
                                            ),
                                            hintText: "Email",
                                            hintStyle: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.80),
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextField(
                                        obscureText: _obscure,
                                        decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                _obscure = !_obscure;
                                              });
                                            },
                                            icon: Icon(
                                              _obscure
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              color: Colors.white,
                                            ),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 3,
                                                color: Colors
                                                    .white70), //<-- SEE HERE
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 3,
                                                color: Color(
                                                    0xff0e8388)), //<-- SEE HERE
                                          ),
                                          hintText: "Password",
                                          hintStyle: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.80),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                        width: 250,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(80),
                                            color: Colors.white),
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Abstract()),
                                            );
                                          },
                                          child: Text(
                                            'Sign in',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xff14213d),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )),
                                  ],
                                )),
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  child: Text(
                    'Don\'t have an account? Sign Up',
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
      )),
    )
    );
  }
}
