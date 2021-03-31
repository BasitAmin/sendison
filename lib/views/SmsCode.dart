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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text('SMS Code',style: TextStyle(
                  fontSize: 50,fontWeight: FontWeight.w600),),
              ),
              SizedBox(height: 25,),
              Container(
                child: Text('+1 123 756 7890',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600),),
              ),
              SizedBox(height: 50,),
              Container(
                width: Get.width/1.5,
                alignment: Alignment.center,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    hintText: '1-2-3-4',
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100,),
              MaterialButton(
                minWidth: Get.width/1.6,
                onPressed: (){
                  Get.to(Contacts());
                },
                color: Color(0xff0FBE6C),
                height: 48,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6) ),
                child: Text('Confirm',style: TextStyle(
                    fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
