import 'package:flutter/material.dart';
import 'package:get/get.dart';
class NewChat extends StatefulWidget {
  @override
  _NewChatState createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("New Chat",style: TextStyle(
            fontSize: 28,fontWeight: FontWeight.w600,color: Colors.black),
        ),
        bottomOpacity: 10,
        automaticallyImplyLeading: false,
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
                    leading: Stack(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundImage:
                            NetworkImage('https://i.pinimg.com/736x/01/d8/96/01d896fc28cafa2c1902203dfb1bc138.jpg'),
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
                    title: Text("komal",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                    trailing: Icon(Icons.send,color: Colors.black,),
                  ),
                  ListTile(
                    leading: Stack(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundImage:
                            NetworkImage('https://miro.medium.com/max/965/0*vCS7rC85YlmIWaTx.jpg'),
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
                    title: Text("Noorah",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                    trailing: Icon(Icons.send,color: Colors.black,),
                  ),
                  ListTile(
                    leading: Stack(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundImage:
                            NetworkImage('https://i.pinimg.com/736x/01/d8/96/01d896fc28cafa2c1902203dfb1bc138.jpg'),
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
                    title: Text("Noorah",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                    trailing: Icon(Icons.send,color: Colors.black,),
                  ),
                  ListTile(
                    leading: Stack(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundImage:
                            NetworkImage('https://i.pinimg.com/736x/01/d8/96/01d896fc28cafa2c1902203dfb1bc138.jpg'),
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
                    title: Text("Noorah",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                    trailing: Icon(Icons.send,color: Colors.black,),
                  ),
                  ListTile(
                    leading: Stack(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundImage:
                            NetworkImage('https://i.pinimg.com/736x/01/d8/96/01d896fc28cafa2c1902203dfb1bc138.jpg'),
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
                    title: Text("Noorah",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                    trailing: Icon(Icons.send,color: Colors.black,),
                  ),
                  ListTile(
                    leading: Stack(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundImage:
                            NetworkImage('https://i.pinimg.com/736x/01/d8/96/01d896fc28cafa2c1902203dfb1bc138.jpg'),
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
                    title: Text("Noorah",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                    trailing: Icon(Icons.send,color: Colors.black,),
                  ),
                  ListTile(
                    leading: Stack(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundImage:
                            NetworkImage('https://i.pinimg.com/736x/01/d8/96/01d896fc28cafa2c1902203dfb1bc138.jpg'),
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
                    title: Text("Noorah",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                    trailing: Icon(Icons.send,color: Colors.black,),
                  ),
                  ListTile(
                    leading: Stack(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundImage:
                            NetworkImage('https://i.pinimg.com/736x/01/d8/96/01d896fc28cafa2c1902203dfb1bc138.jpg'),
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
                    title: Text("Noorah",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                    trailing: Icon(Icons.send,color: Colors.black,),
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
