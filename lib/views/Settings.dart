import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Settings",style: TextStyle(
            fontSize: 28,fontWeight: FontWeight.w600,color: Colors.black),
        ),
        centerTitle: true,
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: Image.asset('assets/icons/inside/InsideBack.png',
              scale: 3,)),

      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Account',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            Divider(),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Icon(Icons.add),
              SizedBox(width: 15,),
              Text('Language'),
            ],),
            Divider(),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.add),
                SizedBox(width: 15,),
                Text('Push Notifications'),
              ],),
            Divider(),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.add),
                SizedBox(width: 15,),
                Text('Privacy Policy'),
              ],),
            Divider(),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.add),
                SizedBox(width: 15,),
                Text('Terms'),
              ],),
            Divider(),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.add),
                SizedBox(width: 15,),
                Text('Help'),
              ],),
            Divider(),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.add),
                SizedBox(width: 15,),
                Text('Blocked'),
              ],),
            Divider(),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.add),
                SizedBox(width: 15,),
                Text('Time'),
              ],),

            Divider(),
          ],
        ),
      ),
    );
  }
}
