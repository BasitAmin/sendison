import 'package:flutter/material.dart';
import 'package:get/get.dart';


class GroupVoiceCall extends StatelessWidget {
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
            Stack(
              children: [
                Positioned(
                  left: 0.1,
                  child: Container(
                    height: Get.width/2.3,
                    width: Get.width/2.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        border: Border.all(
                            color: Color(0xff3cbda8),
                            width: 6
                        ),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          //  fit: BoxFit.cover,
                            image: AssetImage("assets/icons/facetime/VoiceCall.png")
                        )
                    ),
                  ),
                ),
                Container(
                  height: Get.width/2.3,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Color(0xff3cbda8),
                          width: 6
                      ),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                         // fit: BoxFit.cover,
                          image: AssetImage("assets/icons/facetime/VoiceCall.png")
                      )
                  ),
                ),
                Positioned(
                  right: 0.1,
                  child: Stack(
                    children: [
                      Container(
                        height: Get.width/2.3,
                        width: Get.width/2.3,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color(0xff3cbda8),
                                width: 6
                            ),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              //  fit: BoxFit.cover,
                                image: AssetImage("assets/icons/facetime/VoiceCall.png")
                            )
                        ),
                      ),
                      Positioned(
                        right: 0.1,
                        top: 0.1,
                        child: Container(
                          width: 50,
                          height: 32,
                          padding: EdgeInsets.only(top: 5),
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Text('12',textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Text("Group Call",
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
