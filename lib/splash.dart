import 'dart:async';

import 'package:flutter/material.dart';

import 'main.dart';
import 'size_config.dart';


class SpashScreen extends StatefulWidget {
  @override
  _SpashScreenState createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> with SingleTickerProviderStateMixin{


  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }
  String user;
  AnimationController controller;


  @override
  void initState() {
    super.initState();
    startTime();

    controller =
        AnimationController(duration: Duration(seconds: 4), vsync: this);
  }
  void navigationPage() async {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyApp()));

  }



  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    controller.forward(from: 0.0);
    return SafeArea(
        child: Scaffold(
            body:Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/7.jpg'),fit: BoxFit.fitHeight,colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4),
                      BlendMode.darken))
              ),
              child:Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 150,
                        padding: EdgeInsets.only(left: 10,right: 10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 4.0,
                                color: Colors.white,
                                style: BorderStyle.solid),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1.0,
                                  color: Colors.black12,
                                  spreadRadius: 2.0)
                            ],
                            image: DecorationImage(image: AssetImage('logo.jpg'),fit: BoxFit.fitWidth)
                        ),
                      ),
                      Center(child:Container(
                        margin: EdgeInsets.only(left: 20,right: 20,bottom: 5,top: 10),
                        child: Text('E-MALL',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold,letterSpacing:2,shadows: [
                          Shadow(color: Colors.black45,blurRadius: 2,)
                        ]),),
                      ),
                      )


                    ],
                  )
              ),
            )
        )
    );
  }
}
