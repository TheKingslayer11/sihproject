import 'package:flutter/material.dart';
import 'package:school_management/Widgets/AppBar.dart';
import 'package:school_management/Widgets/MainDrawer.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  Animation animation, delayedAnimation, muchDelayedAnimation, LeftCurve;
  AnimationController animationController;
  
  @override
  bool value = true;

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
  Widget build(BuildContext context) => Scaffold(      
        
        body: Center(
          child: Column(
            children: [
              buildPlatforms(),
              
          
            ],
          ),
        ),
      );

  Widget buildPlatforms() => Row(
        children: [
          Expanded(
            child: Padding(
                          padding: const EdgeInsets.only(bottom:100.0),
            child: buildHeader(text: 'Would you like to receive notifications?', child: buildAndroidSwitch()),
          )),
          
        ],
      );
  
  Widget buildHeader({
    @required Widget child,
    @required String text,
  }) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
         
          child,
        ],
      );

 

  Widget buildAndroidSwitch() => Transform.scale(
        scale: 1.3,
        child: Padding(
         padding: const EdgeInsets.only(top:0.0,left: 250),
        child: Switch(
          value: value,
          onChanged: (value) => setState(() => this.value = value),
        ),
      ));

 
        
         /*Widget buildSwitch() => Transform.scale(
        scale: 3,
        child: Switch.adaptive(
          thumbColor: MaterialStateProperty.all(Colors.red),
          trackColor: MaterialStateProperty.all(Colors.orange),

          // activeColor: Colors.blueAccent,
          // activeTrackColor: Colors.blue.withOpacity(0.4),
          // inactiveThumbColor: Colors.orange,
          // inactiveTrackColor: Colors.black87,
          splashRadius: 50,
          value: value,
          onChanged: (value) => setState(() => this.value = value),
        ),
      );
  */
      
}
