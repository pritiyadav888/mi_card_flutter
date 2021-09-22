import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 200.0,
              bottom: 180.0,
              left: 150.0,
              right: 150.0,
            ),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 60.0,
                    backgroundImage: ExactAssetImage("/images/IMG_5659.jpg"),
                  ),
                  Center(
                    child: Text(
                      'Priti Yadav',
                      style: TextStyle(
                        fontFamily: "Nerko One",
                        color: Colors.blueGrey.shade900,
                        fontSize: 30.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 150.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      width: 250.0,
                      child: Center(
                        child: AnimatedTextKit(
                          animatedTexts: [
                            ColorizeAnimatedText(
                              'Machine Learning Engineer',
                              colors: [
                                Colors.black,
                                Colors.blue,
                                Colors.white38,
                              ],
                              textStyle: TextStyle(
                                fontFamily: "Nerko One",
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                          isRepeatingAnimation: true,
                          onTap: () {
                            print("Tap Event");
                          },
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          color: Colors.teal,
                          size: 20.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Center(
                          child: Text(
                            '+1 669 290 5006',
                            style: TextStyle(
                              fontFamily: "Nerko One",
                              color: Colors.teal,
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white,
                    // margin:
                    //     EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.email,
                          color: Colors.teal,
                          size: 20.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Center(
                          child: Text(
                            'Yadavpriti0210@gmail.com',
                            style: TextStyle(
                              fontFamily: "Nerko One",
                              color: Colors.teal,
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
