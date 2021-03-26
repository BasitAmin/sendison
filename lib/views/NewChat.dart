import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendison/views/Group.dart';
class NewChat extends StatefulWidget {
  @override
  _NewChatState createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  bool groupChat = false;
  bool callDialog = false;
  bool showBtn =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("NEW CHAT",style: TextStyle(
            fontSize: 28,fontWeight: FontWeight.w600,color: Colors.black),
        ),
        bottomOpacity: 10,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: ()
          {
            groupChat = !groupChat;
            showBtn = false;
            setState(() {

            });
          },
          child: groupChat?Image.asset('assets/icons/newcalls/ClickedGroupBright.png',scale: 3,)
              :Image.asset('assets/icons/newcalls/GroupCallBright.png',scale: 3,),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: (){
              Get.back();
            },
            child: Image.asset('assets/icons/outside/Clicked New Chat Close Icon.png',width: 20,),
          ),
          SizedBox(width: 10,),
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
                        itemCount: 8,
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
                              if(groupChat== false)
                                Image.asset('assets/icons/outside/Clicked New Chat Send Icon.png',width: 20,)
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
                        left: 15,
                        child: MaterialButton(
                          minWidth: Get.width/1.2 ,
                          onPressed: () {
                           Get.to(Group());
                          },
                          color: Colors.deepPurple,
                          height: 45,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            'Next',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
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
