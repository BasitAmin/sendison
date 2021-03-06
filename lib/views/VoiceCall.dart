import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendison/views/StartCall.dart';


class VoiceCall extends StatelessWidget {
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
                Get.to(StartCall());
              },
              child: Container(
                //3f3f3f
                height: Get.width/1.5,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xff3f3f3f),
                        width: 10
                    ),
                    shape: BoxShape.circle,
                ),
                child: Container(
                  height: Get.width/1.5,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 10
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/icons/facetime/VoiceCall.png")
                    )
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
