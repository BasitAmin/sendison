import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendison/views/Calls.dart';
import 'package:sendison/views/Inbox.dart';
import 'package:sendison/views/Settings.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex;
  final tabs = [
    Inbox(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
        body: TabBarView(
          children: [
            Calls(),
            Inbox(),
            Settings(),
          ],
        ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(left: 60, right: 60),
            child: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.call),
                ),
                Tab(
                  icon: Icon(Icons.send),
                ),
                Tab(
                  icon: Icon(Icons.settings),
                ),
              ],
            ),
          ),
        )

    );
  }
}
