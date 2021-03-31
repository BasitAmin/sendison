import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendison/views/BlockProfile.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Profile",style: TextStyle(
              fontSize: 28,fontWeight: FontWeight.w600,color: Colors.black),
          ),
          bottomOpacity: 10,
          centerTitle: true,
          leading: InkWell(
              onTap: (){
                Get.back();
              },
              child: Image.asset('assets/icons/inside/InsideBack.png',
                scale: 3,)),
          actions: [
            InkWell(
              onTap: (){
                Get.to(BlockProfile());
              },
                child: Icon(Icons.block,color: Colors.grey[300],)),
            SizedBox(width: 10,),
          ],
        ),
        backgroundColor: Colors.white,
        body: Container(
          width: Get.width,
          height: Get.height,
          padding: EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
              bottom: Get.width/4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 4,color: Color(0xff01AFF7)),
                ),
                child: CircleAvatar(
                  radius: 80.0,
                  backgroundImage:
                  AssetImage('assets/images/LoginSignUpScreens/Connect Phone Number Filled Out.png'),
                  backgroundColor: Colors.transparent,
                ),
              ),

              Container(
                width: Get.width/1.8,
                height: Get.width/4,
                child: Column(
                  children: [
                    Text("Noah Ruehli",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                    ),),
                    Text("+1 356 471 564",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),)
                  ],
                )
              ),

              Container(
                height: Get.width/4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/newcalls/VideoCall.png',
                      scale: 2,),
                    SizedBox(width: 50,),
                    Image.asset('assets/icons/newcalls/PhoneCall.png',scale: 2,),

                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 30,right: 30,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/inside/InsideLibrary.png',scale: 3,),
                        SizedBox(width: 10,),
                        Text('Photos & Videos',style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),),
                        SizedBox(width: 10,),
                        Image.asset('assets/icons/inside/InsideBack.png',
                          scale: 3,
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/inside/InsideDocument.png',scale: 3,),
                        SizedBox(width: 10,),
                        Text('Documents',style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),),
                        SizedBox(width: 10,),
                        Image.asset('assets/icons/inside/InsideBack.png',
                          scale: 3,)
                      ],
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
