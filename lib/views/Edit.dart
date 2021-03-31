import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendison/views/Contacts.dart';
import 'package:sendison/views/SmsCode.dart';

class Edit extends StatefulWidget {
  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Edit",style: TextStyle(
            fontSize: 28,fontWeight: FontWeight.w600,color: Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: Image.asset('assets/icons/inside/InsideBack.png',
              scale: 3,)),

      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height,
          padding: EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
              bottom: Get.width/2
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: Get.width/1.9,
                    height: Get.width/1.8,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.blue,
                        shape: BoxShape.circle,
                        border: Border.all(width: 6,color: Color(0xff01AFF7)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/LoginSignUpScreens/Connect Phone Number Filled Out.png'),

                        )
                    ),
                    // child: Image.asset('assets/images/LoginSignUpScreens/Profile Image Placeholder Bright Mode.png',
                    // scale: 4,fit: BoxFit.cover,),
                  ),
                  Positioned(
                    left: Get.width/9,
                    bottom: -2,
                    child: MaterialButton(
                      minWidth: Get.width/3,
                      onPressed: (){
                        //Get.to(Welcome());
                      },
                      color: Color(0xff6830F7),
                      height: 40,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6) ),
                      child: Text('Choose',style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: Get.width/1.8,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),

                    hintText: 'Noah Ruehli',
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: Get.width/1.5,
                margin: EdgeInsets.only(top: 30,bottom: 40),
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
              SizedBox(height: 30,),
              CupertinoButton(
                onPressed: (){

                },
                minSize: 55,
                padding: EdgeInsets.only(left: Get.width/5,right: Get.width/5),
                color: Color(0xff0FBE6C),
                child: Text('Save',style: TextStyle(
                    fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white),),

              ),

            ],
          ),
        ),
      ),

    );
  }
}
