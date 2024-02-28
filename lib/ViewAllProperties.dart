

import 'package:flutter/material.dart';
import 'package:sahihomes/AddProperty.dart';
import 'package:sahihomes/MyColors.dart';
import 'package:sahihomes/MyImages.dart';
import 'package:sahihomes/PropertyCopyPopup.dart';
import 'package:sahihomes/SelectContactPopUp.dart';
import 'package:sahihomes/SharePropertyPopup.dart';

class ViewAllProperties extends StatefulWidget {
  const ViewAllProperties({super.key});

  @override
  State<ViewAllProperties> createState() => _ViewAllPropertiesState();
}

class _ViewAllPropertiesState extends State<ViewAllProperties> {

var propertyImagesArray = [MyImages.property7,MyImages.property2,MyImages.property3,MyImages.property4,MyImages.property5,MyImages.property6,MyImages.property1,];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
return Container(
  padding: EdgeInsets.all(20),
  child: Column(
    children: [
      Stack(
        children: [
          Container(
            height: 150,
            clipBehavior: Clip.hardEdge,
            width:  MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
            ),
            child: Image.asset(propertyImagesArray[index],height: 150,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,)),
            // getLiveAndOfflineWidget()
        ],
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        color: Colors.transparent,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 40,
                color: Colors.transparent,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("1,200 sq.ft 4 Beds 2 Bath 4r wf",style: TextStyle(fontSize: 12),softWrap: true,maxLines: 1),
                    Row(children: [
                      Icon(Icons.location_on,size: 12,color: Colors.red),
                       Text("252 1st Avenuef",style: TextStyle(fontSize: 12,color: Colors.grey),)
                    ],)
                  ],
                ),
              ),
            ),
             Container(
              alignment: Alignment.center,
              color: Colors.transparent,
              height: 40,
              child: IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddProperty()));
              }, icon: Icon(Icons.edit,color: HexColor.fromHex(MyColors.darkGreen),)),
            ),
             Container(
              alignment: Alignment.center,
              color: Colors.transparent,
              height: 40,
              child: IconButton(onPressed: () {
                //PropertyCopyPopup
                showDialog(context: context, builder: (context) => PropertyCopyPopup());
              }, icon: Icon(Icons.copy,color: HexColor.fromHex(MyColors.darkGreen),)),
            ),
             Container(
              alignment: Alignment.center,
              color: Colors.transparent,
              height: 40,
              child: IconButton(onPressed: () {
                showDialog(context: context, builder: (context) => SharePropertyPopup());
              }, icon: Icon(Icons.share,color: HexColor.fromHex(MyColors.darkGreen),)),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.transparent,
              height: 40,
              child: Text("\$4,999",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red)),
            )
          ],
        ),
      ),
    ],
  ),
);        
      },)),
    );
  }

  Container getLiveAndOfflineWidget() {
    return Container(
            height: 150,
            color: Colors.transparent,
            alignment: Alignment.topRight,
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(height: 30,
                width: 80,
                alignment: Alignment.center,
                child: Text("LIVE",style: TextStyle(color: Colors.white),),
                decoration: BoxDecoration(
                  color: HexColor.fromHex(MyColors.lightGreen),
                  border: Border.all(
                    color: HexColor.fromHex(MyColors.darkGreen),
                    width: 2,
                  ),
                  
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20))
                ),
                ),
                Container(height: 30,
                width: 80,
                alignment: Alignment.center,
                child: Text("OFFLINE",style: TextStyle(color: HexColor.fromHex(MyColors.darkGreen)),),
                decoration: BoxDecoration(
                  // color: HexColor.fromHex(MyColors.lightGreen),
                  border: Border.all(
                    color: HexColor.fromHex(MyColors.darkGreen),
                    width: 2,
                  ),
                  
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20))
                ),
                ),
              ],
            ),
          );
  }
}