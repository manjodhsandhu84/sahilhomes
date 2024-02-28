


 import 'package:flutter/material.dart';
import 'package:sahihomes/ActiveInteractions.dart';
import 'package:sahihomes/AddAssociates.dart';
import 'package:sahihomes/AddNewNote.dart';
import 'package:sahihomes/AddProperty.dart';
import 'package:sahihomes/BrokerHomeView.dart';
import 'package:sahihomes/MenuView.dart';
import 'package:sahihomes/MyColors.dart';
import 'package:sahihomes/MyImages.dart';
import 'package:sahihomes/SelectContactPopUp.dart';

Stack getStackViewWidgetForLogo(BuildContext context,bool showMenuBar) {
    return Stack(
      children: [
        Container(
          height: 200,
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 50,color: Colors.transparent,
            alignment: Alignment.centerLeft,
            child: showMenuBar ? IconButton(onPressed: () {
            //menu button
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const MenuView()));
    // Navigator.push(context, route)
            }, icon: Icon(Icons.menu,color: Colors.white,),) : Container(),
            ),
            Center(
              child: Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(70),
                boxShadow: [BoxShadow(
                   color: Colors.grey.withOpacity(0.7),
        spreadRadius: 1,
        blurRadius: 3,
        offset: Offset(0, 3),
                )],
                ),
                // color: Colors.yellow,
                child: Center(
                  // width: 40,
                  // height: 40,
                  child: Stack(
                    children: [
                      ClipOval(child: Image.asset(MyImages.profileImage,width: 140,height: 140,fit: BoxFit.cover,)),
                      Container(
                        alignment: Alignment.bottomRight,
                        height:130 ,width: 140,color: Colors.transparent,child: Image.asset(MyImages.starIcon),)
                    ],
                  )),
              ),
            ),
          ],
        )
      ],
    );
  }


 SizedBox getBrokerProfileTitleWidget(String name) {
    return  SizedBox(
// width: 250,
child: Text(name ,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 24),));
  }




Container getRoundProfileWithBorderWidget(double width,double height,{String imageToShow = ""}) {
  return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width/2),
          border: Border.all(
            color: HexColor.fromHex(MyColors.darkGreen),
            width: 2,
          ),
        
        ),
        child: ClipOval(
          // clipBehavior: Clip.hardEdge,
        
          child: Image.asset((imageToShow != "") ? imageToShow : MyImages.profileImage,height: (height - 2 ),width: (width - 2 ),fit: BoxFit.fill,)),
      );
}



SafeArea getBottomTabBarWidget(BuildContext context,int currentTab, Function() onCountChanged) {
    return SafeArea(child: Container(height: 80,color: Colors.white,
    child: Stack(
      children: [
        Column(
          children: [
            Container(height: 20,color: Colors.transparent,),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                   BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 1,
      blurRadius: 1,
      offset: const Offset(0, 0), // changes position of shadow
    ),
                ]

              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [//navDiscover
                  TextButton(onPressed: () {
                    if (currentTab != 1) {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => BrokerHomeView(true),), (route) => false);

                    }
                  }, child: Image.asset(MyImages.navHome,height: 30,width: 30,)),
                   TextButton(onPressed: () {}, child: Image.asset(MyImages.navDiscover,height: 30,width: 30,)),
                   Container(height: 60,width: 80,color: Colors.transparent,),
                    TextButton(onPressed: () {}, child: Image.asset(MyImages.navMessage,height: 30,width: 30,)),
                     TextButton(onPressed: () {
                      if (currentTab != 4) {
                      //  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const ActiveInteractions(),), (route) => false);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewNote()));
                      }
                     }, child: Image.asset(MyImages.notesIcon,height: 30,width: 30,)),
              
                ],
              ),
            ),
          ],
        ),
         Center(
              child: Container(height: 80,width: 80,decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: HexColor.fromHex(MyColors.darkGreen),
                
              ),
              child: IconButton(onPressed: () {
                onCountChanged();
           
              } , icon: const Icon(Icons.add,color: Colors.white,size: 30,)),
              ),
            )
      ],
    ),
    ));
  }


Widget getCommonBottomSheetWidget(BuildContext context,Function() hideBottomSheet) { 
  return SafeArea(child: Container(height: 200,color: Colors.red.withOpacity(0.4),
  child: Row(
    children: [
      Container(color: Colors.grey.shade200,width: (MediaQuery.of(context).size.width - 1) / 2,
      child: InkWell(
        onTap: () {
     hideBottomSheet();
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const AddProperty()),);
        },
        child: Column(
          children: [
            Image.asset(MyImages.addProperty,color: Colors.black,height: 140,width: 60,),
            const Text("Add a property",style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
      ),
      Container(color: Colors.grey,width: 1,),
      // Container(color: Colors.yellow,width: (MediaQuery.of(context).size.width - 1) / 2,)
       Container(color: Colors.grey.shade200,width: (MediaQuery.of(context).size.width - 1) / 2,
      child: InkWell(
        onTap: () {
        
          hideBottomSheet();
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const AddAssociates()),
  );

        },
        child: Column(
          children: [
            Image.asset(MyImages.associate,color: Colors.black,height: 140,width: 100,),
            const Text("Add a Associate",style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
      ),
    ],
  ),
  ));
}