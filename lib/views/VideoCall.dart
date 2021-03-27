import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class VideoCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.only(left: 10,right: 10,top: 50),
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
            Container(
              //3f3f3f
              margin: EdgeInsets.only(top: 50),
              height: Get.width/2.1,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xff3f3f3f),
                    width: 10
                ),
                shape: BoxShape.circle,
              ),
              child: Container(
                height: Get.width/2.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                    border: Border.all(
                        color: Colors.grey,
                        width: 10
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        //fit: BoxFit.cover,
                        image: AssetImage("assets/icons/facetime/VoiceCall.png"),

                    )
                ),
              ),
            ),
            Spacer(),


          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 20,right: 20,bottom: 15),
        child: MaterialButton(
          minWidth: Get.width-250,
          onPressed: () {
            Get.back();
          },
          color: Colors.red,
          height: 45,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'End Video Call ',
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
      ),
    );
  }
}
