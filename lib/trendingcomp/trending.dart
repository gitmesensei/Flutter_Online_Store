import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlinestore/size_config.dart';

import '../cartpage.dart';

class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue.shade100,
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
                                padding: EdgeInsets.only(left: 0, right: 0, top: 0),
                                child: Container(
                                    height: 200.0,
                                    width: SizeConfig.safeBlockHorizontal*100,
                                    color: Colors.pinkAccent,
                                    child: Stack(
                                      children: <Widget>[
                                        Center(
                                          child: Text(
                                            'TRENDING',
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
                                onPressed: ()=>Navigator.pop(context),
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
                                    onPressed: () {
                                    },
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      InkWell(child:
                      Stack(
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            width: SizeConfig.safeBlockHorizontal*33.33,
                            height: 200,
                            padding: EdgeInsets.only(top: 160,),
                            child: Center( child:Text('Armani T-Shirt \n      Rs.299',style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                letterSpacing: 1)),
                            ),
                          ),
                          Container(
                            width: SizeConfig.safeBlockHorizontal*33.33,
                            height: 150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/men.jpg'), fit: BoxFit.cover)),
                          ),

                        ],
                      ),
                      ),
                      InkWell(child:
                      Stack(
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            width: SizeConfig.safeBlockHorizontal*33.33,
                            height: 200,
                            padding: EdgeInsets.only(top: 160,),
                            child: Center( child:Text('Adidas Jacket \n      Rs.699',style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                letterSpacing: 1)),
                            ),
                          ),
                          Container(
                            width: SizeConfig.safeBlockHorizontal*33.33,
                            height: 150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/women2.jpg'), fit: BoxFit.cover)),
                          ),

                        ],
                      ),

                      ),
                      InkWell(child:
                      Stack(
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            width: SizeConfig.safeBlockHorizontal*33.33,
                            height: 200,
                            padding: EdgeInsets.only(top: 160,),
                            child: Center( child:Text('Adidas Jacket \n      Rs.699',style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                letterSpacing: 1)),
                            ),
                          ),
                          Container(
                            width: SizeConfig.safeBlockHorizontal*33.33,
                            height: 150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/men2.jpg'), fit: BoxFit.cover)),
                          ),

                        ],
                      ),

                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0, right: 0, top: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Material(
                        elevation: 4,
                        child: Ink.image(
                            width: SizeConfig.safeBlockHorizontal * 50,
                            height: 200,
                            image: AssetImage('assets/puma.jpg'),
                            fit: BoxFit.cover,
                            child: InkWell(
                                onTap: () {},
                                splashColor: Colors.white,
                                hoverColor: Colors.white,
                                child: Material(
                                    color: Colors.black38,
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(0),
                                        child: Text(
                                          ' PUMA \n 20% OFF',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              letterSpacing: 1),
                                        ),
                                      ),
                                    )))),
                      ),
                      Material(
                        elevation: 4,
                        child: Ink.image(
                            width: SizeConfig.safeBlockHorizontal * 50,
                            height: 200,
                            image: AssetImage('assets/nike.jpg'),
                            fit: BoxFit.cover,
                            child: InkWell(
                                onTap: () {},
                                splashColor: Colors.white,
                                hoverColor: Colors.white,
                                child: Material(
                                    color: Colors.black38,
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(0),
                                        child: Text(
                                          'NIKE\n10% OFF',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              letterSpacing: 1),
                                        ),
                                      ),
                                    )))),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0, left: 0, right: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Material(
                        elevation: 4,
                        child: Ink.image(
                            width: SizeConfig.safeBlockHorizontal * 50,
                            height: 200,
                            image: AssetImage('assets/jordan.jpg'),
                            fit: BoxFit.cover,
                            child: InkWell(
                                onTap: () {},
                                splashColor: Colors.white,
                                hoverColor: Colors.white,
                                child: Material(
                                    color: Colors.black38,
                                    child: Center(
                                        child: Padding(
                                          padding: EdgeInsets.all(0),
                                          child: Text(
                                            'JORDANS \n 30%OFF',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                letterSpacing: 1),
                                          ),
                                        ))))),
                      ),
                      Material(
                        elevation: 4,
                        child: Ink.image(
                            width: SizeConfig.safeBlockHorizontal * 50,
                            height: 200,
                            image: AssetImage('assets/adidas.jpg'),
                            fit: BoxFit.cover,
                            child: InkWell(
                                onTap: () {},
                                splashColor: Colors.white,
                                hoverColor: Colors.white,
                                child: Material(
                                    color: Colors.black38,
                                    child: Center(
                                        child: Padding(
                                          padding: EdgeInsets.all(0),
                                          child: Text(
                                            '  ADIDAS \n  FLAT 50% \n  OFF',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                letterSpacing: 1),
                                          ),
                                        ))))),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 200,
                  child: InkWell(
                    //      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage())),
                      child: Padding(
                        padding: EdgeInsets.only(left: 0, right: 0, top: 0),
                        child: Container(
                            height: 200.0,
                            width: SizeConfig.safeBlockHorizontal*100,
                            color: Colors.deepOrangeAccent,
                            child: Stack(
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    'FLAT 50% SALE',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        letterSpacing: 10),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 94,left: 150),
                                child: Icon(FontAwesomeIcons.solidArrowAltCircleRight,size: 55,color: Colors.white,)),
                                Padding(padding: EdgeInsets.only(top: 86,left: 280),
                                    child: Icon(FontAwesomeIcons.shoppingBag,size: 90,color: Colors.white,)),
                              ],
                            )),
                      )),
                ),



                Padding(
                  padding: EdgeInsets.only(left: 0, right: 0, top: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Material(
                        elevation: 4,
                        child: Ink.image(
                            width: SizeConfig.safeBlockHorizontal * 50,
                            height: 200,
                            image: AssetImage('assets/puma.jpg'),
                            fit: BoxFit.cover,
                            child: InkWell(
                                onTap: () {},
                                splashColor: Colors.white,
                                hoverColor: Colors.white,
                                child: Material(
                                    color: Colors.black38,
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(0),
                                        child: Text(
                                          ' PUMA \n 20% OFF',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              letterSpacing: 1),
                                        ),
                                      ),
                                    )))),
                      ),
                      Material(
                        elevation: 4,
                        child: Ink.image(
                            width: SizeConfig.safeBlockHorizontal * 50,
                            height: 200,
                            image: AssetImage('assets/nike.jpg'),
                            fit: BoxFit.cover,
                            child: InkWell(
                                onTap: () {},
                                splashColor: Colors.white,
                                hoverColor: Colors.white,
                                child: Material(
                                    color: Colors.black38,
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(0),
                                        child: Text(
                                          'NIKE\n10% OFF',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              letterSpacing: 1),
                                        ),
                                      ),
                                    )))),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0, left: 0, right: 0,bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Material(
                        elevation: 4,
                        child: Ink.image(
                            width: SizeConfig.safeBlockHorizontal * 50,
                            height: 200,
                            image: AssetImage('assets/jordan.jpg'),
                            fit: BoxFit.cover,
                            child: InkWell(
                                onTap: () {},
                                splashColor: Colors.white,
                                hoverColor: Colors.white,
                                child: Material(
                                    color: Colors.black38,
                                    child: Center(
                                        child: Padding(
                                          padding: EdgeInsets.all(0),
                                          child: Text(
                                            'JORDANS \n 30%OFF',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                letterSpacing: 1),
                                          ),
                                        ))))),
                      ),
                      Material(
                        elevation: 4,
                        child: Ink.image(
                            width: SizeConfig.safeBlockHorizontal * 50,
                            height: 200,
                            image: AssetImage('assets/adidas.jpg'),
                            fit: BoxFit.cover,
                            child: InkWell(
                                onTap: () {},
                                splashColor: Colors.white,
                                hoverColor: Colors.white,
                                child: Material(
                                    color: Colors.black38,
                                    child: Center(
                                        child: Padding(
                                          padding: EdgeInsets.all(0),
                                          child: Text(
                                            '  ADIDAS \n  FLAT 50% \n  OFF',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                letterSpacing: 1),
                                          ),
                                        ))))),
                      ),
                    ],
                  ),
                ),


                Container(
                  height: 200,
                  child: InkWell(
                    //      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage())),
                      child: Padding(
                        padding: EdgeInsets.only(left: 0, right: 0, top: 0),
                        child: Container(
                            height: 200.0,
                            width: SizeConfig.safeBlockHorizontal*100,
                            color: Colors.amberAccent,
                            child: Stack(
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    'FLAT 50% SALE',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        letterSpacing: 10),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 94,left: 150),
                                    child: Icon(FontAwesomeIcons.solidArrowAltCircleRight,size: 55,color: Colors.white,)),
                                Padding(padding: EdgeInsets.only(top: 86,left: 280),
                                    child: Icon(FontAwesomeIcons.shoppingBag,size: 90,color: Colors.white,)),
                              ],
                            )),
                      )),
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      InkWell(child:
                      Stack(
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            width: SizeConfig.safeBlockHorizontal*45,
                            height: 200,
                            padding: EdgeInsets.only(top: 160,),
                            child: Center( child:Text('Armani T-Shirt \n      Rs.299',style: TextStyle(
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
                                    image: AssetImage('assets/men.jpg'), fit: BoxFit.cover)),
                          ),

                        ],
                      ),
                      ),
                      InkWell(child:
                      Stack(
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            width: SizeConfig.safeBlockHorizontal*45,
                            height: 200,
                            padding: EdgeInsets.only(top: 160,),
                            child: Center( child:Text('Adidas Jacket \n      Rs.699',style: TextStyle(
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
                                    image: AssetImage('assets/men2.jpg'), fit: BoxFit.cover)),
                          ),

                        ],
                      ),

                      ),
                    ],
                  ),
                ),


                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      InkWell(child:
                      Stack(
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            width: SizeConfig.safeBlockHorizontal*45,
                            height: 200,
                            padding: EdgeInsets.only(top: 160,),
                            child: Center( child:Text('Armani T-Shirt \n      Rs.299',style: TextStyle(
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
                                    image: AssetImage('assets/men.jpg'), fit: BoxFit.cover)),
                          ),

                        ],
                      ),
                      ),
                      InkWell(child:
                      Stack(
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            width: SizeConfig.safeBlockHorizontal*45,
                            height: 200,
                            padding: EdgeInsets.only(top: 160,),
                            child: Center( child:Text('Adidas Jacket \n      Rs.699',style: TextStyle(
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
                                    image: AssetImage('assets/men2.jpg'), fit: BoxFit.cover)),
                          ),

                        ],
                      ),

                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      InkWell(child:
                      Stack(
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            width: SizeConfig.safeBlockHorizontal*45,
                            height: 200,
                            padding: EdgeInsets.only(top: 160,),
                            child: Center( child:Text('Armani T-Shirt \n      Rs.299',style: TextStyle(
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
                                    image: AssetImage('assets/men.jpg'), fit: BoxFit.cover)),
                          ),

                        ],
                      ),
                      ),
                      InkWell(child:
                      Stack(
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            width: SizeConfig.safeBlockHorizontal*45,
                            height: 200,
                            padding: EdgeInsets.only(top: 160,),
                            child: Center( child:Text('Adidas Jacket \n      Rs.699',style: TextStyle(
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
                                    image: AssetImage('assets/men2.jpg'), fit: BoxFit.cover)),
                          ),

                        ],
                      ),

                      ),
                    ],
                  ),
                ),


                Container(
                  height: 200,
                  margin: EdgeInsets.only(left: 0, right: 0, top: 0,bottom: 50),
                  child: InkWell(
                    //      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage())),
                      child: Padding(
                        padding: EdgeInsets.only(left: 0, right: 0, top: 0,),
                        child: Container(
                            height: 200.0,
                            width: SizeConfig.safeBlockHorizontal*100,
                            color: Colors.amberAccent,
                            child: Stack(
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    'FLAT 50% SALE',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        letterSpacing: 10),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 94,left: 150),
                                    child: Icon(FontAwesomeIcons.solidArrowAltCircleRight,size: 55,color: Colors.white,)),
                                Padding(padding: EdgeInsets.only(top: 86,left: 280),
                                    child: Icon(FontAwesomeIcons.shoppingBag,size: 90,color: Colors.white,)),
                              ],
                            )),
                      )),
                ),


              ],
            ),
          ),
    )
    );
  }
}
