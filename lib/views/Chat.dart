import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  void _settingModalBottomSheet(context){
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
        context: context,
        builder: (BuildContext bc){
          return Container(
            height: Get.height/2.9,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
              topRight: Radius.circular(25),)
            ),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: <Widget>[
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                 Expanded(
                   flex: 8,
                   child: Container(
                     child: Text('Attachment'.toUpperCase(),
                       textAlign: TextAlign.center,
                       style: TextStyle(
                       fontWeight: FontWeight.w600,
                       fontSize: 20,
                     ),),
                   ),
                 ),
                 Expanded(
                   flex: 1,
                     child: InkWell(
                       onTap: (){
                         Get.back();
                       },
                       child: Container(
                           child: Icon(Icons.close,size: 25,)),
                     )),
                 ],
               ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.camera_alt,size: 30,),
                    SizedBox(width: 10,),
                    Text('Camera',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.photo,size: 30,),
                    SizedBox(width: 10,),
                    Text('Photo & Video Library',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.file_copy,size: 30,),
                    SizedBox(width: 10,),
                    Text('Document',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.person,size: 30,),
                    SizedBox(width: 10,),
                    Text('Contact',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                  ],
                ),
              ],
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
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
            SizedBox(width: 5,),
            Text("Sarah johanson",style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),
            ),
            SizedBox(width: 5,),
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        bottomOpacity: 10,
        leading: Container(
          //width: 30,
            child: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,)),
        actions: [
          Icon(
            Icons.phone,
            color: Colors.black,
            size: 25,
          ),
          SizedBox(width: 5,),
          Icon(
            Icons.video_call,
            color: Colors.black,
            size: 25,
          ),
          SizedBox(width: 5,),
          Container(
            child: CircleAvatar(
              radius: 15.0,
              backgroundImage:
              NetworkImage('https://i.pinimg.com/736x/01/d8/96/01d896fc28cafa2c1902203dfb1bc138.jpg'),
              backgroundColor: Colors.transparent,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
         // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: Get.width,
                padding: EdgeInsets.all(20),
                child: Text('january 15, 2021',
          textAlign: TextAlign.center,
          style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),),
              ),
            ),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Text('09:57',
                      //textAlign: TextAlign.end,
                      style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: 80,
                    height: 40,
                    padding: EdgeInsets.only(top: 10,left: 2),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('Hi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      fontSize: 16,
                    ),),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 18.0,
                      backgroundImage:
                      NetworkImage('https://i.pinimg.com/736x/01/d8/96/01d896fc28cafa2c1902203dfb1bc138.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Stack(
                    children: [

                      Container(
                        width: 80,
                        height: 40,
                        padding: EdgeInsets.only(top: 10,left: 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1,color: Colors.grey.withOpacity(0.3)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text('Hey',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.favorite_outlined,
                            color: Colors.white,size: 12,),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(width: 5,),
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Text('09:57',
                      //textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),),
                  ),

                ],
              ),
            ),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 0,bottom: 50),
                    child: Text('09:57',
                      //textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),),
                  ),
                  SizedBox(width: 5,),
                  Column(crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 130,
                        height: 40,
                        padding: EdgeInsets.only(top: 10,left: 5),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text('How are you?',
                          style: TextStyle(
                            fontSize: 16,
                          ),),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Text('Seen',
                          //textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),),
                      ),
                    ],
                  ),
                ],
              ),
            ),



            Container(
              width: Get.width,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: (){
                        _settingModalBottomSheet(context);
                      },
                      child: Container(
                        //width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.arrow_upward,color: Colors.white,),),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    flex: 7,
                    child: Container(
                      height: 35,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 5,left: 5),
                          isDense: true,
                          suffixIcon: Icon(Icons.keyboard_voice,size: 20,color: Colors.grey,),
                          fillColor: Colors.grey.withOpacity(0.3),
                          filled: true,
                          hintText: "Message...",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.3)
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.3)
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.3)
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Container(
                      //  width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.send,size: 25,color: Colors.white,),),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
