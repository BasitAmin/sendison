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
                top: Get.width/2.5,
                left: 20,
                right: 20,
                bottom: Get.width/2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('SMS Code',style: TextStyle(
                  fontSize: 50,fontWeight: FontWeight.w600),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('+1 123 456 7890',
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: "NoirPro",
                          fontWeight: FontWeight.w600),),
                  ],
                ),
                SizedBox(
                  height: Get.width/6,
                ),
                Container(
                  width: Get.width/1.8,
                  height: Get.width/4,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '1-2-3-4',
                      hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                        fontSize: 45,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.width/6,
                ),
                CupertinoButton(
                  onPressed: (){
                    Get.to(Contacts());
                  },
                  minSize: 55,
                  padding: EdgeInsets.only(left: Get.width/5,right: Get.width/5),
                  color: Color(0xff0FBE6C),
                  child: Text('Confirm',style: TextStyle(
                      fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white),),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
