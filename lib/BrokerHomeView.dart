

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sahihomes/AddNotes.dart';
import 'package:sahihomes/ChatView.dart';
import 'package:sahihomes/CommonWidget.dart';
import 'package:sahihomes/LoginView.dart';
import 'package:sahihomes/MyImages.dart';
import 'package:sahihomes/ViewAllProperties.dart';

class BrokerHomeView extends StatefulWidget {
  // const BrokerHomeView({super.key,required bool showProprty});

bool showProprty = false;
BrokerHomeView(this.showProprty);
  @override
  State<BrokerHomeView> createState() => _BrokerHomeViewState(showProprty);
}

class _BrokerHomeViewState extends State<BrokerHomeView> {

_BrokerHomeViewState(this.showProprty);
bool showBottomSheet = false;
bool showProprty = false;
var propertyImagesArray = [MyImages.property7,MyImages.property2,MyImages.property3,MyImages.property4,MyImages.property5,MyImages.property6,MyImages.property1,];

var profileImagesArray = [MyImages.profilePhoto1,MyImages.profilePhoto1,MyImages.profilePhoto2,MyImages.profilePhoto2,MyImages.profilePhoto3,MyImages.profilePhoto4,MyImages.profilePhoto5,
MyImages.profilePhoto6,MyImages.profilePhoto7,MyImages.profilePhoto8,MyImages.profilePhoto9,MyImages.profilePhoto10
];

var namesArray = ["Clark Kent", "Lois Lane","Allie Grater","Hazel Nutt","Henry Higgins","Chris Anthemum","Anne Teak","Hope Furaletter","Frank Furter","Clark Kent", "Lois Lane","Allie Grater","Hazel Nutt","Henry Higgins","Chris Anthemum","Anne Teak","Hope Furaletter","Frank Furter"];



@override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: showBottomSheet ? getCommonBottomSheetWidget(context, () {
        setState(() {
          showBottomSheet = false;
        });
      }) : null,
      bottomNavigationBar: getBottomTabBarWidget(context, 1, () {
        setState(() {
          showBottomSheet = !showBottomSheet;
        });
      }),
      body: SafeArea(
    // child:   getColumnWidget(),
    
    child:  ListView.builder(
      itemCount: profileImagesArray.length,
      itemBuilder: (context, index) {
      return index == 0 ? getColumnWidget() : getInteractionsWidget(index);
    }),
    // SingleChildScrollView(child: getColumnWidget()),
                  
        ),
  
    );
  }

  Widget getInteractionsWidget(int index){
     return (index == 1 || index == 3) ?  Container(height: 40,
width: MediaQuery.of(context).size.width,
color: Colors.white,
padding: EdgeInsets.only(left: 20,right: 20),
child: Row(
  children: [
    Text(index == 1 ? "Active Interactions": "Prospect Buyers",style: TextStyle(color: Colors.grey.shade800, fontSize: 18,fontWeight: FontWeight.w500),), Expanded(child: Container()),Text( index == 0 ? "2-3 days" : "",style: TextStyle(color: Colors.grey.shade600, fontSize: 16))
  ],
),
) :
        Container(
height: 80,
width: MediaQuery.of(context).size.width,
padding: EdgeInsets.only(left: 10,right: 10),
// color: Colors.red,
child: Row(
  children: [
    ClipOval(child: Image.asset(profileImagesArray[index],width: 60,height: 60,fit: BoxFit.cover,)),
Expanded(child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    
   index == 2  ? getPropertyLikedWidget() : Container(),
  //  getPropertyLikedWidget(),
    getNotesWidget(index)
  ],
)),
InkWell(
  onTap: () {
    print(index);
         Navigator.push(context,  MaterialPageRoute(builder: (context) => ChatView(profileImagesArray[index],namesArray[index])));          
  },
  child: Image.asset(MyImages.startChatIcon,width: 120,))

  ],
),
       );
  }

     InkWell getPropertyLikedWidget() {
      return InkWell(
    onTap: () {
      
    },
    child: Container(
      padding: EdgeInsets.only(left: 20),
      height: 40,
      // color: Colors.red,
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            // color: Colors.green,
            child: Image.asset(MyImages.likedIcon),
          ),
          // Container(width: 10,),
          Text("Property Liked",style: TextStyle(color: Colors.grey.shade600, fontSize: 14,fontWeight: FontWeight.normal))
        ],
      )),
  );
    }

    InkWell getNotesWidget(int index) {
      return InkWell(
    onTap: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AddNotes( profileImagesArray[index],namesArray[index])), );
    },
    child: Container(
      padding: EdgeInsets.only(left: 20),
      height: 40,
      // color: Colors.red,
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            // color: Colors.green,
            child: Image.asset(MyImages.notesIcon),
          ),
          Container(width: 20,),
          Text("Notes",style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold))
        ],
      )),
  );
    }



  Column getColumnWidget() {
    return Column(
    children: [
     getStackViewWidgetForLogo(context,true),
     getBrokerProfileTitleWidget("JOHN DOE"),
     getSpaceWithHeightWidget(50),
     getAddressTextfieldWidget(),
     getSpaceWithHeightWidget(70),
    showProprty ? Container(height: 40,
     padding: const EdgeInsets.only(left: 20,right: 20),
     child: Row(
      children: [
        const Text("Properties",style: TextStyle(fontSize: 20),),
        Expanded(child: Container()),
        TextButton(onPressed: () {
          //ViewAllProperties
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ViewAllProperties()),
  );
        }, child: const Text("View All"))
      ],
     ),
     ): Container(),
     showProprty ? getSpaceWithHeightWidget(10) : Container(),
    showProprty ?  Container(
      height: 240,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: ListView.builder(
        itemCount: propertyImagesArray.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
         return Container(color: Colors.transparent,
         height: 200,
         width: 200,
         padding: const EdgeInsets.all(10),
         child: Container(
          height: 180,
          width: 180,
          // color: Colors.blue,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
Image.asset(propertyImagesArray[index],height: 130,width: 200,fit: BoxFit.fill,),
getSpaceWithHeightWidget(10),
Container(child: const Text("Available SALE only",style: TextStyle(fontWeight: FontWeight.bold),)),
// getSpaceWithHeightWidget(10),
Container(child: const Text("1-4 Beds, 1-2 Baths",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 13),)),
Container(child: Row(
  children: [
    Image.asset(MyImages.navHome,height: 20,width: 10,),
    Container(width: 5),
    const Text("252 1st Avenue",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12),),
  ],
)),
            ],
          ),
         ),
         );
      },),
     ) : Container(),
    //  Expanded(child: Container(color: Colors.red,
    //  child: ListView.builder(itemBuilder: (context, index) {
    //    return Container(color: Colors.amber,);
    //  },),
    //  ))
   showProprty ? Container() : getBrokerPropertyTitleWidget(),
   showProprty ? Container() : getSpaceWithHeightWidget(40),
   showProprty ? Container() :  getBrokerNoPropertyTitleWidget(),
   
    ] ,
    );
  }


   Container getAddressTextfieldWidget(){
  return Container(height: 60,color: Colors.transparent,
  padding: const EdgeInsets.only(left: 20,right: 20),
  width: MediaQuery.of(context).size.width,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 60,
        width: 30,
        // color: Colors.red,
        color: Colors.transparent,child: Image.asset("assets/locationIcon.png")
      ),
      const SizedBox(width: 10,),
      Container(
        alignment: Alignment.centerLeft,
color: Colors.transparent,
width: MediaQuery.of(context).size.width - 80,
height:60,
child: const Text("DWARKA"),
// child: const TextField(
//   decoration: InputDecoration(
//     border: InputBorder.none,
//     hintText: 'Address',
//     focusedBorder: InputBorder.none,
//     contentPadding: EdgeInsets.only(left: 15,right: 15)
//   ),
// ),
      ),
    
    ],
  ),
  );
  } 

   Widget getBrokerPropertyTitleWidget() {
    return Container(
// width: 250,
padding: const EdgeInsets.only(left: 20),
alignment: Alignment.centerLeft,
child: const Text("Properties",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),));
  }

   Widget getBrokerNoPropertyTitleWidget() {
    return  Container(
// width: 250,
padding: const EdgeInsets.only(left: 20),
child: const Text("NO ENTERY YET, START ADDING...",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),));
  }



}