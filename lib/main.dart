import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendison/views/Home.dart';


void main(){
  runApp(GetMaterialApp(
    title: "SendiSon",
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}