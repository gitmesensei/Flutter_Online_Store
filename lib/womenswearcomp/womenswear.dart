import 'package:flutter/material.dart';
import 'package:onlinestore/womenswearcomp/productdescpagewomen.dart';

import '../cartpage.dart';
import '../size_config.dart';


class WomensWear extends StatefulWidget {
  @override
  _WomensWearState createState() => _WomensWearState();
}

class _WomensWearState extends State<WomensWear> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.black,
      child: SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[

                  Stack(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 200,
                            child: InkWell(
                              //      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage())),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 0, right: 0, top: 0),
                                  child: Container(
                                      height: 200.0,
                                      width: SizeConfig.safeBlockHorizontal *
                                          100,
                                      color: Colors.amberAccent,
                                      child: Stack(
                                        children: <Widget>[
                                          Center(
                                            child: Text(
                                              'WomensWear',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 40,
                                                  letterSpacing: 10),
                                            ),
                                          ),
                                          Center(
                                            child: Text(
                                              '\n\n\n\nNew Collection\n    OUT NOW!',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  letterSpacing: 1),
                                            ),
                                          ),
                                        ],
                                      )),
                                )),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 15.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_back),
                                  onPressed: () => Navigator.pop(context),
                                  color: Colors.white,
                                  iconSize: 30.0,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                      icon: Icon(Icons.search),
                                      onPressed: () {},
                                      color: Colors.white,
                                      iconSize: 30.0,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                      icon: Icon(Icons.shopping_cart),
                                      onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage())),
                                      color: Colors.white,
                                      iconSize: 30.0,
                                    ),
                                  ),
                                ],)

                            ],
                          ),
                          SizedBox(height: 10.0)
                        ],
                      )
                    ],
                  ),


                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        InkWell(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageWo())),
                          child: Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: SizeConfig.safeBlockHorizontal*45,
                              height: 200,
                              padding: EdgeInsets.only(top: 160,),
                              child: Center( child:Text('Sports Jacket \n      Rs.299',style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  letterSpacing: 1)),
                              ),
                            ),
                            Container(
                              width: SizeConfig.safeBlockHorizontal*45,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/women.jpg'), fit: BoxFit.cover)),
                            ),

                          ],
                        ),
                        ),
                        InkWell(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageWo())),
                          child: Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: SizeConfig.safeBlockHorizontal*45,
                              height: 200,
                              padding: EdgeInsets.only(top: 160,),
                              child: Center( child:Text('Gym Top \n Rs.699',style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  letterSpacing: 1)),
                              ),
                            ),
                            Container(
                              width: SizeConfig.safeBlockHorizontal*45,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/women2.jpg'), fit: BoxFit.cover)),
                            ),

                          ],
                        ),

                        ),
                      ],
                    ),
                  ),


                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        InkWell(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageWo())),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                color: Colors.white,
                                width: SizeConfig.safeBlockHorizontal*45,
                                height: 200,
                                padding: EdgeInsets.only(top: 160,),
                                child: Center( child:Text('Sports Jacket \n      Rs.299',style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    letterSpacing: 1)),
                                ),
                              ),
                              Container(
                                width: SizeConfig.safeBlockHorizontal*45,
                                height: 150.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/women.jpg'), fit: BoxFit.cover)),
                              ),

                            ],
                          ),
                        ),
                        InkWell(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageWo())),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                color: Colors.white,
                                width: SizeConfig.safeBlockHorizontal*45,
                                height: 200,
                                padding: EdgeInsets.only(top: 160,),
                                child: Center( child:Text('Gym Top \n Rs.699',style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    letterSpacing: 1)),
                                ),
                              ),
                              Container(
                                width: SizeConfig.safeBlockHorizontal*45,
                                height: 150.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/women2.jpg'), fit: BoxFit.cover)),
                              ),

                            ],
                          ),

                        ),
                      ],
                    ),
                  ),



                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        InkWell(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageWo())),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                color: Colors.white,
                                width: SizeConfig.safeBlockHorizontal*45,
                                height: 200,
                                padding: EdgeInsets.only(top: 160,),
                                child: Center( child:Text('Sports Jacket \n      Rs.299',style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    letterSpacing: 1)),
                                ),
                              ),
                              Container(
                                width: SizeConfig.safeBlockHorizontal*45,
                                height: 150.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/women.jpg'), fit: BoxFit.cover)),
                              ),

                            ],
                          ),
                        ),
                        InkWell(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageWo())),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                color: Colors.white,
                                width: SizeConfig.safeBlockHorizontal*45,
                                height: 200,
                                padding: EdgeInsets.only(top: 160,),
                                child: Center( child:Text('Gym Top \n Rs.699',style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    letterSpacing: 1)),
                                ),
                              ),
                              Container(
                                width: SizeConfig.safeBlockHorizontal*45,
                                height: 150.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/women2.jpg'), fit: BoxFit.cover)),
                              ),

                            ],
                          ),

                        ),
                      ],
                    ),
                  ),



                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        InkWell(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageWo())),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                color: Colors.white,
                                width: SizeConfig.safeBlockHorizontal*45,
                                height: 200,
                                padding: EdgeInsets.only(top: 160,),
                                child: Center( child:Text('Sports Jacket \n      Rs.299',style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    letterSpacing: 1)),
                                ),
                              ),
                              Container(
                                width: SizeConfig.safeBlockHorizontal*45,
                                height: 150.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/women.jpg'), fit: BoxFit.cover)),
                              ),

                            ],
                          ),
                        ),
                        InkWell(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageWo())),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                color: Colors.white,
                                width: SizeConfig.safeBlockHorizontal*45,
                                height: 200,
                                padding: EdgeInsets.only(top: 160,),
                                child: Center( child:Text('Gym Top \n Rs.699',style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    letterSpacing: 1)),
                                ),
                              ),
                              Container(
                                width: SizeConfig.safeBlockHorizontal*45,
                                height: 150.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/women2.jpg'), fit: BoxFit.cover)),
                              ),

                            ],
                          ),

                        ),
                      ],
                    ),
                  ),



                  Container(
                    padding: EdgeInsets.only(top: 10,bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        InkWell(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageWo())),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                color: Colors.white,
                                width: SizeConfig.safeBlockHorizontal*45,
                                height: 200,
                                padding: EdgeInsets.only(top: 160,),
                                child: Center(
                                  child:Text('Sports Jacket \n      Rs.299',
                                      style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    letterSpacing: 1)),
                                ),
                              ),
                              Container(
                                width: SizeConfig.safeBlockHorizontal*45,
                                height: 150.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/women.jpg'), fit: BoxFit.cover)),
                              ),

                            ],
                          ),
                        ),
                        InkWell(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageWo())),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                color: Colors.white,
                                width: SizeConfig.safeBlockHorizontal*45,
                                height: 200,
                                padding: EdgeInsets.only(top: 160,),
                                child: Center( child:Text('Gym Top \n Rs.699',style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    letterSpacing: 1)),
                                ),
                              ),
                              Container(
                                width: SizeConfig.safeBlockHorizontal*45,
                                height: 150.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/women2.jpg'), fit: BoxFit.cover)),
                              ),

                            ],
                          ),

                        ),
                      ],
                    ),
                  ),




                ],
              ),
            ),
          )
      ),
    );
  }
}
