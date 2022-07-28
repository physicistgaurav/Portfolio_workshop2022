// ignore_for_file: implementation_imports, unnecessary_import, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_grz/aboutpage.dart';
import 'package:portfolio_grz/projects.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

myskills(icon, text) {
  return Container(
    width: 100,
    height: 100,
    child: Card(
      margin: EdgeInsets.all(0),
      color: Color.fromARGB(255, 44, 41, 41),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(58)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    ),
  );
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 44, 41, 41),
      appBar: AppBar(
        leading: PopupMenuButton(
            color: Colors.transparent,
            elevation: 0,
            itemBuilder: (context) => [
                  PopupMenuItem(
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutMe()));
                          },
                          child: Text(
                            "About Me",
                            style: TextStyle(color: Colors.white),
                          ))),
                  PopupMenuItem(
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyProjects()));
                          },
                          child: Text(
                            "My Projects",
                            style: TextStyle(color: Colors.white),
                          ))),
                ]),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 10,
        cornerRadius: 32,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.4, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          color: Color.fromARGB(255, 44, 41, 41),
          child: Stack(
            children: [
              Container(
                color: Color.fromARGB(255, 44, 41, 41),
                margin: EdgeInsets.only(top: 12),
                child: ShaderMask(
                    shaderCallback: (rect) {
                      return LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.bottomCenter,
                              colors: [Colors.black, Colors.transparent])
                          .createShader(
                              Rect.fromLTRB(0, 0, rect.width, rect.height));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset(
                      'assets/newgr.png',
                      height: 500,
                      fit: BoxFit.contain,
                    )),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.49),
                child: Column(
                  children: [
                    Text(
                      "Gaurav Rizal",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Flutter Dev",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                      width: 75,
                      child: Divider(
                        color: Color.fromARGB(255, 173, 187, 184),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "+3 years",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Experience",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      Column(
                        children: [
                          Text(
                            "4",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Projects",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      Column(
                        children: [
                          Text(
                            "Bachelors",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Degree",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Skills",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myskills(FontAwesomeIcons.github, "Github"),
                        myskills(FontAwesomeIcons.linux, "linux"),
                        myskills(FontAwesomeIcons.python, "python")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myskills(FontAwesomeIcons.mobileScreen, "flutter"),
                        myskills(FontAwesomeIcons.database, "firebase"),
                        myskills(FontAwesomeIcons.react, "react")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myskills(FontAwesomeIcons.html5, "HTML"),
                        myskills(FontAwesomeIcons.css3, "CSS"),
                        myskills(FontAwesomeIcons.brain, "ML")
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
