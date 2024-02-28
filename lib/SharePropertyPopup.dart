


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sahihomes/MyColors.dart';
import 'package:sahihomes/MyImages.dart';
import 'package:sahihomes/SelectContactPopUp.dart';

class SharePropertyPopup extends StatefulWidget {
  const SharePropertyPopup({super.key});

  @override
  State<SharePropertyPopup> createState() => _SharePropertyPopupState();
}

class _SharePropertyPopupState extends State<SharePropertyPopup> {

// var profileImagesArray = [MyImages.profilePhoto1,MyImages.profilePhoto1,MyImages.profilePhoto2,MyImages.profilePhoto2,MyImages.profilePhoto3,MyImages.profilePhoto4,MyImages.profilePhoto5,
// MyImages.profilePhoto6,MyImages.profilePhoto7,MyImages.profilePhoto8,MyImages.profilePhoto9,MyImages.profilePhoto10
// ];

// var namesArray = ["Clark Kent", "Lois Lane","Allie Grater","Hazel Nutt","Henry Higgins","Chris Anthemum","Anne Teak","Hope Furaletter","Frank Furter","Clark Kent", "Lois Lane","Allie Grater","Hazel Nutt","Henry Higgins","Chris Anthemum","Anne Teak","Hope Furaletter","Frank Furter"];
  var associateArray = [MyImages.associate7,MyImages.associate8,MyImages.associate9,MyImages.associate4,MyImages.associate5,MyImages.associate6,MyImages.associate1,MyImages.associate2,MyImages.associate3,];
var isSelectedArray = [false,false,false,false,false,false,false,false,false,false,false,false,false,];
var namesArray = ["Clark Kent", "Lois Lane","Allie Grater","Hazel Nutt","Henry Higgins","Chris Anthemum","Anne Teak","Hope Furaletter","Frank Furter"];
var phoneArray = ["+91 974554325","+91 97976543324","+91 933523553","+91 981634261834","+91 93445252354","+91 982432435","+91 94567424223","+91 2425324536","+91 92344543545","+91 9675435677"];

  @override
  Widget build(BuildContext context) {
    return  getScaffoldWidget(context);
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
    color: Colors.grey.shade800,
  ),
  child: Column(
  
children: [
Container(
  height: 80,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
    color: HexColor.fromHex(MyColors.darkGreen)
    
  ),
  child: const Center(child: Text("SHARE URL OR\nINVITE TO APP",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
),

// Expanded(child: Container(child: Center(child: Text("Details Are COPY\nPlease edit the details",style: TextStyle(fontWeight: FontWeight.bold,color: HexColor.fromHex(MyColors.darkGreen)),),),)),

Expanded(child: Container(
  padding: EdgeInsets.only(left: 20,right: 20),
  child: ListView.builder(
    itemCount: 2,
    itemBuilder: (context, index) {
return getContainerForListView(index);
  }),
)),


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
       }, child:  const Text("SHARE",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white,fontSize: 18),),
      )
    ],
  ),
),
],    ),
),
),
  );
  }

    Container getContainerForListView(int index) {
    return Container(
height: 100,
// color: Colors.blue,
child: Column(
children: [
  Container(height: 99,
  child: Row(
    children: [
   
      Container(
        height: 72,
        width: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          border: Border.all(
            color: HexColor.fromHex(MyColors.darkGreen),
            width: 2,
          ),
        
        ),
        child: ClipOval(
          // clipBehavior: Clip.hardEdge,
        
          child: Image.asset(associateArray[index],height: 70,width: 70,fit: BoxFit.fill,)),
      ),
      
      Expanded(child: Container(
child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [
  Container(
    padding: EdgeInsets.only(left: 10,right: 10),
    alignment: Alignment.centerLeft,
    child: Text(namesArray[index],style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),)),
     Container(
    padding: EdgeInsets.only(left: 10,right: 10),
    alignment: Alignment.centerLeft,
    child: Text(phoneArray[index],style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal,color: Colors.white),)),
  
],
),

      )),
       InkWell(
        onTap: (() {
          setState(() {
            isSelectedArray[index] = !isSelectedArray[index];
          });
        }),
        child: Container(width: 40,color: Colors.transparent,child: isSelectedArray[index] == true ? Image.asset(MyImages.selectedAssociate) :  Image.asset(MyImages.unSelectedAssociate),))
    ],
  ),
  ),
  Container(

    height: 1,color: HexColor.fromHex(MyColors.darkGreen),)
],
),

           );
  }

}