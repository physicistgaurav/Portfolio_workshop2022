// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:portfolio_grz/aboutpage.dart';
import 'package:portfolio_grz/homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "hello",
    home: HomePage(),
    routes: {'about': (context) => AboutMe()},
    theme: ThemeData(fontFamily: 'Ubuntu'),
  ));
}
