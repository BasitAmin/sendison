import 'package:flutter/material.dart';
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
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Get.to(UnBlock());
              },
              child: Container(
                height: Get.width/1.5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.white,
                        width: 3,
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      // fit: BoxFit.cover,
                        image: AssetImage("assets/icons/profile/Blocked.png")
                    )
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Blocked".toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w400
              ),),
            SizedBox(height: 20,),
            Container(
              child: Icon(Icons.block,
                color: Colors.white,size: 60,),
            )
          ],
        ),
      ),

    );
  }
}
