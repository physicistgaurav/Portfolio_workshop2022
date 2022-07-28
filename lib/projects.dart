// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 216, 211, 211),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title: Text("Books For Me"),
              subtitle: Text("A Web-App book recommending system "),
              trailing: Icon(FontAwesomeIcons.book),
              iconColor: Colors.blueGrey,
              contentPadding: EdgeInsets.all(20),
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title: Text("Travel-Nepal"),
              subtitle: Text("A Mobile App for assisting to travel"),
              trailing: Icon(FontAwesomeIcons.mountainSun),
              contentPadding: EdgeInsets.all(20),
              iconColor: Colors.blueGrey,
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(),
            child: ListTile(
              title: Text("Fruit-Tag"),
              subtitle:
                  Text("A Mobile App for classifying and tagging images "),
              trailing: Icon(FontAwesomeIcons.camera),
              contentPadding: EdgeInsets.all(20),
              iconColor: Colors.blueGrey,
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title: Text("Cryptify"),
              subtitle: Text("Neural network based text encryption"),
              trailing: Icon(Icons.security),
              contentPadding: EdgeInsets.all(20),
              iconColor: Colors.blueGrey,
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }
}
