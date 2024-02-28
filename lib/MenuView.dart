

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sahihomes/AddAssociates.dart';
import 'package:sahihomes/AddNewNote.dart';
import 'package:sahihomes/Appointment.dart';
import 'package:sahihomes/AppointmentDone.dart';
import 'package:sahihomes/HelpAndSupport.dart';
import 'package:sahihomes/LoginView.dart';
import 'package:sahihomes/MyAssociate.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {

 var settingsArray = ["My Account","Appointment","Help & Support","Associates","Take Notes","Logout"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
         elevation: 0,
         backgroundColor: Colors.white,
         foregroundColor: Colors.black,
      ),
      body: SafeArea(child: ListView.builder(
        itemCount: settingsArray.length,
        itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          // height: 100,
          child: InkWell(
            onTap: () {
              String title = settingsArray[index];
              if (title == "Appointment") {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Appointment()));
                showDialog(context: context, builder: (context) => Appointment(() {
                  showDialog(context: context, builder: (context) => AppointmentDone());
                  return null;
                }));
                }else if (title == "Help & Support") {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HelpAndSupport()));
                }else if (title == "Associates") {
               Navigator.push(context, MaterialPageRoute(builder: (context) => MyAssociate()));
              }else if (title == "Take Notes") {
               Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewNote()));
              }else if (title == "Logout")  {

                  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed:  () {
      Navigator.pop(context);
    },
  );
  Widget continueButton = TextButton(
    child: Text("Continue"),
    onPressed:  () {

 Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const LoginView(),), (route) => false);

    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Do you want to exit this application?"),
    content: Text("We hate to see you leave..."),
    actions: [
      cancelButton,
      continueButton,
    ],
  );
               
showDialog(context: context, builder: (BuildContext context){
return alert;
});

 
  }
              // }
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(settingsArray[index],style: TextStyle(color: Colors.grey.shade800,fontSize: 16),),
                  Icon(Icons.arrow_forward_ios,size: 12,)
                ],
              ),
            ),
          ),
        );
      })),
    );
  }
}