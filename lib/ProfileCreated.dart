

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'BrokerHomeView.dart';
import 'LoginView.dart';

class ProfileCreated extends StatefulWidget {
  const ProfileCreated({super.key});

  @override
  State<ProfileCreated> createState() => _ProfileCreatedState();
}

class _ProfileCreatedState extends State<ProfileCreated> {

@override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
  print("Yeah, this line is printed immediately");
  // Navigator.of(context).push( (context) -> LoginView());
   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => BrokerHomeView(false)),
  );
});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            const SizedBox(
  // width: 250,
  child: Text("PROFILE\nUPDATED",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white,),)),
  SizedBox(height: 10,),
          Center(child: Image.asset("assets/checkmark.png")),
        ],
      ),
       ),
      ),
    );
  }
}