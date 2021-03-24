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
      body: Container(
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
                    radius: 70.0,
                    backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Positioned(
                  top: 120,
                  left: 30,
                  bottom: 0,
                  child: MaterialButton(
                    minWidth: 70,
                    onPressed: (){
                      Get.to(Welcome());
                    },
                    color: Color(0xff6830F7),
                    height: 25,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6) ),
                    child: Text('Choose',style: TextStyle(
                        fontSize: 18,fontWeight: FontWeight.bold,
                        color: Colors.white),),
                  ),
                ),
              ],
            ),
            Container(
              width: Get.width/1.5,
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),

                  hintText: 'Full Name...',
                  hintStyle: TextStyle(
                    color: Colors.grey.withOpacity(0.5),
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
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
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            MaterialButton(
              minWidth: Get.width/1.5,
              onPressed: (){
                Get.to(SmsCode());
              },
              color: Color(0xff0FBE6C),
              height: 45,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6) ),
              child: Text('Save',style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
            ),

          ],
        ),
      ),
    );
  }
}
