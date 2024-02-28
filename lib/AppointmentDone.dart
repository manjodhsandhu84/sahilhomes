

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sahihomes/LoginView.dart';
import 'package:sahihomes/MyColors.dart';
import 'package:sahihomes/SelectContactPopUp.dart';

class AppointmentDone extends StatefulWidget {
  const AppointmentDone({super.key});

  @override
  State<AppointmentDone> createState() => _AppointmentDoneState();
}

class _AppointmentDoneState extends State<AppointmentDone> {

@override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
  print("Yeah, this line is printed immediately");
  Navigator.pop(context);
});

  }

  @override
  Widget build(BuildContext context) {
    return getScaffoldWidget(context);
  }

  Scaffold getScaffoldWidget(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black.withAlpha(6),
body: Center(
child:   Container(
  width: MediaQuery.of(context).size.width * 0.7,
  height: MediaQuery.of(context).size.width * 0.7,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [
              //  0.4,
              // 0.6,
              // 0.4,
              // 0.1,
         0.1,
              0.4,
              0.6,
              0.9,
            ],
            colors: [
                 HexColor.fromHex(MyColors.darkGreen).withOpacity(0.9),
                    HexColor.fromHex(MyColors.darkGreen).withOpacity(0.9),
              // Colors.green.shade700,
              // Colors.green,
                 HexColor.fromHex(MyColors.lightGreen),
                //  HexColor.fromHex(MyColors.lightGreen),
                Colors.white
              // Colors.green,
           
            ],
          ),
        
      ),
      padding: EdgeInsets.only(left: 20,top: 10,right: 10),
      child: Column(
        children: [
          // Container(
          //   alignment: Alignment.topRight,
          //   height: 50,child: IconButton(onPressed: () {
          //     Navigator.pop(context);
          //   }, icon: Icon(Icons.close,color: Colors.white,)) ,),
            getSpaceWithHeightWidget(20),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text("IN 3 DAYS",textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 19),)),
getSpaceWithHeightWidget(20),
                   Container(
                    padding: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width,
              child: Text("TALK WITH",textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 19),)),

getSpaceWithHeightWidget(5),
                   Container(
                    padding: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width,
              child: Text("RAJNISH",textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),)),
              // getSpaceWithHeightWidget(10),
                   Container(
                    padding: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width,
              child: Text("FEB 26",textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),)),
 Container(
                    padding: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width,
              child: Text("10:30 AM",textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 40),)),

        ],
      ),
),
),
  );
  }

  Column egryeffdgdg(BuildContext context) {
    return Column(

children: [
Container(
height: 80,
padding: EdgeInsets.only(left: 20,right: 20,top: 20),
alignment: Alignment.bottomLeft,
width: MediaQuery.of(context).size.width,
decoration: BoxDecoration(
  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
  color: HexColor.fromHex(MyColors.darkGreen)
),

),

Expanded(child: Container(
padding: EdgeInsets.all(20),
 
)),

Container(
height: 50,
padding: EdgeInsets.only(right: 20),
decoration: BoxDecoration(
  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
  color: HexColor.fromHex(MyColors.darkGreen),
  
),

),
],    );
  }


}