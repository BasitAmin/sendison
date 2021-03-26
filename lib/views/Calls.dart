import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendison/views/NewCall.dart';
class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Calls",style: TextStyle(
            fontSize: 28,fontWeight: FontWeight.w600,color: Colors.black),
        ),
        bottomOpacity: 10,
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
            onTap: (){
              Get.to(NewCall());
            },
            child: Image.asset('assets/icons/calls/Calls-Screen-New-Call-Icon.png',width: 20,),
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
                    leading: Container(
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundImage:
                        NetworkImage('https://variety.com/wp-content/uploads/2020/12/tom-cruise.jpg'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    title: Row(children: [
                      Text("John",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),),
                      SizedBox(width: 2,),
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
                    ],),
                    subtitle: Row(children: [
                      Text("Missed Video Call",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                      ),),
                      SizedBox(width: 2,),
                      Container(

                          child: Image.asset('assets/icons/calls/Calls-Screen-Video-Call-Icon.png',width: 20,),
                      ),
                    ],),
                    trailing:Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("Sunday",style: TextStyle(color: Colors.grey),)),
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
                    title: Row(children: [
                      Text("Rixkky",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),),
                      SizedBox(width: 2,),
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
                    ],),
                    subtitle: Row(children: [
                      Text("Missed Phone Call",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600
                      ),),
                      SizedBox(width: 2,),
                      Container(

                          child: Image.asset('assets/icons/calls/Calls-Screen-Phone-Call-Icon.png',width: 20,),
                      ),
                    ],),
                    trailing:Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("Sunday",style: TextStyle(color: Colors.grey),)),
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
                    title: Row(children: [
                      Text("Naah Ruehli",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),),
                      SizedBox(width: 2,),

                    ],),
                    subtitle: Row(children: [
                      Text("1 hour,26 Minutes"),
                      SizedBox(width: 2,),
                      Container(

                          child: Image.asset('assets/icons/calls/Calls-Screen-Phone-Call-Icon.png',width: 20,),
                      ),
                    ],),
                    trailing:Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("12:34",style: TextStyle(color: Colors.grey),)),
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
