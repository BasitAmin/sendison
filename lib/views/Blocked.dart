import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sendison/views/UnBlock.dart';


class Blocked extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Get.to(UnBlock());
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff999999),
                    width: 10,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  height: Get.width/2,
                  decoration: BoxDecoration(
                      color: Colors.white,

                      shape: BoxShape.circle,
                      image: DecorationImage(
                         fit: BoxFit.contain,
                          image: AssetImage("assets/icons/profile/Blocked.png")
                      )
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Blocked".toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.w600
              ),),
            Container(
              width: Get.width/4.5,
              height: Get.width/5.5,
              child: SvgPicture.asset('assets/images/Profile Screens/Other Profile/Visit Other Profile Block Confirmed Small Icon Icon.svg',
              ),
            )
          ],
        ),
      ),

    );
  }
}
