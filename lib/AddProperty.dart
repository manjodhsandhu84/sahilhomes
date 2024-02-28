
import 'package:flutter/material.dart';
import 'package:sahihomes/CommonWidget.dart';
import 'package:sahihomes/LoginView.dart';
import 'package:sahihomes/MyColors.dart';
import 'package:sahihomes/MyImages.dart';
import 'package:sahihomes/SelectContactPopUp.dart';

class AddProperty extends StatefulWidget {
  const AddProperty({super.key});

  @override
  State<AddProperty> createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {

  bool showBottomSheet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: showBottomSheet ? getCommonBottomSheetWidget(context, () {
          setState(() {
            showBottomSheet = false;
          });
         }) : null,
      bottomNavigationBar: getBottomTabBarWidget(context, 0, () {
        setState(() {
          showBottomSheet = !showBottomSheet;
        });
      }),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: 100,
              // width: MediaQuery.of(context).size.width,
              // color: Colors.red,
              child: getStackViewWidgetForLogoForMyAssociate(),
              ),
              getTextfldWidgetWithTitle("CITY",FontWeight.bold),
               getTextfldWidgetWithTitle("AREA",FontWeight.bold),
                 getTextfldWidgetWithTitle("PROJECT NAME",FontWeight.bold),
                   getTextfldWidgetWithTitle("RENT OR SALE",FontWeight.normal),
                    getTextfldWidgetWithTitle("ASSOCATE",FontWeight.normal),
                     getTextfldWidgetWithTitle("CARPET AREA (sq. ft)",FontWeight.normal),
                     getTextfldWidgetWithTitle("SUPER AREA (sq. ft)",FontWeight.normal),
                     getTextfldWidgetWithTitle("ASSOCATE",FontWeight.normal),
                     getTextfldWidgetWithTitle("QUOTED PRICE",FontWeight.normal),
                     getTextfldWidgetWithTitle("BEST PRICE",FontWeight.normal),
                     getTextfldWidgetWithTitle("MAINTENANCE CHARGES",FontWeight.normal),
                     getTextfldWidgetWithTitle("TYPE",FontWeight.normal),
                     getTextfldWidgetWithTitle("FORMAT",FontWeight.normal),
                     getTextfldWidgetWithTitle("LOCATION PIN",FontWeight.normal),
                     getTextfldWidgetWithTitle("KEYS WITH",FontWeight.normal),
getTextfldWidgetWithTitle("IMAGES",FontWeight.normal),

Container(

padding: EdgeInsets.all(20),
child: Container(
  color: Colors.blueGrey.shade100,
  width: MediaQuery.of(context).size.width,
  child: TextButton(
    onPressed: () {
  Navigator.pop(context);
    },
    child: Text("SAVE & COPY",style: TextStyle(color: Colors.grey.shade700),),
  // height: 40,
  // color: Colors.grey.shade400,
  
  ),
),
),

getSpaceWithHeightWidget(20)

            ],
          ),
        ),
      ),
    );
  }

   Stack getStackViewWidgetForLogoForMyAssociate() {
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
Row(

  children: [
    Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.all(10),
      color: Color(0x00000000),width: MediaQuery.of(context).size.width / 2,height: 100,
    child: Text("PROJECT\nDETAILS",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),),
      Container( padding: EdgeInsets.only(left: 10,right: 10,top: 30),
      alignment: Alignment.bottomRight,
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width / 2
      ,height: 100,
      child:Image.asset(MyImages.addPropertyIcon)
      ),
    //  Container(color: Colors.blue,),
  ],
)

      ],
    );
  }

  Container getTextfldWidgetWithTitle(String title,FontWeight fontWeight) {
    return Container(
              padding: EdgeInsets.all(20),
              // child: TextField(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Container(child: Text( title,style: TextStyle(fontWeight: fontWeight ,color: Colors.grey, ),)),
                  Container(height: 10,),
                  Container(height: 1,color: Colors.grey,),
                    Container(height: 0,),
                ],
              ),
            );
  }
}