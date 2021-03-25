import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendison/views/Calls.dart';
import 'package:sendison/views/Chat.dart';
import 'package:sendison/views/NewCall.dart';
import 'package:sendison/views/NewChat.dart';
import 'package:sendison/views/SmsCode.dart';

class Group extends StatefulWidget {
  @override
  _GroupState createState() => _GroupState();
}

class _GroupState extends State<Group> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Group",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: ()
            {
              Get.back();
            },
            child: Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.black,
        )),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height,
          padding: EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 10),
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
                      border: Border.all(width: 4, color: Color(0xff01AFF7)),
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
                      minWidth: Get.width / 3,
                      onPressed: () {
                        //Get.to(Welcome());
                      },
                      color: Color(0xff6830F7),
                      height: 20,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      child: Text(
                        'Choose',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: Get.width / 1.8,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'Group Name',
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              MaterialButton(
                minWidth: Get.width / 1.8,
                onPressed: () {
                  Get.to(NewCall());
                },
                color: Color(0xff0FBE6C),
                height: 45,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                child: Text(
                  'Create Group',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
