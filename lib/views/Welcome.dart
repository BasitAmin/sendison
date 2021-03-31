import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sendison/views/SmsCode.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            width: Get.width,
            height: Get.height,
            padding: EdgeInsets.only(
                top: 60,
                left: 20,
                right: 20,
                bottom: Get.width/4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Welcome',style: TextStyle(
                          fontSize: 50,
                        fontFamily: "NoirPro",
                        fontWeight: FontWeight.w600
                      ),),
                      SizedBox(width: 20,),
                      Image.asset('assets/images/LoginSignUpScreens/waving.png',
                        scale: 4,
                         ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: Get.width/1.9,
                      height: Get.width/2,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Colors.blue,
                        shape: BoxShape.circle,
                        border: Border.all(width: 4,color: Color(0xff01AFF7)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/LoginSignUpScreens/Profile Image Placeholder Bright Mode.png'),

                        )
                      ),
                      // child: Image.asset('assets/images/LoginSignUpScreens/Profile Image Placeholder Bright Mode.png',
                      // scale: 4,fit: BoxFit.cover,),
                    ),
                    Positioned(
                      top: 150,
                      left: 35,
                      bottom: 0,
                      child: MaterialButton(
                        minWidth: Get.width/3,
                        onPressed: (){
                          Get.to(Welcome());
                        },
                        color: Color(0xff6830F7),
                        height: 20,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6) ),
                        child: Text('Choose',style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: Get.width/1.8,
                  height: Get.width/10,
                  alignment: Alignment.center,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'Full Name...',
                      hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  width: Get.width/1.5,
                  height: Get.width/4,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Image.asset("assets/icons/newcalls/PhoneCall.png",scale: 3,),
                      hintText: '+11 12 13 14 15',
                      hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 40,right: 40),
                  child: MaterialButton(
                      minWidth: Get.width,
                    onPressed: (){
                      Get.to(SmsCode());
                    },
                    color: Color(0xff0FBE6C),
                    height: 45,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6) ),
                    child: Text('Save',style: TextStyle(
                        fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
