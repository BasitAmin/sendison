import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendison/views/Welcome.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Text('SendiSon',style: TextStyle(
                  fontSize: 50,color: Colors.blue),),
            ),
            Container(
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage:
                NetworkImage('https://via.placeholder.com/150'),
                backgroundColor: Colors.transparent,
              ),
            ),
            Container(
              child: Text('Privacy Is The One And \n Only Focus We Have!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
              fontWeight: FontWeight.bold),),
            ),
            MaterialButton(
              minWidth: Get.width/1.5,
              onPressed: (){
                Get.to(Welcome());
              },
              color: Color(0xff0FBE6C),
              height: 45,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6) ),
              child: Text('Get Satrted',style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
