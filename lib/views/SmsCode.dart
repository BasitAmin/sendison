import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendison/views/Contacts.dart';

class SmsCode extends StatefulWidget {
  @override
  _SmsCodeState createState() => _SmsCodeState();
}

class _SmsCodeState extends State<SmsCode> {
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
                top: Get.width/2.9,
                left: 20,
                right: 20,
                bottom: Get.width/2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: Get.width/6,
                  child: Text('SMS Code',style: TextStyle(
                    fontSize: 50,fontWeight: FontWeight.w600),),
                ),

                Container(
                  width: Get.width,
                  height: Get.width/6,
                  padding: EdgeInsets.only(left: 25,right: 25),
                  child: Text('+1 123 456 7890',
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 32,
                        fontFamily: "NoirPro",
                        fontWeight: FontWeight.w600),),
                ),

                Container(
                  width: Get.width/2.3,
                  height: Get.width/4,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      hintText: '1-2-3-4',
                      hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                        fontSize: 38,
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
                      Get.to(Contacts());
                    },
                    color: Color(0xff0FBE6C),
                    height: 45,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6) ),
                    child: Text('Confirm',style: TextStyle(
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
