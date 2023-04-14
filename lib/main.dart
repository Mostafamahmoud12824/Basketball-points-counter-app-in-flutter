// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import, sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last

// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';

void main() {
  runApp(basketball_points_counter());
}

// ignore: use_key_in_widget_constructors
class basketball_points_counter extends StatefulWidget {
  @override
  State<basketball_points_counter> createState() =>
      _basketball_points_counterState();
}

class _basketball_points_counterState extends State<basketball_points_counter> {
  int TeamA = 0;
  int TeamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text('Basketball points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        '$TeamA',
                        style: TextStyle(fontSize: 120),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamA++;
                          });
                        },
                        child: const Text(
                          '+1 point',
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            foregroundColor: Colors.white,
                            minimumSize: Size(130, 40)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamA += 2;
                          });
                        },
                        child: const Text(
                          '+2 point',
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            foregroundColor: Colors.white,
                            minimumSize: Size(130, 40)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamA += 3;
                          });
                        },
                        child: const Text(
                          '+3 point',
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            foregroundColor: Colors.white,
                            minimumSize: Size(130, 40)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    thickness: 2,
                    indent: 20,
                    endIndent: 10,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        '$TeamB',
                        style: TextStyle(fontSize: 120),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamB++;
                          });
                        },
                        child: const Text(
                          '+1 point',
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            foregroundColor: Colors.white,
                            minimumSize: Size(130, 40)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamB += 2;
                          });
                        },
                        child: const Text(
                          '+2 point',
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            foregroundColor: Colors.white,
                            minimumSize: Size(130, 40)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamB += 3;
                          });
                        },
                        child: const Text(
                          '+3 point',
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            foregroundColor: Colors.white,
                            minimumSize: Size(130, 40)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  TeamA = 0;
                  TeamB = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  minimumSize: Size(130, 40)),
            ),
          ],
        ),
      ),
    );
  }
}
