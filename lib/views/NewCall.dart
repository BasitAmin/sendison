import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:sendison/views/GroupCall.dart';
import 'package:sendison/views/VideoCall.dart';
import 'package:sendison/views/VoiceCall.dart';
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
            showBtn = false;
            setState(() {

            });
          },
          child:
          groupCall?
               Image.asset('assets/icons/newcalls/ClickedGroupBright.png',scale: 3,)
              :Image.asset('assets/icons/newcalls/GroupCallBright.png',scale: 3,),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: (){
              Get.back();
            },
            child: Image.asset('assets/icons/newcalls/close.png',width: 20),
          ),
          SizedBox(
            width: 10,
          ),
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
                      itemCount: 1,
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
                                    NetworkImage('https://variety.com/wp-content/uploads/2020/12/tom-cruise.jpg'),
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
                            Text("Naah Ruehli",style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),),
                            Spacer(),
                            if(groupCall== false)
                              Row(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Get.to(VideoCall());
                                    },
                                    child: Image.asset('assets/icons/newcalls/VideoCall.png',
                                      scale: 3,),
                                  ),
                                  SizedBox(width: 10,),
                                  InkWell(
                                    onTap: (){
                                      Get.to(VoiceCall());
                                    },
                                      child: Image.asset('assets/icons/newcalls/PhoneCall.png',scale: 3,)),
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
                    right: 5,
                    left: 5,

                    child: Column(
                      children: [
                        MaterialButton(
                          minWidth: Get.width ,
                          onPressed: () {
                            Get.to(GroupCall());
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
                              SizedBox(width: 5,),
                              Image.asset('assets/icons/newcalls/StartPhone.png',scale: 3,),
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
                              SizedBox(width: 5,),
                              Image.asset('assets/icons/newcalls/StartVideo.png',scale: 3,),
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
