
// import 'package:flutter/material.dart';
// import 'package:sahihomes/AddNotes.dart';
// import 'package:sahihomes/ChatView.dart';
// import 'package:sahihomes/CommonWidget.dart';
// import 'package:sahihomes/LoginView.dart';
// import 'package:sahihomes/MyColors.dart';
// import 'package:sahihomes/MyImages.dart';
// import 'package:sahihomes/SelectContactPopUp.dart';

// class ActiveInteractions extends StatefulWidget {
//   const ActiveInteractions({super.key});

//   @override
//   State<ActiveInteractions> createState() => _ActiveInteractionsState();
// }

// class _ActiveInteractionsState extends State<ActiveInteractions> {

//   bool showBottomSheet = false;

// // var profileImagesArray = [MyImages.profilePhoto1,MyImages.profilePhoto1,MyImages.profilePhoto2,MyImages.profilePhoto2,MyImages.profilePhoto3,MyImages.profilePhoto4,MyImages.profilePhoto5,
// // MyImages.profilePhoto6,MyImages.profilePhoto7,MyImages.profilePhoto8,MyImages.profilePhoto9,MyImages.profilePhoto10
// // ];

// // var namesArray = ["Clark Kent", "Lois Lane","Allie Grater","Hazel Nutt","Henry Higgins","Chris Anthemum","Anne Teak","Hope Furaletter","Frank Furter","Clark Kent", "Lois Lane","Allie Grater","Hazel Nutt","Henry Higgins","Chris Anthemum","Anne Teak","Hope Furaletter","Frank Furter"];


//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//         //  bottomSheet: showBottomSheet ? getCommonBottomSheetWidget(context, () {
//         //   setState(() {
//         //     showBottomSheet = false;
//         //   });
//         //  }) : null,
//       // bottomNavigationBar: getBottomTabBarWidget(context, 4, () {
//       //   setState(() {
//       //     showBottomSheet = !showBottomSheet;
//       //   });
//       // }),
//       //getColumnWidget()
//       body: SafeArea(child: getNewNoteWidget()  ),
//     );
//   }

//   Widget getNewNoteWidget() {
 
//       // bottomNavigationBar: SafeArea(
//       //   child: TextButton(onPressed: () {
//       //     Navigator.pop(context);
//       //   }, child: Container(height: 50,color: HexColor.fromHex(MyColors.darkGreen),child: Center(
//       //     child: Text("SUBMIT",style: TextStyle(color: Colors.white,fontSize: 18),),
//       //   ),)),
//       // ),
//       return SafeArea(
//         child: Column(
//           children: [
//             getStackViewWidgetForLogoForMyNotes(),
//             getSpaceWithHeightWidget(25),
//             Container(height:70,color: Colors.transparent,
//             width: MediaQuery.of(context).size.width,
//             padding: EdgeInsets.only(left: 15,right: 15),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Icon(Icons.person),
//                   Container(
// color: Colors.transparent,
// width: MediaQuery.of(context).size.width - 100,
// height:40,
// child: const TextField(
//   decoration: InputDecoration(
//     border: InputBorder.none,
//     hintText: 'Full Name',
//     focusedBorder: InputBorder.none,
//     contentPadding: EdgeInsets.only(left: 15,right: 15)
//   ),
//   //  decoration: new InputDecoration.collapsed(
//   //   hintText: 'Username'
//   // ),
// ),
//                   )
                      
//                     // )
//                   ],
//                 ),
//                 getSpaceWithHeightWidget(10),
//                 Container(height: 1,color: Colors.grey,)
//               ],
//             ),
//             // child: Text("New Note",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
//             ),
//             getNotesTextfieldBoxWidget(),
//             getSpaceWithHeightWidget(20),
//             // TextButton(onPressed: () { }, child: Container(


//             // ))
//           ],
//         ),
      
//     );
//   }

//   Container getNotesTextfieldBoxWidget() {
//     return Container(
//             height: 500,
//             color: Colors.transparent,
//             width: MediaQuery.of(context).size.width,
            
//             padding: const EdgeInsets.all(20),
//             child: Container(
//               // color: Colors.amber,
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   color: Colors.grey.shade400,
//                   width: 2,
//                 ),
//                 color: Colors.grey.shade300
//               ),
//               child: Text("Notes: Please add your notes here.",style: TextStyle(color: Colors.grey),),
//             ),
//           );
//   }

//     Widget getColumnWidget() {
//     return Column(
//     children: [
//      getStackViewWidgetForLogo(),
//      getBrokerProfileTitleWidget("JOHN DOE"),
//      Expanded(child: ListView.builder(
//       itemCount: 10,
//       itemBuilder:(context, index) {
//        return (index == 0 || index == 2) ?  Container(height: 40,
// width: MediaQuery.of(context).size.width,
// color: Colors.white,
// padding: EdgeInsets.only(left: 20,right: 20),
// child: Row(
//   children: [
//     Text(index == 0 ? "Active Interactions": "Prospect Buyers",style: TextStyle(color: Colors.grey.shade800, fontSize: 18,fontWeight: FontWeight.w500),), Expanded(child: Container()),Text( index == 0 ? "2-3 days" : "",style: TextStyle(color: Colors.grey.shade600, fontSize: 16))
//   ],
// ),
// ) :
//         Container(
// height: 80,
// width: MediaQuery.of(context).size.width,
// padding: EdgeInsets.only(left: 10,right: 10),
// // color: Colors.red,
// child: Row(
//   children: [
//     ClipOval(child: Image.asset(MyImages.profileImage,width: 60,height: 60,fit: BoxFit.cover,)),
// Expanded(child: Column(
//   mainAxisAlignment: MainAxisAlignment.center,
//   crossAxisAlignment: CrossAxisAlignment.center,
//   children: [
//    index == 1  ? getPropertyLikedWidget() : Container(),
//     getNotesWidget(index)
//   ],
// )),
// InkWell(
//   onTap: () {
//       // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const ChatView(),), (route) => false);
//           Navigator.push(context,  MaterialPageRoute(builder: (context) =>  ChatView(profileImagesArray[index],namesArray[index])));          
//   },
//   child: Image.asset(MyImages.startChatIcon,width: 120,))

//   ],
// ),
//        );
//      },))
//     //  getSpaceWithHeightWidget(50),
//     //  getAddressTextfieldWidget(),
//     //  getSpaceWithHeightWidget(70),
//     //  getBrokerPropertyTitleWidget(),
//     //  getSpaceWithHeightWidget(40),
//     //  getBrokerNoPropertyTitleWidget()
//     ],
//     );
//   }

//      InkWell getPropertyLikedWidget() {
//       return InkWell(
//     onTap: () {
      
//     },
//     child: Container(
//       padding: EdgeInsets.only(left: 20),
//       height: 40,
//       // color: Colors.red,
//       child: Row(
//         children: [
//           Container(
//             height: 40,
//             width: 40,
//             // color: Colors.green,
//             child: Image.asset(MyImages.likedIcon),
//           ),
//           // Container(width: 10,),
//           Text("Property Liked",style: TextStyle(color: Colors.grey.shade600, fontSize: 14,fontWeight: FontWeight.normal))
//         ],
//       )),
//   );
//     }

//     InkWell getNotesWidget(int index) {
//       return InkWell(
//     onTap: () {
//         Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => AddNotes(profileImagesArray[index],profileImagesArray[index])), );
//     },
//     child: Container(
//       padding: EdgeInsets.only(left: 20),
//       height: 40,
//       // color: Colors.red,
//       child: Row(
//         children: [
//           Container(
//             height: 40,
//             width: 40,
//             // color: Colors.green,
//             child: Image.asset(MyImages.notesIcon),
//           ),
//           Container(width: 20,),
//           Text("Notes",style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold))
//         ],
//       )),
//   );
//     }


//  Stack getStackViewWidgetForLogoForMyNotes() {
//     return Stack(
//       children: [
//         Column(
//           children: [
// Container(height: 100,
//   decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topRight,
//             end: Alignment.bottomLeft,
//             stops: const [
//                0.1,
//               0.4,
//               0.6,
//               0.9,
        
//             ],
//             colors: [
//                  HexColor.fromHex(MyColors.darkGreen).withOpacity(0.9),
//                     HexColor.fromHex(MyColors.darkGreen).withOpacity(0.9),
//               // Colors.green.shade700,
//               // Colors.green,
//                  HexColor.fromHex(MyColors.lightGreen),
//                  HexColor.fromHex(MyColors.lightGreen),
//               // Colors.green,
           
//             ],
//           ),
        
//       ),
// ),
//           ],
//         ),
// Container(
  
//   alignment: Alignment.topLeft,
//   padding: EdgeInsets.all(10),
//   color: Colors.transparent,
//   // width: MediaQuery.of(context).size.width / 2,
//   // height: 100,
// child: Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     Text("NOTES",style: TextStyle(color: Colors.white,fontSize: 42,fontWeight: FontWeight.bold),),
//       Text("IN DISCUSSION WITH",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.normal),),
//   ],
// ),),

// //  Expanded(child: Container()),
//       // Row(
//       //   children: [
//       //     Expanded(child: Container()),
//       //     Column(
//       //       children: [
//       //         Container(height: 20,),
//       //         Container( padding: EdgeInsets.all(10),
//       //         // color: Colors.red,
//       //         width: 120
//       //         ,height: 120,
//       //         child:ClipOval(child: Image.asset(MyImages.associate,fit: BoxFit.fill,width: 60,height: 60,))
//       //         ),
//       //       ],
//       //     ),
//       //     Container(width: 20,)
//       //   ],
//       // ),

//       ],
//     );
//   }
// }






