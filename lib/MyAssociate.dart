import 'package:flutter/material.dart';
import 'package:sahihomes/AddAssociates.dart';
import 'package:sahihomes/BrokerHomeView.dart';
import 'package:sahihomes/CommonWidget.dart';
import 'package:sahihomes/MyColors.dart';
import 'package:sahihomes/MyImages.dart';
import 'package:sahihomes/SelectContactPopUp.dart';

class MyAssociate extends StatefulWidget {
  const MyAssociate({super.key});

  @override
  State<MyAssociate> createState() => _MyAssociateState();
}

class _MyAssociateState extends State<MyAssociate> {

bool showBottomSheet = false;
var associateArray = [MyImages.associate1,MyImages.associate2,MyImages.associate3,MyImages.associate4,MyImages.associate5,MyImages.associate6,MyImages.associate7,MyImages.associate8,MyImages.associate9,];
var isSelectedArray = [false,false,false,false,false,false,false,false,false,false,false,false,false,];
var namesArray = ["Clark Kent", "Lois Lane","Allie Grater","Hazel Nutt","Henry Higgins","Chris Anthemum","Anne Teak","Hope Furaletter","Frank Furter"];
var phoneArray = ["+91 974554325","+91 97976543324","+91 933523553","+91 981634261834","+91 93445252354","+91 982432435","+91 94567424223","+91 2425324536","+91 92344543545","+91 9675435677"];

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
        child: Column(
          children: [
            getColumnWidget(),
            getListView()
          ],
        ),

      ),
    );
  }

  Column getColumnWidget() {
    return Column(
      children: [
getStackViewWidgetForLogoForMyAssociate(),
      ],
    );
  }

//    SafeArea getBottomTabBarWidgetForMyAssociate() {
//     return SafeArea(child: Container(height: 80,color: Colors.transparent,
//     child: Stack(
//       children: [
//         Column(
//           children: [
//             Container(height: 20,color: Colors.transparent,),
//             Container(
//               height: 60,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 boxShadow: [
//                    BoxShadow(
//       color: Colors.grey.withOpacity(0.5),
//       spreadRadius: 1,
//       blurRadius: 1,
//       offset: Offset(0, 0), // changes position of shadow
//     ),
//                 ]

//               ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [//navDiscover
//                   TextButton(onPressed: () {
// Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => BrokerHomeView(true),), (route) => false);

//                   }, child: Image.asset(MyImages.navHome,height: 30,width: 30,)),
//                    TextButton(onPressed: () {}, child: Image.asset(MyImages.navDiscover,height: 30,width: 30,)),
//                    Container(height: 60,width: 80,color: Colors.transparent,),
//                     TextButton(onPressed: () {}, child: Image.asset(MyImages.navMessage,height: 30,width: 30,)),
//                      TextButton(onPressed: () {}, child: Image.asset(MyImages.notesIcon,height: 30,width: 30,)),
              
//                 ],
//               ),
//             ),
//           ],
//         ),
//          Center(
//               child: Container(height: 80,width: 80,decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(40),
//                 color: HexColor.fromHex(MyColors.darkGreen),
                
//               ),
//               child: IconButton(onPressed: () {
//                 setState(() {
//                   showBottomSheet = !showBottomSheet;
//                 });
//               } , icon: Icon(Icons.add,color: Colors.white,size: 30,)),
//               ),
//             )
//       ],
//     ),
//     ));
//   }


  //  SafeArea getBottomSheetWidgetForMyAssociate() => SafeArea(child: Container(height: 200,color: Colors.red.withOpacity(0.4),
  // child: Row(
  //   children: [
  //     Container(color: Colors.grey.shade200,width: (MediaQuery.of(context).size.width - 1) / 2,
  //     child: InkWell(
  //       onTap: () {

  //       },
  //       child: Column(
  //         children: [
  //           Image.asset(MyImages.addProperty,color: Colors.black,height: 140,width: 60,),
  //           Text("Add a property",style: TextStyle(color: Colors.grey),)
  //         ],
  //       ),
  //     ),
  //     ),
  //     Container(color: Colors.grey,width: 1,),
  //     // Container(color: Colors.yellow,width: (MediaQuery.of(context).size.width - 1) / 2,)
  //      Container(color: Colors.grey.shade200,width: (MediaQuery.of(context).size.width - 1) / 2,
  //     child: InkWell(
  //       onTap: () {
  //         setState(() {
  //           showBottomSheet = false;
  //         });
  //           Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => const AddAssociates()),
  // );

  //       },
  //       child: Column(
  //         children: [
  //           Image.asset(MyImages.associate,color: Colors.black,height: 140,width: 100,),
  //           Text("Add a Associate",style: TextStyle(color: Colors.grey),)
  //         ],
  //       ),
  //     ),
  //     ),
  //   ],
  // ),
  // ));


  Widget getListView() {
    return Expanded(
      child: Container(
      // height: 400,
      // width: 500,
      // color: Colors.red,
      child: ListView.builder(
        itemCount: associateArray.length,
        itemBuilder: (context, index) {
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
           Container(color: Colors.transparent,
          //  child: index == 1 ? Image.asset(MyImages.selectedAssociate) :  Image.asset(MyImages.unSelectedAssociate)
           
           child: Row(
            children: [
IconButton(onPressed: () {}, icon: Icon(Icons.edit_square,color: HexColor.fromHex(MyColors.darkGreen),)),
IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever,color: HexColor.fromHex(MyColors.darkGreen))),
            ],
           ),
           )
        ],
      ),
      ),
      Container(
        
        height: 1,color: HexColor.fromHex(MyColors.darkGreen),)
        ],
      ),
      
               );
           
      },),
      
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
      color: Colors.transparent,width: MediaQuery.of(context).size.width / 2,height: 100,
    child: Text("MY\nASSOCIATES",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),),
      Container( padding: EdgeInsets.all(10),
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width / 2
      ,height: 100,
      child:Image.asset(MyImages.associate)
      ),
    //  Container(color: Colors.blue,),
  ],
)

      ],
    );
  }


}