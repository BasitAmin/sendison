import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendison/views/BlockProfile.dart';
import 'package:sendison/views/Edit.dart';
import 'package:sendison/views/Settings.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Profile",style: TextStyle(
            fontSize: 28,fontWeight: FontWeight.w600,color: Colors.black),
        ),
        bottomOpacity: 10,
        //centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
              onTap: (){
                Get.to(Settings());
              },
              child: Icon(Icons.settings,color: Colors.grey[300],)),
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

            OutlinedButton(
              onPressed: (){
                Get.to(Edit());
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 2, color: Colors.grey[300]),
              ),
              child: Text('Edit',style: TextStyle(
                  fontSize: 18,color: Colors.grey[300]),),
            ),
          ],
        ),
      ),
    );
  }
}
