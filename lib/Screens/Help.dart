
import 'package:flutter/material.dart';
import 'package:randomizer/randomizer.dart';

import 'package:school_management/Widgets/AppBar.dart';

import 'package:school_management/Widgets/MainDrawer.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}
class _HelpState extends State<Help>
    with SingleTickerProviderStateMixin {
  Animation animation, delayedAnimation, muchDelayedAnimation, LeftCurve;
  AnimationController animationController;
  Randomizer randomcolor = Randomizer();
  @override
  void initState() {
    
    super.initState();
    //SystemChrome.setEnabledSystemUIOverlays([]);

    animationController =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    delayedAnimation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.2, 0.5, curve: Curves.fastOutSlowIn)));

    muchDelayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.3, 0.5, curve: Curves.fastOutSlowIn)));
  }
  @override
  void dispose() {
    
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    animationController.forward();
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          final GlobalKey<ScaffoldState> _scaffoldKey =
              new GlobalKey<ScaffoldState>();
          return Scaffold(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
              key: _scaffoldKey,
              appBar: CommonAppBar(
                menuenabled: true,
                notificationenabled: false,
                title: "Help Section",
                ontap: () {
                  _scaffoldKey.currentState.openDrawer();
                },
              ),
              drawer: Drawer(
                elevation: 0,
                child: MainDrawer(),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 15,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30.0,
                          bottom: 8.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                            Transform(
                              transform: Matrix4.translationValues(
                                  muchDelayedAnimation.value * width, 0, 0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children:[Text(
                                "Contact Us:\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                
                                ),
                              ),
                              Text(
                                "(080)8029840258\n(080)8736924532",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.blue, 
                                  decoration: TextDecoration.underline
                                
                                ),
                              ),
                              SizedBox(
                        height: 40,
                      ),
                              Text(
                                "admin@vtu.in\nsupport-in@sih.com",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.cyan
                                ),
                              ),
                                 
                            
                            Transform(
                              transform: Matrix4.translationValues(
                                  delayedAnimation.value * width, 0, 0),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                  "",
                                  style: TextStyle(
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                       ],
                  ),
                ),
                    ] 
                  )))  );
        });
  }
}


  @override
  Widget build(BuildContext context) {
    
    throw UnimplementedError();
  }
