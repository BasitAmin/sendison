import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendison/views/Calls.dart';
import 'package:sendison/views/EditProfile.dart';
import 'package:sendison/views/Inbox.dart';
import 'package:sendison/views/Profile.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
        body: TabBarView(
          children: [
            Calls(),
            Inbox(),
            EditProfile(),
          ],
        ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(left: 60, right: 60,top: 15,bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)
              ),
              color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(-2, 0),
                    blurRadius: 6,
                    color: Colors.black.withOpacity(0.16),
                  )
                ]
            ),
            child: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: ImageIcon(AssetImage('assets/icons/calls/Calls-Screen-Phone-Call-Icon.png'),
                  size: 30,),
                ),
                Tab(
                  icon: ImageIcon(AssetImage('assets/icons/outside/Clicked New Chat Send Icon.png',),
                    size: 30,
                    ),
                ),
                Tab(
                  child: Container(
                    child: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage('assets/images/LoginSignUpScreens/Connect Phone Number Filled Out.png'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),

                ),
              ],
            ),
          ),
        )

    );
  }
}
