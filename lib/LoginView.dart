

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sahihomes/BrokerProfile.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Container(),
    body: Column(
    children: [
getSpaceWithHeightWidget(60),
SizedBox(
  width: 250,
  child: Image.asset("assets/sahitext.png")),
getSpaceWithHeightWidget(20),
  const SizedBox(
  // width: 250,
  child: Text("BROKER SIGN UP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)),

  getSpaceWithHeightWidget(20),
  const SizedBox(
  // width: 250,
  child: Text("SIGN UP to create your account.",style: TextStyle(fontWeight: FontWeight.w100,fontSize: 22),)),
   getSpaceWithHeightWidget(50),
   getPhoneTextfieldWidget(),
   getGreyLineWidget(),
    getSpaceWithHeightWidget(20),
    getPasswordTextfieldWidget(),
     getGreyLineWidget(),
     getSpaceWithHeightWidget(70),
     Container(height: 70,color: Colors.transparent,
     child: TextButton(onPressed: () {

   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const BrokerProfile()),
  );

     }, child: Container(height: 60,color: Colors.green.shade900,child: const Center(child: Text("SIGN UP",style: TextStyle(color: Colors.white,fontSize: 20),)),)),
     ),
    ],
    ),
    );
  }



  Container getPhoneTextfieldWidget(){
  return Container(height: 60,color: Colors.transparent,
  padding: const EdgeInsets.only(left: 20,right: 20),
  width: MediaQuery.of(context).size.width,
  child: Row(
    children: [
      Container(
        height: 60,
        width: 30,
        // color: Colors.red,
        color: Colors.transparent,child: Image.asset("assets/phoneicon.png")
      ),
      Container(
color: Colors.transparent,
width: MediaQuery.of(context).size.width - 70,
height:60,
child: const TextField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Phone',
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


   Container getPasswordTextfieldWidget(){
  return Container(height: 60,color: Colors.transparent,
  padding: const EdgeInsets.only(left: 20,right: 20),
  width: MediaQuery.of(context).size.width,
  child: Row(
    children: [
      Container(
        height: 60,
        width: 30,
        // color: Colors.red,
        color: Colors.transparent,child: Image.asset("assets/passwordicon.png")
      ),
      Container(
color: Colors.transparent,
width: MediaQuery.of(context).size.width - 190,
height:60,
child: const TextField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'OTP',
    focusedBorder: InputBorder.none,
    contentPadding: EdgeInsets.only(left: 15,right: 15)
  ),
),
      ),
      SizedBox(
        width: 120,
        child: TextButton(onPressed: () {} , child: const Text("RESEND OTP",style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w200),)))
    ],
  ),
  );
  } 

 
}

 Container getSpaceWithHeightWidget(double height) => Container(height: height,);

   Container getGreyLineWidget() {
    return Container(padding: const EdgeInsets.only(left: 20,right: 20,),child: Container(height: 1,
 
 color: Colors.grey,),);
  }