

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sahihomes/LoginView.dart';
import 'package:sahihomes/MyColors.dart';
import 'package:sahihomes/SelectContactPopUp.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({super.key});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SafeArea(
        child: TextButton(onPressed: () {
          Navigator.pop(context);
        }, child: Container(height: 50,color: HexColor.fromHex(MyColors.darkGreen),child: Center(
          child: Text("SUBMIT",style: TextStyle(color: Colors.white,fontSize: 18),),
        ),)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: getNewNoteWidget(),
        ),
      ),
    );
  }

     Stack getStackViewWidgetForLogoForNewNotes() {
    return Stack(
      children: [
        Column(
          children: [
Container(height: 100,
  decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: const [
               0.1,
              0.4,
              0.6,
              0.9,
            ],
            colors: [
                 HexColor.fromHex(MyColors.darkGreen).withOpacity(0.9),
                 HexColor.fromHex(MyColors.darkGreen).withOpacity(0.9),
                 HexColor.fromHex(MyColors.lightGreen),
                 HexColor.fromHex(MyColors.lightGreen),
            ],
          ),
        
      ),
),
          ],
        ),
Container(
  
  alignment: Alignment.topLeft,
  padding: const EdgeInsets.all(10),
  color: Colors.transparent,
  // width: MediaQuery.of(context).size.width / 2,
  // height: 100,
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    // Text("NOTES",style: TextStyle(color: Colors.white,fontSize: 42,fontWeight: FontWeight.bold),),
      Text("HELP &\nSUPPORT",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.normal),),
  ],
),),

//  Expanded(child: Container()),
      // Row(
      //   children: [
      //     Expanded(child: Container()),
      //     Column(
      //       children: [
      //         Container(height: 20,),
      //         Container( padding: EdgeInsets.all(10),
      //         // color: Colors.red,
      //         width: 120
      //         ,height: 120,
      //         child:ClipOval(child: Image.asset(MyImages.associate,fit: BoxFit.fill,width: 60,height: 60,))
      //         ),
      //       ],
      //     ),
      //     Container(width: 20,)
      //   ],
      // ),

      ],
    );
  }



    Widget getNewNoteWidget() {
      // bottomNavigationBar: SafeArea(
      //   child: TextButton(onPressed: () {
      //     Navigator.pop(context);
      //   }, child: Container(height: 50,color: HexColor.fromHex(MyColors.darkGreen),child: Center(
      //     child: Text("SUBMIT",style: TextStyle(color: Colors.white,fontSize: 18),),
      //   ),)),
      // ),
      return SafeArea(
        child: Column(
          children: [
            getStackViewWidgetForLogoForNewNotes(),
            getSpaceWithHeightWidget(25),
            // getTextfieldWidget(),
            getNotesTextfieldBoxWidget(),
            getSpaceWithHeightWidget(20),
            // TextButton(onPressed: () { }, child: Container( 
            // ))
          ],
        ),
      
    );
  }

    Container getTextfieldWidget() {
      return Container(height:70,color: Colors.red,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 15,right: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.person),
                Container(
color: Colors.transparent,
width: MediaQuery.of(context).size.width - 100,
height:40,
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
                )
                    
                  // )
                ],
              ),
              getSpaceWithHeightWidget(10),
              Container(height: 1,color: Colors.grey,)
            ],
          ),
          // child: Text("New Note",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
          );
    }
      Container getNotesTextfieldBoxWidget() {
    return Container(
            height: 500,
            color: Colors.transparent,
            width: MediaQuery.of(context).size.width,
            
            padding: const EdgeInsets.all(20),
            child: Container(
              // color: Colors.amber,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 2,
                ),
                color: Colors.grey.shade300
              ),
              child: Text("Please add yout query here.",style: TextStyle(color: Colors.grey),),
            ),
          );
  }



}