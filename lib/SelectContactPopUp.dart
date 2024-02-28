

import 'package:flutter/material.dart';
import 'package:sahihomes/MyAssociate.dart';
import 'package:sahihomes/MyColors.dart';
import 'package:sahihomes/MyImages.dart';

class SelectContactPopup extends StatefulWidget {
  const SelectContactPopup({super.key});

  @override
  State<SelectContactPopup> createState() => _SelectContactPopupState();
}

class _SelectContactPopupState extends State<SelectContactPopup> {

  var associateArray = [MyImages.associate7,MyImages.associate8,MyImages.associate9,MyImages.associate4,MyImages.associate5,MyImages.associate6,MyImages.associate1,MyImages.associate2,MyImages.associate3,];
var isSelectedArray = [false,false,false,false,false,false,false,false,false,false,false,false,false,];
var namesArray = ["Clark Kent", "Lois Lane","Allie Grater","Hazel Nutt","Henry Higgins","Chris Anthemum","Anne Teak","Hope Furaletter","Frank Furter"];
var phoneArray = ["+91 974554325","+91 97976543324","+91 933523553","+91 981634261834","+91 93445252354","+91 982432435","+91 94567424223","+91 2425324536","+91 92344543545","+91 9675435677"];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
       body: Center(child: Container(height:  MediaQuery.of(context).size.height * 0.6,width: MediaQuery.of(context).size.width * 0.85,color: Colors.transparent,
       child: Column(
        children: [
          getTopViewWidget(),
           Container(height: ( MediaQuery.of(context).size.height * 0.6) - 150,
           //DFF1CA
           color: HexColor.fromHex(MyColors.yellowGreen),
           child: ListView.builder(
              padding: EdgeInsets.only(left: 10,right: 10),
            itemCount:associateArray.length,
            itemBuilder: (context, index) {
             return getContainerForListView(index);
         
           },),
           ),
           Container(height: 50,
             child: Row(
      children: [
            TextButton(onPressed: () {
          Navigator.pop(context);
        }, child: Row(
          children: [
            Icon(Icons.close,color: Colors.white,),
            Text("CLOSE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
          ],
        ))
    ,
        Expanded(child: Container()),
        TextButton(onPressed: () {
          // Navigator.pop(context);
          
    //         Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const MyAssociate()),
  // );

Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MyAssociate(),), (route) => false);

        }, child: Text("INVITE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),))
      ],
    ),
            decoration: BoxDecoration(
            color: HexColor.fromHex(MyColors.darkGreen),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
          ),
           )
        ],
       ),
       )) ,
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
    child: Text(namesArray[index],style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: HexColor.fromHex(MyColors.darkGreen)),)),
     Container(
    padding: EdgeInsets.only(left: 10,right: 10),
    alignment: Alignment.centerLeft,
    child: Text(phoneArray[index],style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal,color: HexColor.fromHex(MyColors.darkGreen)),)),
  
],
),

      )),
       InkWell(
        onTap: (() {
          setState(() {
            isSelectedArray[index] = !isSelectedArray[index];
          });
        }),
        child: Container(width: 70,color: Colors.transparent,child: isSelectedArray[index] == true ? Image.asset(MyImages.selectedAssociate) :  Image.asset(MyImages.unSelectedAssociate),))
    ],
  ),
  ),
  Container(

    height: 1,color: HexColor.fromHex(MyColors.darkGreen),)
],
),

           );
  }

  Container getTopViewWidget() {
    return Container(height: 100,
        decoration: BoxDecoration(
          color: HexColor.fromHex(MyColors.darkGreen),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
          
        ),
        child: Row(
          children: [
            Expanded(child:    Container(width: 250,height: 100,color: Colors.transparent,
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10),
                // width: 250,
                alignment: Alignment.centerLeft,
                child: Text("ADD ASSOCIATE",textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:16),)),
               Container(
                 padding: EdgeInsets.only(left: 10),
                // width: 250,
                alignment: Alignment.centerLeft,
                child: Text("FROM MY CONTACT LIST",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white,fontSize:16),))
            ],
           ),
           )),
               Container( padding: EdgeInsets.all(10),
    color: Colors.transparent,
    width: 100
    ,height: 100,
    child:Image.asset(MyImages.contactBook,color: Colors.white,)
    ),
          ],
        ),
        );
  }
}


extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}