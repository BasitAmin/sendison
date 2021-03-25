import 'package:flutter/material.dart';
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
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 35,
            ),
          )
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
                    leading: Stack(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundImage:
                            NetworkImage('https://variety.com/wp-content/uploads/2020/12/tom-cruise.jpg'),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 14,
                            height: 14,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    title: Text("Naah Ruehli",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                    subtitle: Text("hi how are you?",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                    ),),
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
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundImage:
                        NetworkImage('https://variety.com/wp-content/uploads/2020/12/tom-cruise.jpg'),
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
                  ),ListTile(
                    leading: Container(
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundImage:
                        NetworkImage('https://variety.com/wp-content/uploads/2020/12/tom-cruise.jpg'),
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
                  ),ListTile(
                    leading: Container(
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundImage:
                        NetworkImage('https://variety.com/wp-content/uploads/2020/12/tom-cruise.jpg'),
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
                  ),ListTile(
                    leading: Container(
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundImage:
                        NetworkImage('https://variety.com/wp-content/uploads/2020/12/tom-cruise.jpg'),
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
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundImage:
                        NetworkImage('https://variety.com/wp-content/uploads/2020/12/tom-cruise.jpg'),
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
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundImage:
                            NetworkImage('https://variety.com/wp-content/uploads/2020/12/tom-cruise.jpg'),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 14,
                            height: 14,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
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

                          child: Icon(Icons.call,
                            size: 18,
                            color: Colors.pink,)
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
