import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
          child:Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: true,
              iconTheme: IconThemeData(color: Colors.blue),
              title: Text('Orders',style: TextStyle(color: Colors.blue),),
            ),
            body: SingleChildScrollView(
              child:Padding(padding:EdgeInsets.only(bottom: 50),child:Column(
                children: <Widget>[

                  Container(
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 20,bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Wrap(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                    padding:
                                    EdgeInsets.only(
                                        top: 10,
                                        left: 10,
                                        right: 10),
                                    child: Text(
                                      'Product',
                                      style: TextStyle(
                                          color:
                                          Colors.black,
                                          textBaseline:
                                          TextBaseline
                                              .alphabetic,
                                          fontSize: 20),
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0,
                                      right: 10.0,
                                      top: 5),
                                  child: Text('12 September, 2019',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, top: 10),
                                  child: Text(
                                    'status:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      textBaseline:
                                      TextBaseline
                                          .alphabetic,
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 5.0,
                                      right: 10.0,
                                      top: 10),
                                  child: Text('shipped',
                                    style: TextStyle(
                                      color: Colors.black,
                                      textBaseline:
                                      TextBaseline
                                          .alphabetic,
                                    ),
                                  )),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 10,
                                  bottom: 10,
                                  top: 10),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: <Widget>[
                                  RaisedButton.icon(
                                      onPressed: () {
                                      },
                                      color: Colors
                                          .lightBlueAccent,
                                      icon: Icon(
                                        Icons.my_location,
                                        color: Colors.white,
                                      ),
                                      label: Text(
                                        'Track Your Order',
                                        style: TextStyle(
                                            color: Colors
                                                .white),
                                      )),

                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          bottom: 10,
                                          top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                        children: <Widget>[
                                          RaisedButton.icon(
                                              onPressed: () {
                                              },
                                              color: Colors
                                                  .pinkAccent,
                                              icon: Icon(
                                                Icons.call,
                                                color: Colors.white,
                                              ),
                                              label: Text(
                                                'Contact',
                                                style: TextStyle(
                                                    color: Colors
                                                        .white),
                                              )),


                                        ],
                                      )),
                                ],
                              )),
                        ],
                      )),

                  Container(
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 20,bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Wrap(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                    padding:
                                    EdgeInsets.only(
                                        top: 10,
                                        left: 10,
                                        right: 10),
                                    child: Text(
                                      'Product',
                                      style: TextStyle(
                                          color:
                                          Colors.black,
                                          textBaseline:
                                          TextBaseline
                                              .alphabetic,
                                          fontSize: 20),
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0,
                                      right: 10.0,
                                      top: 5),
                                  child: Text('12 September, 2019',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, top: 10),
                                  child: Text(
                                    'status:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      textBaseline:
                                      TextBaseline
                                          .alphabetic,
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 5.0,
                                      right: 10.0,
                                      top: 10),
                                  child: Text('shipped',
                                    style: TextStyle(
                                      color: Colors.black,
                                      textBaseline:
                                      TextBaseline
                                          .alphabetic,
                                    ),
                                  )),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 10,
                                  bottom: 10,
                                  top: 10),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: <Widget>[
                                  RaisedButton.icon(
                                      onPressed: () {
                                      },
                                      color: Colors
                                          .lightBlueAccent,
                                      icon: Icon(
                                        Icons.my_location,
                                        color: Colors.white,
                                      ),
                                      label: Text(
                                        'Track Your Order',
                                        style: TextStyle(
                                            color: Colors
                                                .white),
                                      )),

                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          bottom: 10,
                                          top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                        children: <Widget>[
                                          RaisedButton.icon(
                                              onPressed: () {
                                              },
                                              color: Colors
                                                  .pinkAccent,
                                              icon: Icon(
                                                Icons.call,
                                                color: Colors.white,
                                              ),
                                              label: Text(
                                                'Contact',
                                                style: TextStyle(
                                                    color: Colors
                                                        .white),
                                              )),


                                        ],
                                      )),
                                ],
                              )),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 20,bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Wrap(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                    padding:
                                    EdgeInsets.only(
                                        top: 10,
                                        left: 10,
                                        right: 10),
                                    child: Text(
                                      'Product',
                                      style: TextStyle(
                                          color:
                                          Colors.black,
                                          textBaseline:
                                          TextBaseline
                                              .alphabetic,
                                          fontSize: 20),
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0,
                                      right: 10.0,
                                      top: 5),
                                  child: Text('12 September, 2019',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, top: 10),
                                  child: Text(
                                    'status:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      textBaseline:
                                      TextBaseline
                                          .alphabetic,
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 5.0,
                                      right: 10.0,
                                      top: 10),
                                  child: Text('shipped',
                                    style: TextStyle(
                                      color: Colors.black,
                                      textBaseline:
                                      TextBaseline
                                          .alphabetic,
                                    ),
                                  )),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 10,
                                  bottom: 10,
                                  top: 10),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: <Widget>[
                                  RaisedButton.icon(
                                      onPressed: () {
                                      },
                                      color: Colors
                                          .lightBlueAccent,
                                      icon: Icon(
                                        Icons.my_location,
                                        color: Colors.white,
                                      ),
                                      label: Text(
                                        'Track Your Order',
                                        style: TextStyle(
                                            color: Colors
                                                .white),
                                      )),

                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          bottom: 10,
                                          top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                        children: <Widget>[
                                          RaisedButton.icon(
                                              onPressed: () {
                                              },
                                              color: Colors
                                                  .pinkAccent,
                                              icon: Icon(
                                                Icons.call,
                                                color: Colors.white,
                                              ),
                                              label: Text(
                                                'Contact',
                                                style: TextStyle(
                                                    color: Colors
                                                        .white),
                                              )),


                                        ],
                                      )),
                                ],
                              )),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 20,bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Wrap(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                    padding:
                                    EdgeInsets.only(
                                        top: 10,
                                        left: 10,
                                        right: 10),
                                    child: Text(
                                      'Product',
                                      style: TextStyle(
                                          color:
                                          Colors.black,
                                          textBaseline:
                                          TextBaseline
                                              .alphabetic,
                                          fontSize: 20),
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0,
                                      right: 10.0,
                                      top: 5),
                                  child: Text('12 September, 2019',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, top: 10),
                                  child: Text(
                                    'status:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      textBaseline:
                                      TextBaseline
                                          .alphabetic,
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 5.0,
                                      right: 10.0,
                                      top: 10),
                                  child: Text('shipped',
                                    style: TextStyle(
                                      color: Colors.black,
                                      textBaseline:
                                      TextBaseline
                                          .alphabetic,
                                    ),
                                  )),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 10,
                                  bottom: 10,
                                  top: 10),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: <Widget>[
                                  RaisedButton.icon(
                                      onPressed: () {
                                      },
                                      color: Colors
                                          .lightBlueAccent,
                                      icon: Icon(
                                        Icons.my_location,
                                        color: Colors.white,
                                      ),
                                      label: Text(
                                        'Track Your Order',
                                        style: TextStyle(
                                            color: Colors
                                                .white),
                                      )),

                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          bottom: 10,
                                          top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                        children: <Widget>[
                                          RaisedButton.icon(
                                              onPressed: () {
                                              },
                                              color: Colors
                                                  .pinkAccent,
                                              icon: Icon(
                                                Icons.call,
                                                color: Colors.white,
                                              ),
                                              label: Text(
                                                'Contact',
                                                style: TextStyle(
                                                    color: Colors
                                                        .white),
                                              )),


                                        ],
                                      )),
                                ],
                              )),
                        ],
                      )),

                ],
              ),
            ),
            )
      )

      ),

    );
  }
}
