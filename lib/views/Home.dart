import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sendison/views/Welcome.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.only(top: 60,left: 20,right: 20,bottom: 90),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: SvgPicture.asset('assets/images/LoginSignUpScreens/Start Screen Sendison Text Bright Mode.svg',
                height:Get.width/4,
                //width: Get.width/2,
                ),
              ),
             // SizedBox(height: 25,),
              Container(
                 //width: Get.width/2.2,
                 //height: Get.height/2.2,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                    border: Border.all(width: 7,color: Color(0xffBFBFBF))
                ),
                child: Container(
                  width: Get.width/2,
                  height: Get.width/2.3,
                  padding: EdgeInsets.only(top:10),
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    border: Border.all(width: 7,color: Color(0xff5F5F5F)),
                  ),
                  child: Image.asset('assets/icons/loginandsignup/Start Screen Lock Icon.png',
                  scale: 3.2),
                  // SvgPicture.asset('assets/images/LoginSignUpScreens/Start Screen Lock Icon.svg',
                  //   width: 100,
                  //   height: 100,
                  //   ),
                ),
              ),
             // SizedBox(height: 25,),
              Container(
                padding: EdgeInsets.only(left: 5,right: 5),
                child: Text('Privacy Is The One And Only Focus We Have!',
                  //textAlign: TextAlign.center,
                  softWrap: true,

                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    fontFamily: "NoirPro",
                ),),
              ),
              //SizedBox(height: 25,),
              Container(
                padding: EdgeInsets.only(left: 40,right: 40),
                child: MaterialButton(
                  minWidth: Get.width,
                  onPressed: (){
                    Get.to(Welcome());
                  },
                  color: Color(0xff0FBE6C),
                  height: 45,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6) ),
                  child: Text('Get Satrted',style: TextStyle(
                      fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
