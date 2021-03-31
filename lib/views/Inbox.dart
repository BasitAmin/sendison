import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sendison/views/Chat.dart';
import 'package:sendison/views/NewChat.dart';
class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Chat",style: TextStyle(
            fontSize: 28,fontWeight: FontWeight.w600,color: Colors.black),
        ),
        bottomOpacity: 10,
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
            onTap: (){
              Get.to(NewChat());
            },
            child: Image.asset('assets/icons/outside/Chat Screen Click New Chat Icon.png',
              width: 20),
          ),
          SizedBox(
            width: 10,
          ),
        ],


      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 35,
              child: TextFormField(

                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 5),
                  isDense: true,
                  prefixIcon: Icon(Icons.search,size: 20,color: Colors.grey,),
                  fillColor: Colors.grey.withOpacity(0.2),
                  filled: true,
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.2)
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.2)
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.2)
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  ListTile(
                    onTap: (){
                      Get.to(Chat());
                    },
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2,color: Color(0xff01AFF7))
                      ),
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage('assets/images/LoginSignUpScreens/Connect Phone Number Filled Out.png'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    title: Text("Naah Ruehli",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                    subtitle: Text("hi how are you?"),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            shape: BoxShape.circle,
                          ),
                          child: Text("2",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w600),),
                        ),
                        Container(
                          child: Text("12:30"),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2,color: Color(0xff01AFF7))
                      ),
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundImage:
                        AssetImage('assets/images/LoginSignUpScreens/Connect Phone Number Filled Out.png'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    title: Text("Naah Ruehli",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                    subtitle: Text("hi how are you?"),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            shape: BoxShape.circle,
                          ),
                          child: Text("2",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w600),),
                        ),
                        Container(
                          child: Text("12:30"),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2,color: Color(0xff01AFF7))
                      ),
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundImage:
                        AssetImage('assets/images/LoginSignUpScreens/Connect Phone Number Filled Out.png'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    title: Text("Naah Ruehli",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                    subtitle: Text("hi how are you?"),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            shape: BoxShape.circle,
                          ),
                          child: Text("2",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w600),),
                        ),
                        Container(
                          child: Text("12:30"),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2,color: Color(0xff01AFF7))
                          ),
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundImage:
                            AssetImage('assets/images/LoginSignUpScreens/Connect Phone Number Filled Out.png'),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(

                            child: Image.asset('assets/icons/outside/Chat Screen Online Icon.png',
                              scale: 3.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                    title: Text("Naah Ruehli",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                    subtitle: Row(children: [
                      Text("Missed Phone Call",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600
                      ),),
                      SizedBox(width: 2,),
                      Container(

                          child: Image.asset('assets/icons/outside/Chat Screen Phone Call Icon.png',
                            scale: 3,),
                      ),
                    ],),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            shape: BoxShape.circle,
                          ),
                          child: Text("2",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w600),),
                        ),
                        Container(
                          child: Text("12:30"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
