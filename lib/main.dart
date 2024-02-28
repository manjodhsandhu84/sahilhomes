import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sahihomes/ActiveInteractions.dart';
import 'package:sahihomes/AddAssociates.dart';
import 'package:sahihomes/BrokerHomeView.dart';
import 'package:sahihomes/BrokerProfile.dart';
import 'package:sahihomes/HomeTabbar.dart';
import 'package:sahihomes/LoginView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 @override
  void initState() {
    super.initState();

Timer(Duration(seconds: 2), () {
  print("Yeah, this line is printed immediately");
  // Navigator.of(context).push( (context) -> LoginView());
   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const LoginView()),
  );
});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(

      //   title: Text(widget.title),
      // ),
      body: Center(

       child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.4,
                0.6,
                0.9,
              ],
              colors: [
                Colors.green,
                Colors.green,
                Colors.green.shade900,
                Colors.green.shade900,
              ],
            ),
          
      ),
      child:  Center(child: Image.asset("assets/sahihomes.png")),
       ),
      ) ,
     );
  }
}
