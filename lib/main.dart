import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(flex: 3, child: SizedBox(width: 20)),
                Expanded(
                  flex: 5,
                  child: Image.asset(
                    "attend_bg.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  flex: 15,
                  child: Image.asset(
                    "sunriselogo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Image.asset("entryicon.png", fit: BoxFit.fill),
                ),
                Expanded(flex: 3, child: SizedBox(width: 20))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
