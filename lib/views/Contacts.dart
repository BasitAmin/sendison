import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('Contacts',style: TextStyle(
                  fontSize: 50,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 30,),
            Container(
              child: Icon(Icons.group_rounded,size: 150,),
            ),
            Container(
              child: Text('Import Your \n Existing Contacts',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 70,),
            MaterialButton(
              minWidth: Get.width/1.5,
              onPressed: (){
                //Get.to(Welcome());
              },
              color: Color(0xff0FBE6C),
              height: 45,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6) ),
              child: Text('Import',style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
            ),

            FlatButton(
                onPressed: (){},
                child: Text('Later',style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold,
                    color: Colors.grey.withOpacity(0.5)),)
            ),
          ],
        ),
      ),
    );
  }
}
