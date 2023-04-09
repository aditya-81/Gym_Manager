import 'package:flutter/material.dart';
import 'package:gym_manager/screens/adminpage.dart';
import 'package:gym_manager/screens/attendance_page.dart';
import 'package:gym_manager/screens/entrypage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sunrise',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.amber,
          appBar: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), side: BorderSide.none),
            // shape: CircleBorder(side: BorderSide.none),
            title: Center(
              child: Text(
                "Sunrise Gym",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(flex: 3, child: SizedBox(width: 20)),
                sidebutton("images/attend_bg.png", AttendancePage(), 5),
                sidebutton("images/sunriselogo.png", AdminPage(), 15),
                sidebutton("images/entryicon.png", EntryPage(), 5),
                Expanded(flex: 3, child: SizedBox(width: 20))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class sidebutton extends StatelessWidget {
  sidebutton(this.img, this.nav, this.f);
  late String img;
  late var nav;
  late int f;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: f,
      child: Image.asset(img, fit: BoxFit.fill),
    );
  }
}
