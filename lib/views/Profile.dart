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
    return Scaffold(
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
        padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    border: Border.all(width: 4,color: Color(0xff01AFF7)),
                  ),
                  child: CircleAvatar(
                    radius: 80.0,
                    backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Positioned(
                  top: 130,
                  left: 20,
                  bottom: 0,
                  child: MaterialButton(
                    minWidth: Get.width/3,
                    onPressed: (){
                      //Get.to(Welcome());
                    },
                    color: Color(0xff6830F7),
                    height: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6) ),
                    child: Text('Choose',style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Container(
              width: Get.width/1.8,
              child: Text("Noah Ruehli",
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w600,
              ),)
            ),
            SizedBox(height: 3,),
            Container(
                width: Get.width/1.8,
                child: Text("+1 356 471 564",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),)
            ),
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/newcalls/VideoCall.png',
                  scale: 2,),
                SizedBox(width: 50,),
                Image.asset('assets/icons/newcalls/PhoneCall.png',scale: 2,),

              ],
            ),
            SizedBox(height: 70,),
            Container(
              padding: EdgeInsets.only(left: 50,right: 30,),
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
                        scale: 3,)
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
            // MaterialButton(
            //   minWidth: Get.width/1.8,
            //   onPressed: (){
            //    // Get.to(SmsCode());
            //   },
            //   color: Color(0xff0FBE6C),
            //   height: 45,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(6) ),
            //   child: Text('Save',style: TextStyle(
            //       fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
            // ),

          ],
        ),
      ),
    );
  }
}
