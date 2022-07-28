// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_grz/homepage.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 44, 41, 41),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            icon: Icon(Icons.arrow_back)),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        color: Color.fromARGB(255, 44, 41, 41),
        child: Stack(
          children: [
            Container(
              color: Color.fromARGB(255, 44, 41, 41),
              margin: EdgeInsets.only(top: 52),
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
                    height: 420,
                    alignment: Alignment.center,
                    fit: BoxFit.contain,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.64),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Hello, I am",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
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
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 8,
                    width: 95,
                    child: Divider(
                      color: Color.fromARGB(255, 101, 138, 135),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.reddit,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "© 2022, gauravrizal.com.np",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
