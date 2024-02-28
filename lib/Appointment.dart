

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sahihomes/LoginView.dart';
import 'package:sahihomes/MyColors.dart';
import 'package:sahihomes/SelectContactPopUp.dart';

class Appointment extends StatefulWidget {
// final Future<void> Function() onPressed;
final Color? Function() onCompleted;
 Appointment(this.onCompleted);

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return getScaffoldWidget(context);
  }


  Scaffold getScaffoldWidget(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black.withAlpha(6),
body: Center(
child:   Container(
  width: 300,
  height:380,
 decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: HexColor.fromHex(MyColors.chatLightOrange)
  ),
  child: Column(
  
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
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("APPOINTMENT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
       Text("REQUEST",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 18),)
    ],
  ),
),

Expanded(child: Container(
  padding: EdgeInsets.all(20),
  child: SingleChildScrollView(
    child: Column(
      children: [
        getNameTextfieldWidget(context),
      getMobileNumberTextfieldWidget(context),
      getDateTextfieldWidget(context),
      getTimeTextfieldWidget(context),
      ],
    ),
  ),
)),

  Container(
  height: 50,
  padding: EdgeInsets.only(right: 20),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
    color: HexColor.fromHex(MyColors.darkGreen),
    
  ),
  child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      TextButton(onPressed: () {
         Navigator.pop(context);
      }, child: Row(
        children: const [
                      Icon(Icons.close,color: Colors.white,),
          Text("CANCEL",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
        ],
      ),
      ),

       TextButton(onPressed: () {
           Navigator.pop(context);
           widget.onCompleted.call();
       }, child:  const Text("SAVE",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white,fontSize: 18),),
      )
    ],
  ),
),
],    ),
),
),
  );
  }

  Column getNameTextfieldWidget(BuildContext context) {
    return Column(
        children: [
 Container(
        height: 40,
        child: TextField(
           decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'NAME',
            hintStyle: TextStyle(color: HexColor.fromHex(MyColors.darkGreen))


          ),
        ),
       ),
       getSpaceWithHeightWidget(10),
       Container(height: 1,width: MediaQuery.of(context).size.width,color:  HexColor.fromHex(MyColors.darkGreen),)
        ],
      );
  }

  Column getMobileNumberTextfieldWidget(BuildContext context) {
    return Column(
        children: [
 Container(
        height: 40,
        child: TextField(
           decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'MOBILE NO.',
            hintStyle: TextStyle(color: HexColor.fromHex(MyColors.darkGreen))


          ),
        ),
       ),
       getSpaceWithHeightWidget(10),
       Container(height: 1,width: MediaQuery.of(context).size.width,color:  HexColor.fromHex(MyColors.darkGreen),)
        ],
      );
  }

  Column getDateTextfieldWidget(BuildContext context) {
    return Column(
        children: [
 Container(
        height: 40,
        child: TextField(
           decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'DATE',
            hintStyle: TextStyle(color: HexColor.fromHex(MyColors.darkGreen))


          ),
        ),
       ),
       getSpaceWithHeightWidget(10),
       Container(height: 1,width: MediaQuery.of(context).size.width,color:  HexColor.fromHex(MyColors.darkGreen),)
        ],
      );
  }


  Column getTimeTextfieldWidget(BuildContext context) {
    return Column(
        children: [
 Container(
        height: 40,
        child: TextField(
           decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'TIME',
            hintStyle: TextStyle(color: HexColor.fromHex(MyColors.darkGreen))


          ),
        ),
       ),
       getSpaceWithHeightWidget(10),
       Container(height: 1,width: MediaQuery.of(context).size.width,color:  HexColor.fromHex(MyColors.darkGreen),)
        ],
      );
  }



}