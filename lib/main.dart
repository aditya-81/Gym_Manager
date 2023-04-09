import 'package:flutter/material.dart';
import 'package:gym_manager/screens/adminpage.dart';
import 'package:gym_manager/screens/attendance_page.dart';
import 'package:gym_manager/screens/constants.dart';
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
        child: Container(
          color: kbgColor,
          child: Padding(
            padding: EdgeInsets.fromLTRB(40, 80, 40, 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 10,
                  child: Row(children: [
                    Expanded(flex: 3, child: SizedBox(width: 20)),
                    sidebutton("images/attend_bg.png", AttendancePage(), 5),
                    sidebutton("images/sunriselogo.png", AdminPage(), 18),
                    sidebutton("images/entryicon.png", EntryPage(), 5),
                    Expanded(flex: 3, child: SizedBox(width: 20))
                  ]),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "Never Give Up!!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                  ),
                ),
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
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => nav));
        },
        child: Image.asset(img, fit: BoxFit.fill),
      ),
    );
  }
}
