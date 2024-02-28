

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sahihomes/CommonWidget.dart';
import 'package:sahihomes/LoginView.dart';
import 'package:sahihomes/ProfileCreated.dart';

class BrokerProfile extends StatefulWidget {
  const BrokerProfile({super.key});

  @override
  State<BrokerProfile> createState() => _BrokerProfileState();
}

class _BrokerProfileState extends State<BrokerProfile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: SafeArea(
  child:   Column(
    children: [
      getStackViewWidgetForLogo(context,false),
       getBrokerProfileTitleWidget("BROKER PROFILE"),
       getSpaceWithHeightWidget(50),
   getFullNameTextfieldWidget(),
   getGreyLineWidget(),
    getSpaceWithHeightWidget(20),
    getAddressTextfieldWidget(),
     getGreyLineWidget(),
     getSpaceWithHeightWidget(70),
     Container(height: 70,color: Colors.transparent,
     child: TextButton(onPressed: () {
      
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ProfileCreated()),
  );

     }, child: Container(height: 60,color: Colors.green.shade900,child: const Center(child: Text("SUBMIT",style: TextStyle(color: Colors.white,fontSize: 20),)),)),
     ),
    ],
  ),
),

    );
  }

   Container getFullNameTextfieldWidget(){
  return Container(height: 60,color: Colors.transparent,
  padding: const EdgeInsets.only(left: 20,right: 20),
  width: MediaQuery.of(context).size.width,
  child: Row(
    children: [
      Container(
        height: 60,
        width: 30,
        // color: Colors.red,
        color: Colors.transparent,child: Image.asset("assets/usericon.png")
      ),
      Container(
color: Colors.transparent,
width: MediaQuery.of(context).size.width - 70,
height:60,
child: const TextField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Full Name',
    focusedBorder: InputBorder.none,
    contentPadding: EdgeInsets.only(left: 15,right: 15)
  ),
  //  decoration: new InputDecoration.collapsed(
  //   hintText: 'Username'
  // ),
),
// height: 60,

      )
    ],
  ),
  );
  } 


   Container getAddressTextfieldWidget(){
  return Container(height: 60,color: Colors.transparent,
  padding: const EdgeInsets.only(left: 20,right: 20),
  width: MediaQuery.of(context).size.width,
  child: Row(
    children: [
      Container(
        height: 60,
        width: 30,
        // color: Colors.red,
        color: Colors.transparent,child: Image.asset("assets/locationIcon.png")
      ),
      Container(
color: Colors.transparent,
width: MediaQuery.of(context).size.width - 70,
height:60,
child: const TextField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Address',
    focusedBorder: InputBorder.none,
    contentPadding: EdgeInsets.only(left: 15,right: 15)
  ),
),
      ),
    
    ],
  ),
  );
  } 

 

//   SizedBox getBrokerProfileTitleWidget() {
//     return const SizedBox(
// // width: 250,
// child: Text("BROKER PROFILE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),));
//   }

}