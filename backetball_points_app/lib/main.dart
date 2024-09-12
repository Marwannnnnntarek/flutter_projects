// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(BacketballPointsCounter());
}

class BacketballPointsCounter extends StatefulWidget {
  @override
  State<BacketballPointsCounter> createState() =>
      _BacketballPointsCounterState();
}

class _BacketballPointsCounterState extends State<BacketballPointsCounter> {
  int teamApoints = 0;

  int teamBpoints = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Column(
          children: [
            Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('TEAM A', style: TextStyle(fontSize: 32)),
                    Text(
                      '$teamApoints',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(3, 3)),
                      onPressed: () {
                        setState(() {
                          teamApoints++;
                        });
                      },
                      child: Text(
                        'Add 1 point',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(3, 3)),
                      onPressed: () {
                        setState(() {
                          teamApoints = teamApoints + 2;
                        });
                      },
                      child: Text(
                        'Add 2 point',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(3, 3)),
                      onPressed: () {
                        setState(() {
                          teamApoints = teamApoints + 3;
                        });
                      },
                      child: Text(
                        'Add 3 point',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text('TEAM B', style: TextStyle(fontSize: 32)),
                    Text(
                      '$teamBpoints',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(3, 3)),
                      onPressed: () {
                        setState(() {
                          teamBpoints++;
                        });
                      },
                      child: Text(
                        'Add 1 point',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(3, 3)),
                      onPressed: () {
                        setState(() {
                          teamBpoints = teamBpoints + 2;
                        });
                      },
                      child: Text(
                        'Add 2 point',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(3, 3)),
                      onPressed: () {
                        setState(() {
                          teamBpoints = teamBpoints + 3;
                        });
                      },
                      child: Text(
                        'Add 3 point',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, minimumSize: Size(3, 3)),
              onPressed: () {
                setState(() {
                  teamApoints = 0;
                  teamBpoints = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
