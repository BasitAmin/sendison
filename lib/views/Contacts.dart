import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendison/views/BottomNavBar.dart';
import 'package:sendison/views/Calls.dart';
import 'package:sendison/views/Group.dart';
import 'package:sendison/views/Inbox.dart';
import 'package:sendison/views/Settings.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('Contacts',style: TextStyle(
                  fontSize: 50,fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: 30,),
            Container(
              child: Icon(Icons.group_rounded,size: 150,),
            ),
            Container(
              child: Text('Import Your \n Existing Contacts',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: 70,),
            MaterialButton(
              minWidth: Get.width/1.8,
              onPressed: (){
                Get.to(BottomNavBar());
              },
              color: Color(0xff0FBE6C),
              height: 45,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6) ),
              child: Text('Import',style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
            ),

            FlatButton(
                onPressed: (){},
                child: Text('Later',style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold,
                    color: Colors.grey.withOpacity(0.5)),)
            ),
          ],
        ),
      ),
    );
  }
}
