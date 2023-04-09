import 'package:flutter/material.dart';
import 'package:gym_manager/screens/constants.dart';

class AdminPage extends StatelessWidget {
  late String newentry;
  late int newid;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kbgColor,
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(),
                  )
                ],
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/sunriselogo.png",
                          scale: 3,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 15,
                              height: 8,
                              child: TextField(
                                onChanged: (newText) {
                                  newentry = newText;
                                },
                              ),
                            ),
                            SizedBox(
                              width: 15,
                              height: 8,
                              child: TextField(
                                onChanged: (newtext) {
                                  newid = int.parse(newtext);
                                },
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Center(
                                  child: Text("Enter"),
                                ))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
