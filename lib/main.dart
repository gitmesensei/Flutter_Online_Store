import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'cartpage.dart';
import 'homepage.dart';
import 'size_config.dart';
import 'splash.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]).then((_){
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpashScreen(),
    ));
  });
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container();
  }
}
