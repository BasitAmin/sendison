import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendison/views/Blocked.dart';


class BlockProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
            Text("Block Profile?".toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.w600
              ),),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 130,
        padding: EdgeInsets.only(left: 20,right: 20,bottom: 15),
        child: Column(
          children: [
            MaterialButton(
              minWidth: Get.width,
              onPressed: () {
                Get.to(Blocked());
              },
              color: Color(0xffFF2D55),
              height: 45,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              child: Text(
                'Block',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            SizedBox(height: 10,),
            MaterialButton(
              minWidth: Get.width,
              onPressed: () {
                Get.back();
              },
              color: Colors.white,
              height: 45,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              child: Text(
                'Cancel',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
