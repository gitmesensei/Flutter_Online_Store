import 'package:flutter/material.dart';
import 'package:onlinestore/accessoriescomp/accessories.dart';
import 'package:onlinestore/appliancecomp/appliance.dart';
import 'package:onlinestore/beautycomp/beauty.dart';
import 'package:onlinestore/cartpage.dart';
import 'package:onlinestore/furniturecomp/furniture.dart';
import 'package:onlinestore/kidswearcomp/kidswear.dart';
import 'package:onlinestore/menswearcomp/menswear.dart';
import 'package:onlinestore/menswearcomp/productdescpagemen.dart';
import 'package:onlinestore/size_config.dart';
import 'package:onlinestore/trendingcomp/trending.dart';
import 'package:onlinestore/womenswearcomp/productdescpagewomen.dart';
import 'package:onlinestore/womenswearcomp/womenswear.dart';

import 'contactus.dart';
import 'navigationdrawer.dart';
import 'shoecomp/productdescpage.dart';
import 'shoecomp/shoes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

  bool isActive = true;

  int bottomSelectedIndex = 0;

  PageController pageController = PageController(
    initialPage: 0,
  );

  void pageChanged(int index) {
    setState(() {
      this.bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 100), curve: Curves.easeIn);
    });
  }

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[Screen1(), Screen2(), Screen3(), Screen4(), Screen5()],
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade100,
        key: _key,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 250,
                            child: buildPageView(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:10),
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                      icon: Icon(Icons.menu),
                                      onPressed: () {
                                        _key.currentState.openDrawer();
                                      },
                                      color: Colors.white,
                                      iconSize: 30.0,
                                    ),
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width -
                                          180.0),
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                      icon: Icon(Icons.shopping_cart),
                                      onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage())),
                                      color: Colors.white,
                                      iconSize: 30.0,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  InkWell(
                                    onTap: (){},
                                    child: Container(
                                      alignment: Alignment.topLeft,
                                      height: 40.0,
                                      width: 40.0,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25.0),
                                          border: Border.all(
                                              color: Colors.white,
                                              style: BorderStyle.solid,
                                              width: 2.0),
                                          image: DecorationImage(
                                              image:
                                              AssetImage('assets/logo.jpg'))),
                                    ),
                                  ),
                                  SizedBox(height: 15.0),
                                ],
                              ),
                            ),
                          ),
                          Center(
                              child: Container(
                            margin: EdgeInsets.only(top: 260),
                            width: 150,
                            height: 15,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  height: bottomSelectedIndex == 0 ? 12 : 8,
                                  width: bottomSelectedIndex == 0 ? 12 : 8,
                                  decoration: BoxDecoration(
                                      color: bottomSelectedIndex == 0
                                          ? Colors.white
                                          : Colors.white70,
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  height: bottomSelectedIndex == 1 ? 12 : 8,
                                  width: bottomSelectedIndex == 1 ? 12 : 8,
                                  decoration: BoxDecoration(
                                      color: bottomSelectedIndex == 1
                                          ? Colors.white
                                          : Colors.white70,
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  height: bottomSelectedIndex == 2 ? 12 : 8,
                                  width: bottomSelectedIndex == 2 ? 12 : 8,
                                  decoration: BoxDecoration(
                                      color: bottomSelectedIndex == 2
                                          ? Colors.white
                                          : Colors.white70,
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  height: bottomSelectedIndex == 3 ? 12 : 8,
                                  width: bottomSelectedIndex == 3 ? 12 : 8,
                                  decoration: BoxDecoration(
                                      color: bottomSelectedIndex == 3
                                          ? Colors.white
                                          : Colors.white70,
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  height: bottomSelectedIndex == 4 ? 12 : 8,
                                  width: bottomSelectedIndex == 4 ? 12 : 8,
                                  decoration: BoxDecoration(
                                      color: bottomSelectedIndex == 4
                                          ? Colors.white
                                          : Colors.white70,
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 160.0),
                          Padding(
                            padding: EdgeInsets.only(left: 15.0, right: 15.0),
                            child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(5.0),
                              child: TextFormField(
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: Icon(Icons.search,
                                          color: Colors.pinkAccent.shade100
                                              .withAlpha(0),
                                          size: 30.0),
                                      contentPadding: EdgeInsets.only(
                                          left: 15.0, top: 15.0),
                                      hintText: 'Search',
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Quicksand'))),
                            ),
                          ),
                          SizedBox(height: 10.0)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    padding: EdgeInsets.only(top: 0),
                    height: 75,
                    child: ListView(
                      primary: false,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Trending())),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 0, left: 10),
                                width: 100,
                                height: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2.0,
                                        color: Colors.white,
                                        style: BorderStyle.solid),
                                    image: DecorationImage(
                                        image: AssetImage('assets/6.jpg'),
                                        fit: BoxFit.scaleDown,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.4),
                                            BlendMode.darken))),
                              ),
                              Center(
                                child: Padding(
                                    padding: EdgeInsets.only(left: 24),
                                    child: Text(
                                      'TRENDING',
                                      style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MensWear())),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 0, left: 10),
                                width: 100,
                                height: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2.0,
                                        color: Colors.white,
                                        style: BorderStyle.solid),
                                    image: DecorationImage(
                                        image: AssetImage('assets/7.jpg'),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.4),
                                            BlendMode.darken))),
                              ),
                              Center(
                                child: Padding(
                                    padding: EdgeInsets.only(left: 22),
                                    child: Text(
                                      'MENSWEAR',
                                      style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WomensWear())),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 0, left: 10),
                                width: 100,
                                height: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2.0,
                                        color: Colors.white,
                                        style: BorderStyle.solid),
                                    image: DecorationImage(
                                        image: AssetImage('assets/8.jpg'),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.4),
                                            BlendMode.darken))),
                              ),
                              Center(
                                child: Padding(
                                    padding: EdgeInsets.only(left: 12),
                                    child: Text(
                                      'WOMENWEAR',
                                      style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KidsWear())),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 0, left: 10),
                                width: 100,
                                height: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2.0,
                                        color: Colors.white,
                                        style: BorderStyle.solid),
                                    image: DecorationImage(
                                        image: AssetImage('assets/9.jpg'),
                                        fit: BoxFit.scaleDown,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.4),
                                            BlendMode.darken))),
                              ),
                              Center(
                                child: Padding(
                                    padding: EdgeInsets.only(left: 25),
                                    child: Text(
                                      'KIDSWEAR',
                                      style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Accessories())),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 0, left: 10),
                                width: 100,
                                height: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2.0,
                                        color: Colors.white,
                                        style: BorderStyle.solid),
                                    image: DecorationImage(
                                        image: AssetImage('assets/10.jpg'),
                                        fit: BoxFit.scaleDown,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.4),
                                            BlendMode.darken))),
                              ),
                              Center(
                                child: Padding(
                                    padding: EdgeInsets.only(left: 13),
                                    child: Text(
                                      'ACCESSORIES',
                                      style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Appliance())),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 0, left: 10),
                                width: 100,
                                height: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2.0,
                                        color: Colors.white,
                                        style: BorderStyle.solid),
                                    image: DecorationImage(
                                        image: AssetImage('assets/11.jpg'),
                                        fit: BoxFit.scaleDown,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.4),
                                            BlendMode.darken))),
                              ),
                              Center(
                                child: Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text(
                                      'APPLIANCES',
                                      style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Furniture())),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 0, left: 10),
                                width: 100,
                                height: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2.0,
                                        color: Colors.white,
                                        style: BorderStyle.solid),
                                    image: DecorationImage(
                                        image: AssetImage('assets/12.jpg'),
                                        fit: BoxFit.scaleDown,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.4),
                                            BlendMode.darken))),
                              ),
                              Center(
                                child: Padding(
                                    padding: EdgeInsets.only(left: 22),
                                    child: Text(
                                      'FURNITURE',
                                      style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Beauty())),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                    top: 0, left: 10, right: 10),
                                width: 100,
                                height: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2.0,
                                        color: Colors.white,
                                        style: BorderStyle.solid),
                                    image: DecorationImage(
                                        image: AssetImage('assets/13.jpg'),
                                        fit: BoxFit.scaleDown,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.4),
                                            BlendMode.darken))),
                              ),
                              Center(
                                child: Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: Text(
                                      'BEAUTY',
                                      style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Shoes())),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                    top: 0, left: 10, right: 10),
                                width: 100,
                                height: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2.0,
                                        color: Colors.white,
                                        style: BorderStyle.solid),
                                    image: DecorationImage(
                                        image: AssetImage('assets/jordan.jpg'),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.4),
                                            BlendMode.darken))),
                              ),
                              Center(
                                child: Padding(
                                    padding: EdgeInsets.only(left: 22),
                                    child: Text(
                                      'FOOTWEAR',
                                      style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Material(
                          elevation: 4,
                          child: Ink.image(
                              width: SizeConfig.safeBlockHorizontal * 44,
                              height: 200,
                              image: AssetImage('assets/puma.jpg'),
                              fit: BoxFit.cover,
                              child: InkWell(
                                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Shoes())),
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
                              width: SizeConfig.safeBlockHorizontal * 44,
                              height: 200,
                              image: AssetImage('assets/nike.jpg'),
                              fit: BoxFit.cover,
                              child: InkWell(
                                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Shoes())),
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
                    padding: EdgeInsets.only(top: 0, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Material(
                          elevation: 4,
                          child: Ink.image(
                              width: SizeConfig.safeBlockHorizontal * 44,
                              height: 200,
                              image: AssetImage('assets/jordan.jpg'),
                              fit: BoxFit.cover,
                              child: InkWell(
                                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Shoes())),
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
                              width: SizeConfig.safeBlockHorizontal * 44,
                              height: 200,
                              image: AssetImage('assets/adidas.jpg'),
                              fit: BoxFit.cover,
                              child: InkWell(
                                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Shoes())),
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
                ],
              ),
              InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MensWear())),
                  child: Padding(
                    padding: EdgeInsets.only(left: 17.5, right: 18, top: 15.0),
                    child: Container(
                        height: 150.0,
                        width: double.infinity,
                        child: Stack(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  width: SizeConfig.safeBlockHorizontal*30,
                                  height: 150.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/men.jpg'),
                                          fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(
                                              Colors.black.withOpacity(0.4),
                                              BlendMode.darken))),
                                ),
                                SizedBox(width: 1.0,),
                                Container(
                                  width: SizeConfig.safeBlockHorizontal*30,
                                  height: 150.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/7.jpg'),
                                          fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(
                                              Colors.black.withOpacity(0.4),
                                              BlendMode.darken))),
                                ),
                                SizedBox(width: 1.0),
                                Container(
                                  width: SizeConfig.safeBlockHorizontal*30,
                                  height: 150.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/men2.jpg'),
                                          fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(
                                              Colors.black.withOpacity(0.4),
                                              BlendMode.darken))),
                                ),
                              ],
                            ),
                            Center(
                              child: Text(
                                'MENSWEAR',
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
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                child: Container(
                  height: 200.0,
                  color: Colors.transparent,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      InkWell(
                        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageM())),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 150,
                              height: 200,
                              padding: EdgeInsets.only(
                                top: 160,
                              ),
                              child: Center(
                                child: Text('Armani T-Shirt \n      Rs.299',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        letterSpacing: 1)),
                              ),
                            ),
                            Container(
                              width: 150.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/men.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.0),
                      InkWell(
                        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageM())),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 150,
                              height: 200,
                              padding: EdgeInsets.only(
                                top: 160,
                              ),
                              child: Center(
                                child: Text('Adidas Jacket \n      Rs.699',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        letterSpacing: 1)),
                              ),
                            ),
                            Container(
                              width: 150.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/men2.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.0),
                      InkWell(
                        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageM())),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 150,
                              height: 200,
                              padding: EdgeInsets.only(
                                top: 160,
                              ),
                              child: Center(
                                child: Text('Adidas Jacket \n      Rs.699',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        letterSpacing: 1)),
                              ),
                            ),
                            Container(
                              width: 150.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/men.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.0),
                      InkWell(
                        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageM())),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 150,
                              height: 200,
                              padding: EdgeInsets.only(
                                top: 160,
                              ),
                              child: Center(
                                child: Text('Adidas Jacket \n      Rs.699',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        letterSpacing: 1)),
                              ),
                            ),
                            Container(
                              width: 150.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/men2.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.0),
                      InkWell(
                        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageM())),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 150,
                              height: 200,
                              padding: EdgeInsets.only(
                                top: 160,
                              ),
                              child: Center(
                                child: Text('Adidas Jacket \n      Rs.699',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        letterSpacing: 1)),
                              ),
                            ),
                            Container(
                              width: 150.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/men.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.0),
                      InkWell(
                        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageM())),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 150,
                              height: 200,
                              padding: EdgeInsets.only(
                                top: 160,
                              ),
                              child: Center(
                                child: Text('Adidas Jacket \n      Rs.699',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        letterSpacing: 1)),
                              ),
                            ),
                            Container(
                              width: 150.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/men2.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Material(
                      elevation: 4,
                      child: Ink.image(
                          width: SizeConfig.safeBlockHorizontal * 44,
                          height: 200,
                          image: AssetImage('assets/shirt.jpg'),
                          fit: BoxFit.cover,
                          child: InkWell(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MensWear())),
                              splashColor: Colors.white,
                              hoverColor: Colors.white,
                              child: Material(
                                  color: Colors.black38,
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(0),
                                      child: Text(
                                        ' MEN SHIRTS \n 50% OFF',
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
                          width: SizeConfig.safeBlockHorizontal * 44,
                          height: 200,
                          image: AssetImage('assets/dress.jpg'),
                          fit: BoxFit.cover,
                          child: InkWell(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>WomensWear())),
                              splashColor: Colors.white,
                              hoverColor: Colors.white,
                              child: Material(
                                  color: Colors.black38,
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(0),
                                      child: Text(
                                        'DRESSES\n10% OFF',
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
                padding: EdgeInsets.only(left: 20, right: 20, top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Material(
                      elevation: 4,
                      child: Ink.image(
                          width: SizeConfig.safeBlockHorizontal * 44,
                          height: 200,
                          image: AssetImage('assets/appliance.jpg'),
                          fit: BoxFit.cover,
                          child: InkWell(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Appliance())),
                              splashColor: Colors.white,
                              hoverColor: Colors.white,
                              child: Material(
                                  color: Colors.black38,
                                  child: Center(
                                      child: Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Text(
                                      'APPLIANCES \n 30%OFF',
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
                          width: SizeConfig.safeBlockHorizontal * 44,
                          height: 200,
                          image: AssetImage('assets/access.jpg'),
                          fit: BoxFit.cover,
                          child: InkWell(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Accessories())),
                              splashColor: Colors.white,
                              hoverColor: Colors.white,
                              child: Material(
                                  color: Colors.black38,
                                  child: Center(
                                      child: Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Text(
                                      '\nACCESSORIES\n  FLAT 50% \n  OFF',
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
              InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => WomensWear())),
                  child: Padding(
                    padding: EdgeInsets.only(left: 17.5, right: 18, top: 15.0),
                    child: Container(
                        height: 150.0,
                        child: Stack(
                          children: <Widget>[

                            Row(
                              children: <Widget>[
                                Container(
                                  width: SizeConfig.safeBlockHorizontal*30,
                                  height: 150.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/women3.jpg'),
                                          fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(
                                              Colors.black.withOpacity(0.4),
                                              BlendMode.darken))),
                                ),
                                SizedBox(width: 1.0),
                                Container(
                                  width: SizeConfig.safeBlockHorizontal*30,
                                  height: 150.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/8.jpg'),
                                          fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(
                                              Colors.black.withOpacity(0.4),
                                              BlendMode.darken))),
                                ),
                                SizedBox(width: 1.0),
                                Container(
                                  width: SizeConfig.safeBlockHorizontal*30,
                                  height: 150.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/women2.jpg'),
                                          fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(
                                              Colors.black.withOpacity(0.4),
                                              BlendMode.darken))),
                                ),
                              ],
                            ),
                            Center(
                              child: Text(
                                'WOMENSWEAR',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    letterSpacing: 6),
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
              Padding(
                padding: EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15.0, bottom: 50),
                child: Container(
                  height: 200.0,
                  color: Colors.transparent,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPageWo())),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 150,
                              height: 200,
                              padding: EdgeInsets.only(
                                top: 160,
                              ),
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
                              width: 150.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/women.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.0),
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPageWo())),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 150,
                              height: 200,
                              padding: EdgeInsets.only(
                                top: 160,
                              ),
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
                              width: 150.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/women2.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.0),
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPageWo())),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 150,
                              height: 200,
                              padding: EdgeInsets.only(
                                top: 160,
                              ),
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
                              width: 150.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/women.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.0),
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPageWo())),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 150,
                              height: 200,
                              padding: EdgeInsets.only(
                                top: 160,
                              ),
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
                              width: 150.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/women2.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.0),
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPageWo())),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 150,
                              height: 200,
                              padding: EdgeInsets.only(
                                top: 160,
                              ),
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
                              width: 150.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/women.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.0),
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPageWo())),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 150,
                              height: 200,
                              padding: EdgeInsets.only(
                                top: 160,
                              ),
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
                              width: 150.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/women2.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: Theme(
            data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
            child: Drawer(
              child: AppDrawer(),
            )),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs())),
            label: Text('contact us')),
      ),
    );
  }

  Widget Screen1() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/2.jpg'),
            fit: BoxFit.fill,
 ),
      ),
    );
  }

  Widget Screen2() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/3.jpg'),
            fit: BoxFit.fill,
      ),
      ),
    );
  }

  Widget Screen3() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/1.jpg'),
            fit: BoxFit.fill,
),
      ),
    );
  }

  Widget Screen4() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/4.jpg'),
            fit: BoxFit.fill,),
      ),
    );
  }

  Widget Screen5() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/5.jpg'),
            fit: BoxFit.fill,
),
      ),
    );
  }
}
