import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              iconTheme: IconThemeData(color: Colors.white),
              title: Text('contact us',style: TextStyle(color: Colors.white),),
            ),
        body:ListView(
          children: <Widget>[

            Center(child:
            Container(
              margin: EdgeInsets.all(20),
              child: Text('Acosdmega Technology Pvt. Ltd.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 0.5),),
            ),
            ),

            Center(
              child:InkWell(
                child:Container(
                padding: EdgeInsets.only(left: 30,right: 30),
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/com.jpg'))
                ),
              ),
                onTap: (){
                  _launchMap();
                },
              )
            ),
            Center(
              child: RaisedButton.icon(onPressed: (){
                _launchMap();
              },
                  color: Colors.lightBlue,
                  splashColor: Colors.white,
                  icon: Icon(FontAwesomeIcons.arrowRight,color: Colors.white,),
                  label: Text('navigate from maps',
                style: TextStyle(color: Colors.white),)),
            ),
            Center(child:
            Container(
              margin: EdgeInsets.all(20),
              child: Text('Cannught place',
                style: TextStyle(fontWeight: FontWeight.w400,),),
            ),
            ),
            Center(child:
            Container(
              margin: EdgeInsets.all(0),
              child: FlatButton.icon(onPressed: (){
                _launchWhatsapp('+8527404034');
              },
                  icon: Icon(Icons.call), label: Text('+91-8527404034',style: TextStyle(color: Colors.lightBlue),))
            ),
            ),
            Center(child:
            Container(
                margin: EdgeInsets.all(0),
                child: FlatButton.icon(onPressed: () async{

                  await launch('https://acosdemega.com');


                },
                    icon: Icon(Icons.web), label: Text('https://acosdemega.com',style: TextStyle(color: Colors.lightBlue),))
            ),
            ),


          ],
        )

        )
      )
    );
  }

  _launchWhatsapp(number) async{

    var whatsappurl="whatsapp://send?phone=$number";

    await canLaunch(whatsappurl)?launch(whatsappurl):throw('could not find whatsapp account for the number');

  }

  _launchMap() async{

    if(Platform.isIOS){
      const url = 'http://maps.apple.com/11=28.69377,77.14973';
      await canLaunch(url)?launch(url):throw('could not find location right now');
    }else{
      const url = 'geo:28.69377,77.14973';
      await canLaunch(url)?launch(url):throw('could not find location right now');

    }


  }
}
