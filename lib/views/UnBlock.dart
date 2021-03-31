import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendison/views/Blocked.dart';
import 'package:sendison/views/Chat.dart';
import 'package:sendison/views/Profile.dart';


class UnBlock extends StatelessWidget {
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
                Get.to(Chat());
              },
              child: Image.asset('assets/icons/inside/InsideBack.png',
                scale: 3,)),
        ),
        backgroundColor: Colors.black,
        body: Container(
          height: Get.height,
          width: Get.width,
          padding: EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
              bottom: Get.width/4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Get.width/2,
                height: Get.width/2,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.white,
                        width: 10
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      // fit: BoxFit.cover,
                        image: AssetImage("assets/icons/profile/blockPrfile.png")
                    )
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: Get.width/1.9,
                child: Text("Blocked".toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontWeight: FontWeight.w600
                  ),),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
         // height: 130,
          padding: EdgeInsets.only(left: 20,right: 20,bottom: 15),
          child: MaterialButton(
            minWidth: Get.width,
            onPressed: () {
              Get.to(Profile());
            },
            color: Color(0xffFF2D55),
            height: 45,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6)),
            child: Text(
              'Unblock',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
