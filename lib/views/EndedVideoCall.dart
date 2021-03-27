import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class EndedVideoCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            padding: EdgeInsets.only(left: 10,right: 10,top: 50),
            margin: EdgeInsets.only(left: 5,right: 5,top: 25,bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage('https://i.pinimg.com/564x/b8/03/78/b80378993da7282e58b35bdd3adbce89.jpg'),
                  fit: BoxFit.cover,
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(width: 2,color: Colors.purple),
                              ),
                              child: CircleAvatar(
                                radius: 30.0,
                                backgroundImage:
                                NetworkImage('https://variety.com/wp-content/uploads/2020/12/tom-cruise.jpg'),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text('Noah Ruehli',style: TextStyle(
                                color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),
                            SizedBox(width: 5,),
                            Image.asset('assets/icons/facetime/FacetimeActive.png',scale: 10,),
                          ],
                        ),),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Container(
                            height: Get.height/3.5,
                            // width: Get.width/2.9,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                  image: NetworkImage('https://variety.com/wp-content/uploads/2020/12/tom-cruise.jpg'),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                          Image.asset('assets/icons/facetime/FacetimeCamera.png',scale: 3,),
                        ],
                      ),
                    ),

                  ],
                ),
                //SizedBox(height: 50,),


              ],
            ),
          ),
          Container(color: Colors.black.withOpacity(0.6),),
          Container(
            padding: EdgeInsets.only(top: 100),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: Get.width/1.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.white,
                          width: 3,
                      ),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/icons/videocall/ended.png",),
                        scale: 3,
                      )
                  ),
                ),
                SizedBox(height: 20,),
                Text("Ended".toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600
                  ),),
                Image.asset('assets/icons/videocall/endedEye.png',scale: 3,),

              ],
            ),
          )
        ],
      ),
      // bottomNavigationBar: Container(
      //   padding: EdgeInsets.only(left: 20,right: 20,bottom: 15),
      //   child: MaterialButton(
      //     minWidth: Get.width-250,
      //     onPressed: () {
      //       Get.back();
      //     },
      //     color: Colors.red,
      //     height: 45,
      //     shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(6)),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text(
      //           'End Video Call ',
      //           style: TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.w600,
      //               color: Colors.white),
      //         ),
      //         SizedBox(width: 5,),
      //         Image.asset('assets/icons/newcalls/StartVideo.png',scale: 3,),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
