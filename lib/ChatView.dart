

import 'package:flutter/material.dart';
import 'package:sahihomes/CommonWidget.dart';
import 'package:sahihomes/MyColors.dart';
import 'package:sahihomes/MyImages.dart';
import 'package:sahihomes/SelectContactPopUp.dart';

class ChatView extends StatefulWidget {

var nameToShow = "";
var imageToShow = "";
ChatView(this.imageToShow,this.nameToShow);
  @override
  State<ChatView> createState() => _ChatViewState(this.imageToShow,this.nameToShow);
}

class _ChatViewState extends State<ChatView> {

var nameToShow = "";
var imageToShow = "";

_ChatViewState(this.imageToShow,this.nameToShow);

var sideArray = [true,false,true,false];
var messagesArray = ["WOULD YOU LIKE TO RATE\nTHIS BUYER, NOW.","PLEASE SHARE YOUR PHONE NUMBER","YES SURE IT IS 9876543219,\nFELL FREE TO CALL ANY TIME","I WILL YOU TODAY IN THE EVENING\nAND SHARE YOUR PROPERTY DETAILS ALSO."];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: getHeaderForNavigationWidget(), 
      ),
      body: SafeArea(child: Column(
children: [
getStackViewWidgetForLogo(),

Expanded(
  child:   Container(
    color:  HexColor.fromHex(MyColors.chatLightOrange),
    child:   ListView.builder(
      itemCount: 4,
      shrinkWrap: true,
      itemBuilder: (context, index) {

      return sideArray[index] == true ? getLeftBallonWidget(context,index) : getRightBallonWidget(context,index);
    },),
  ),
)
],

      )),
    );
  }

  Container getRightBallonWidget(BuildContext context,int index) {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
             width: MediaQuery.of(context).size.width * 0.7,
            padding: EdgeInsets.all(20),
              // color: HexColor.fromHex(MyColors.chatDarkGreen),
                  decoration: BoxDecoration(
                color: HexColor.fromHex(MyColors.chatDarkGreen),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10))
              ),
            child: Text(messagesArray[index],style: TextStyle(fontWeight: FontWeight.bold),)),
            Container(height: 20,width: 20,color: Colors.transparent,child: Image.asset(MyImages.chatRightBallon),)
        ],
      ),
    );
  }

  Container getLeftBallonWidget(BuildContext context,int index) {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
             width: MediaQuery.of(context).size.width * 0.7,
            padding: EdgeInsets.all(20),
              // color: HexColor.fromHex(MyColors.chatLightGreen),
              decoration: BoxDecoration(
                color: HexColor.fromHex(MyColors.chatLightGreen),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomRight: Radius.circular(10))
              ),
            child: Text(messagesArray[index],style: TextStyle(fontWeight: FontWeight.bold),)),
            Container(height: 20,width: 20,color: Colors.transparent,child: Image.asset(MyImages.chatLeftBallon),)
        ],
      ),
    );
  }

  Container getHeaderForNavigationWidget() {
    return Container(
        height: 70,
        color: HexColor.fromHex(MyColors.darkGreen),
        padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),

        child: Row(
          children: [
            Expanded(child: Container(
              height: 50,
              // color: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25)
              ),
              child: Row(
                children: [
                  Expanded(child: TextField()),
                  IconButton(onPressed: () {}, icon: Icon(Icons.mic))
                ],
              ),
            )),
            IconButton(onPressed: () {}, icon: Image.asset(MyImages.sendMessage),)
          ],
        ),
      );
  }

Stack getStackViewWidgetForLogo() {
    return Stack(
      children: [
        Container(
          color: Colors.transparent,
          child: Column(
            children: [
Container(height: 100,
  decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                 0.1,
                0.4,
                0.6,
                0.9,
                // 0.1,
                // 0.4,
                // 0.6,
                // 0.9,
              ],
              colors: [
                Colors.green.shade900,
                Colors.green.shade700,
                Colors.green,
                Colors.green,
              ],
            ),
          
      ),
)

            ],
          ),
        ),
        Container(
          height: 100,
          child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 30,
                height: 100,
                color: Colors.transparent,
                child: Image.asset(MyImages.backIcon),
              ),
            ),
               getRoundProfileWithBorderWidget(82,82,imageToShow: imageToShow),
               Container(width: 10,),
               Expanded(child:Container(
                // alignment: Alignment.center,
                color: Colors.transparent,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                   Text(nameToShow,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 26),),
                  ],
                ),
               )),
               Container( 
                height: 100,
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 20,bottom: 10),
                child: TextButton(
                  onPressed: () {

                  },
                  child: Text("RATE THIS\nBUYER",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
               )
          ],
          
          ),
        )
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Container(height: 50,),
        //     Center(
        //       child: Container(
        //         height: 140,
        //         width: 140,
        //         decoration: BoxDecoration(
        //           color: Colors.grey.shade300,
        //         borderRadius: BorderRadius.circular(70),
        //         boxShadow: [BoxShadow(
        //            color: Colors.grey.withOpacity(0.7),
        // spreadRadius: 1,
        // blurRadius: 3,
        // offset: Offset(0, 3),
        //         )],
        //         ),
        //         // color: Colors.yellow,
        //         // child: Center(
        //         //   // width: 40,
        //         //   // height: 40,
        //         //   child: Stack(
        //         //     children: [
        //         //       ClipOval(child: Image.asset(MyImages.profileImage,width: 140,height: 140,fit: BoxFit.cover,)),
        //         //       Container(
        //         //         alignment: Alignment.bottomRight,
        //         //         height:130 ,width: 140,color: Colors.transparent,child: Image.asset(MyImages.starIcon),)
        //         //     ],
        //         //   )),
        //       ),
        //     ),
        //   ],
        // )
     
      ],
    );
  }



}