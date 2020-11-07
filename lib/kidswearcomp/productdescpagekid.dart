import 'package:flutter/material.dart';

import '../cartpage.dart';


class ProductPageKid extends StatefulWidget {
  @override
  _PKState createState() => _PKState();
}

class _PKState extends State<ProductPageKid> {
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
      children: <Widget>[Screen1(), Screen2(), Screen3(), Screen4(),],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 250,
                        child: buildPageView(),
                      ),
                      Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 280),
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
                                          ? Colors.blue.shade100
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  height: bottomSelectedIndex == 1 ? 12 : 8,
                                  width: bottomSelectedIndex == 1 ? 12 : 8,
                                  decoration: BoxDecoration(
                                      color: bottomSelectedIndex == 1
                                          ? Colors.blue.shade100
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  height: bottomSelectedIndex == 2 ? 12 : 8,
                                  width: bottomSelectedIndex == 2 ? 12 : 8,
                                  decoration: BoxDecoration(
                                      color: bottomSelectedIndex == 2
                                          ? Colors.blue.shade100
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  height: bottomSelectedIndex == 3 ? 12 : 8,
                                  width: bottomSelectedIndex == 3 ? 12 : 8,
                                  decoration: BoxDecoration(
                                      color: bottomSelectedIndex == 3
                                          ? Colors.blue.shade100
                                          : Colors.grey,
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
                      SizedBox(height: 15.0),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 15.0),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(Icons.arrow_back),
                              onPressed: ()=>Navigator.pop(context),
                              color: Colors.blue.shade100,
                              iconSize: 30.0,
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width - 120.0),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(Icons.shopping_cart),
                              onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage())),
                              color: Colors.blue.shade100,
                              iconSize: 30.0,
                            ),
                          ),
                          SizedBox(height: 15.0),
                        ],
                      ),
                      SizedBox(height: 10.0)
                    ],
                  )
                ],
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: Text('Kids Sweater Combo',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 25.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: (MediaQuery.of(context).size.width / 4 + MediaQuery.of(context).size.width / 2) - 10.0,
                        child: Text('yellow & red casual Sweater',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                            color: Colors.grey.withOpacity(0.8),
                          ),
                        ),
                      ),
                      Text('\$ 99',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  )
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'COLOR',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                  padding:  EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.lightBlue.shade100
                        ),
                      ),
                      SizedBox(width: 15.0),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.red.shade100
                        ),
                      ),
                      SizedBox(width: 15.0),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.brown.shade100
                        ),
                      )
                    ],
                  )
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Product Details',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Column(
                    children: <Widget>[

                      Padding(padding: EdgeInsets.only(top: 10),child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Text('  Color:',),
                          Text('  Black',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500
                          ),),

                        ],
                      ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10),child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Text('  Outer Material:',),
                          Text('  Mesh',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500
                          ),),

                        ],
                      ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10),child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Text('  Model Name:',),
                          Text('  Sedna M',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500
                          ),),

                        ],
                      ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10),child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Text('  Ideal For:',),
                          Text('  Men',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500
                          ),),

                        ],
                      ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10),child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Text('  Occasion:',),
                          Text('  Sports',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500
                          ),),

                        ],
                      ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10,bottom: 60),child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Text('  Leather Type:',),
                          Text('  Napa',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500
                          ),),

                        ],
                      ),
                      ),


                    ],
                  )
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){}, label: Text('add to cart'),icon: Icon(Icons.shopping_cart),),
    );
  }
}

Widget Screen1() {
  return Container(
    height: 250,
    decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage('assets/kid2.jpg'))),
  );
}

Widget Screen2() {
  return Container(
    height: 250,
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/kid3.jpg')),
    ),
  );
}

Widget Screen3() {
  return Container(
    height: 250,
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/kid2.jpg')),
    ),
  );
}

Widget Screen4() {
  return Container(
    height: 250,
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/kid3.jpg')),
    ),
  );
}
