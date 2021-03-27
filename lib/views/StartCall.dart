import 'package:flutter/material.dart';
import 'package:get/get.dart';


class StartCall extends StatelessWidget {
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
              //3f3f3f
              height: Get.width/1.5,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey[600],
                    width: 3,
                ),
                boxShadow: [
                  BoxShadow(color: Colors.grey[300],blurRadius: 10,offset: Offset(-2,0,)),
                ],
                shape: BoxShape.circle,
              ),
              child: Container(
                height: Get.width/1.5,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.greenAccent,
                        width: 4,
                    ),
                    shape: BoxShape.circle,
                ),
                child: Container(
                  child: CircleAvatar(
                    radius: 70.0,
                    backgroundImage:
                    NetworkImage('https://variety.com/wp-content/uploads/2020/12/tom-cruise.jpg'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Noah Ruehli",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w600
              ),),
            SizedBox(height: 20,),
            Text("00:00:23",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w400
              ),),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 20,right: 20,bottom: 15),
        child: MaterialButton(
          minWidth: Get.width-250,
          onPressed: () {
            Get.back();
          },
          color: Colors.red,
          height: 45,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'End Phone Call ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(width: 5,),
              Image.asset('assets/icons/newcalls/StartPhone.png',scale: 3,),
            ],
          ),
        ),
      ),
    );
  }
}
