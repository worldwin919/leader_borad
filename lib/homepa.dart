import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:leader_borad/Habbit.dart';
import 'package:leader_borad/Logic/leaderboard.dart';
import 'package:leader_borad/Screens/EarthHome.dart';
import 'package:leader_borad/Screens/Leaders.dart';
import 'package:leader_borad/Screens/swipeCard.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List todayHabit = [
    ["WATER A PLANT", false, 'lib/assets/watering-plants.png'],
    ["CLOSED TAP ", false, 'lib/assets/water-tap.png'],
    ["CLOSED BULB ", false, 'lib/assets/green-power.png'],
    ['USE A BICYCLE', false, 'lib/assets/bicycle.png']
  ];

  //bool habbitCompleted = false;

  void checkBoxTapped(bool? value, int index) {

         if (isPlaying) {
                _conf.stop();
              } else {
                _conf.play();
              }
              isPlaying = !isPlaying;

    setState(() {
      todayHabit[index][1] = value!;
    });
  }

  UserManager us = UserManager();

  TextEditingController namec = TextEditingController();
  TextEditingController ptsc = TextEditingController();

  final _controller = PageController();

  final _conf = ConfettiController();
  bool isPlaying = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _conf.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: IconButton(
            onPressed: () {
              setState(() {
                us.addUser('Visg', 200, 'lib/assets/man (1).png');
              });

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Leaders(usm: us)));
            },
            icon: Icon(
              Icons.add,
              size: 30,
            )),
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            const Padding(
                padding: const EdgeInsets.only(top: 75, left: 25),
                child: Row(
                  children: [
                    Text(
                      'My',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Tree',
                      style: TextStyle(fontSize: 26),
                    ),
                  ],
                )),

            const SizedBox(
              height: 14,
            ),

            Container(
                height: 150,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardSwipe(
                      scolor: Colors.green,
                      score: 4574,
                      streak: 19,
                    ),
                    CardSwipe(
                      scolor: Colors.deepPurple,
                      score: 2374,
                      streak: 8,
                    ),
                    CardSwipe(
                      scolor: Colors.lightBlue,
                      score: 2154,
                      streak: 12,
                    ),
                  ],
                )),

            const SizedBox(
              height: 12,
            ),

            SmoothPageIndicator(controller: _controller, count: 3),
            //  Icon(Icons.add),
            const SizedBox(
              height: 18,
            ),

            ConfettiWidget(confettiController: _conf ,
            blastDirection: -pi / 2,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "TODAY'S TASKS",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 18,
                ),
                Image.asset(
                  'lib/assets/trash.png',
                  height: 34,
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: todayHabit.length,
                  itemBuilder: (context, index) {
                    return HabitTile(
                        habitName: todayHabit[index][0],
                        habitComplete: todayHabit[index][1],
                        imgpath: todayHabit[index][2],
                        onChanged: (value) => checkBoxTapped(value, index));
                  }),
            )
          ],
        ));
  }
}
