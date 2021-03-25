import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendison/views/SmsCode.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text('Welcome',style: TextStyle(
                    fontSize: 50,),),
              ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      border: Border.all(width: 4,color: Color(0xff01AFF7)),
                    ),
                    child: CircleAvatar(
                      radius: 80.0,
                      backgroundImage:
                      NetworkImage('https://variety.com/wp-content/uploads/2020/12/tom-cruise.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Positioned(
                    top: 130,
                    left: 20,
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
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),

                    hintText: 'Full Name...',
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                width: Get.width/1.5,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Icon(Icons.phone,color: Colors.black,size: 35,),
                    hintText: '+11 12 13 14 15',
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              MaterialButton(
                minWidth: Get.width/1.8,
                onPressed: (){
                  Get.to(SmsCode());
                },
                color: Color(0xff0FBE6C),
                height: 45,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6) ),
                child: Text('Save',style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
