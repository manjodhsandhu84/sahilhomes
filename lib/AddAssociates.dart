


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sahihomes/CommonWidget.dart';
import 'package:sahihomes/LoginView.dart';
import 'package:sahihomes/MyColors.dart';
import 'package:sahihomes/MyImages.dart';
import 'package:sahihomes/SelectContactPopUp.dart';

class AddAssociates extends StatefulWidget {
  const AddAssociates({super.key});

  @override
  State<AddAssociates> createState() => _AddAssociatesState();
}

class _AddAssociatesState extends State<AddAssociates> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: getColumnWidget(),
        ),
      ),
    );
  }


  Column getColumnWidget() {
    return Column(
    children: [
     getStackViewWidgetForLogo(context,false),
     getSpaceWithHeightWidget(50),
     getFullNameTextfieldWidget(),
     getGreyLineWidget(),
     getSpaceWithHeightWidget(10),
     getPhoneTextfieldWidget(),
     getGreyLineWidget(),
     getSpaceWithHeightWidget(20),
     getAddMoreTitleWidget(),
      getSpaceWithHeightWidget(20),
      getOrWidget(),
      getSpaceWithHeightWidget(70),
      InkWell(
        onTap: () {
          print("User selected add associate.");
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SelectContactPopup()),
  );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 100,height: 100,color: Colors.transparent,child: Image.asset(MyImages.contactBook),),
             Container(width: 250,height: 100,color: Colors.transparent,
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  alignment: Alignment.centerLeft,
                  child: Text("ADD ASSOCIATE",textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold,color: HexColor.fromHex(MyColors.darkGreen),fontSize:18),)),
                 Container(
                  width: 250,
                  alignment: Alignment.centerLeft,
                  child: Text("FROM MY CONTACT LIST",style: TextStyle(fontWeight: FontWeight.normal,color:  HexColor.fromHex(MyColors.darkGreen),fontSize:18),))
              ],
             ),
             )
          ],
        ),
      )

    ],
    );
  }

  Container getOrWidget() {
    return Container(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: Row(
        children: [
          getLineWidgetForOrWidget(),
          Container(width: 50,height: 50,decoration: BoxDecoration(
            color: Colors.white,
            
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            boxShadow: [ BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 2,
      blurRadius: 7,
      offset: Offset(0, 3), // changes position of shadow
    ),]
          ),
          child: Center(child: Text("OR",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade500),)),
          ),
          getLineWidgetForOrWidget()
        ],
      ),
      color: Colors.transparent,height: 60,width: MediaQuery.of(context).size.width,);
  }

  Container getLineWidgetForOrWidget() => Container(height: 1,color: Colors.grey,width: (MediaQuery.of(context).size.width - 90) / 2,);

    Widget getAddMoreTitleWidget() {
    return Container(
      padding: EdgeInsets.all(10),
width: MediaQuery.of(context).size.width,
child: Text("ADD MORE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:  HexColor.fromHex(MyColors.darkGreen)),));
  }


 Container getPhoneTextfieldWidget(){
  return Container(height: 60,color: Colors.transparent,
  padding: const EdgeInsets.only(left: 20,right: 20),
  width: MediaQuery.of(context).size.width,
  child: Row(
    children: [
      Container(
        height: 50,
        width: 30,
        // color: Colors.red,
        color: Colors.transparent,child: Image.asset("assets/phoneicon.png",height: 50,width: 30,)
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
        // color: Colors.transparent,
        child: Image.asset("assets/usericon.png")
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




}