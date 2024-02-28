

import 'package:flutter/material.dart';
import 'package:sahihomes/MyColors.dart';
import 'package:sahihomes/MyImages.dart';
import 'package:sahihomes/SelectContactPopUp.dart';

class AddNotes extends StatefulWidget {


var nameToShow = "";
var imageToShow = "";

AddNotes(this.imageToShow,this.nameToShow);

  @override
  State<AddNotes> createState() => _AddNotesState(this.imageToShow,this.nameToShow);
}

class _AddNotesState extends State<AddNotes> {

var nameToShow = "";
var imageToShow = "";

_AddNotesState(this.imageToShow,this.nameToShow);

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(nameToShow);
    print(imageToShow);
  }

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
        child: Column(
          children: [
            getStackViewWidgetForLogoForMyNotes(),
            Container(height: 50,color: Colors.transparent,
            child: Text(nameToShow,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
            ),
            Expanded(child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.all(20),
              child: Container(
                // color: Colors.amber,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade400,
                    width: 2,
                  ),
                  color: Colors.grey.shade200
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

 Stack getStackViewWidgetForLogoForMyNotes() {
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
              // Colors.green.shade700,
              // Colors.green,
                 HexColor.fromHex(MyColors.lightGreen),
                 HexColor.fromHex(MyColors.lightGreen),
              // Colors.green,
           
            ],
          ),
        
      ),
),
          ],
        ),
Container(
  
  alignment: Alignment.topLeft,
  padding: EdgeInsets.all(10),
  color: Colors.transparent,
  // width: MediaQuery.of(context).size.width / 2,
  // height: 100,
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("NOTES",style: TextStyle(color: Colors.white,fontSize: 42,fontWeight: FontWeight.bold),),
      Text("IN DISCUSSION WITH",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.normal),),
  ],
),),
//  Expanded(child: Container()),
      Row(
        children: [
          Expanded(child: Container()),
          Column(
            children: [
              Container(height: 20,),
              Container( padding: EdgeInsets.all(10),
              // color: Colors.red,
              width: 120
              ,height: 120,
              child:ClipOval(child: Image.asset(imageToShow,fit: BoxFit.fill,width: 60,height: 60,))
              ),
            ],
          ),
          Container(width: 20,)
        ],
      ),

      ],
    );
  }
}