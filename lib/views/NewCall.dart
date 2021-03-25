import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_radio_button/group_radio_button.dart';
class NewCall extends StatefulWidget {
  @override
  _NewCallState createState() => _NewCallState();
}

class _NewCallState extends State<NewCall> {
  bool groupCall = false;
  bool callDialog = false;
  bool showBtn =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("NEW CALL",style: TextStyle(
            fontSize: 28,fontWeight: FontWeight.w600,color: Colors.black),
        ),
        bottomOpacity: 10,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: ()
          {
            groupCall = !groupCall;
            setState(() {

            });
          },
          child: Icon(
            Icons.people,
            color: groupCall? Colors.black:Colors.grey,
            size: 25,
          ),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.close,
            color: Colors.black,
            size: 25,
          )
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.all(20),
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
            SizedBox(height: 15,),
            Expanded(
              child: Stack(
                children: [
                  ListView.separated(
                      itemCount: 15,
                      separatorBuilder: (context,int index){
                        return SizedBox(height: 15,);
                      },
                      itemBuilder: (context,int index)
                      {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  child: CircleAvatar(
                                    radius: 18.0,
                                    backgroundImage:
                                    NetworkImage('https://i.pinimg.com/736x/01/d8/96/01d896fc28cafa2c1902203dfb1bc138.jpg'),
                                    backgroundColor: Colors.transparent,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10,),
                            Text("Nazeer",style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),),
                            Spacer(),
                            if(groupCall== false)
                              Row(
                                children: [
                                  Icon(
                                    Icons.video_call,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                  SizedBox(width: 10,),
                                  Icon(
                                    Icons.call,
                                    color: Colors.black,
                                    size: 25,
                                  )
                                ],
                              )
                            else
                              InkWell(
                                onTap: ()
                              {
                                 showBtn = !showBtn;
                                 setState(() {

                                 });
                              },
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              )
                          ],
                        );
                      }),
                  if(showBtn ==true)
                  Positioned(
                    bottom: 25,
                    child: Column(
                      children: [
                        MaterialButton(
                          minWidth: Get.width ,
                          onPressed: () {
                            Get.to(NewCall());
                          },
                          color: Color(0xff0FBE6C),
                          height: 45,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Start Phone Call ',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Icon(Icons.call,color: Colors.white,)
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        MaterialButton(
                          minWidth: Get.width ,
                          onPressed: () {
                            Get.to(NewCall());
                          },
                          color: Color(0xff0FBE6C),
                          height: 45,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Start Video Call ',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Icon(Icons.video_call,color: Colors.white,)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ),

          ],
        ),
      ),
    );
  }
}
