import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sendison/views/BottomNavBar.dart';
import 'package:sendison/views/Calls.dart';
import 'package:sendison/views/Group.dart';
import 'package:sendison/views/Inbox.dart';
import 'package:sendison/views/Profile.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: Get.width,
          height: Get.height,
          padding: EdgeInsets.only(
              top: 60,
              left: 20,
              right: 20,
              bottom: Get.width/4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: Get.width/4,
                child: Text('Contacts',style: TextStyle(
                    fontSize: 50,fontWeight: FontWeight.w600),),
              ),

              Container(
                width: Get.width,
                height: Get.width/3,
                child: SvgPicture.asset('assets/images/LoginSignUpScreens/Import Contacts Icon.svg',
              ),
              ),

              Container(
                height: Get.width/3,
                child: Text('Import Your \n Existing Contacts',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600),),
              ),

              Container(
                padding: EdgeInsets.only(left: 40,right: 40),
                child: MaterialButton(
                  minWidth: Get.width,
                  onPressed: (){
                    Get.to(BottomNavBar());
                  },
                  color: Color(0xff0FBE6C),
                  height: 45,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6) ),
                  child: Text('Import',style: TextStyle(
                      fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white),),
                ),
              ),

              Container(
                child: FlatButton(
                    onPressed: (){},
                    child: Text('Later',style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold,
                        color: Colors.grey.withOpacity(0.5)),)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
