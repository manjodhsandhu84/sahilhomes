

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sahihomes/MyColors.dart';
import 'package:sahihomes/SelectContactPopUp.dart';

class PropertyCopyPopup extends StatefulWidget {
  const PropertyCopyPopup({super.key});

  @override
  State<PropertyCopyPopup> createState() => _PropertyCopyPopupState();
}

class _PropertyCopyPopupState extends State<PropertyCopyPopup> {
  @override
  Widget build(BuildContext context) {
    return getScaffoldWidget(context);
  }

  Scaffold getScaffoldWidget(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black.withAlpha(6),
body: Center(
child:   Container(
  width: MediaQuery.of(context).size.width * 0.7,
  height: MediaQuery.of(context).size.height * 0.6,
 decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: HexColor.fromHex(MyColors.chatLightOrange)
  ),
  child: Column(
  
children: [
Container(
  height: 80,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
    color: HexColor.fromHex(MyColors.darkGreen)
  ),
),

Expanded(child: Container(child: Center(child: Text("Details Are COPY\nPlease edit the details",style: TextStyle(fontWeight: FontWeight.bold,color: HexColor.fromHex(MyColors.darkGreen)),),),)),

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

}