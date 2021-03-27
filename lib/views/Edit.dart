import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendison/views/SmsCode.dart';

class Edit extends StatefulWidget {
  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Edit",style: TextStyle(
            fontSize: 28,fontWeight: FontWeight.w600,color: Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: Image.asset('assets/icons/inside/InsideBack.png',
              scale: 3,)),

      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height,
          padding: EdgeInsets.only(left: 15,right: 15,top: 40),
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
                      NetworkImage('https://variety.com/wp-content/uploads/2020/12/tom-cruise.jpg'),
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
                      height: 20,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6) ),
                      child: Text('Choose',style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: Get.width/1.8,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),

                    hintText: 'Noah Ruehli',
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: Get.width/1.5,
                margin: EdgeInsets.only(top: 30,bottom: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Image.asset("assets/icons/newcalls/PhoneCall.png",scale: 3,),
                    hintText: '+11 12 13 14 15',
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),

              MaterialButton(
                minWidth: Get.width/1.7,
                onPressed: (){
                  //Get.to(SmsCode());
                },
                color: Color(0xff0FBE6C),
                height: 45,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6) ),
                child: Text('Save',style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
