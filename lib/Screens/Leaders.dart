import 'package:flutter/material.dart';
import 'package:leader_borad/Logic/leaderboard.dart';
import 'package:leader_borad/Screens/EarthHome.dart';
import 'package:leader_borad/homepa.dart';

class Leaders extends StatefulWidget {
  final UserManager usm;
  const Leaders({super.key, required this.usm});

  @override
  State<Leaders> createState() => _LeadersState();
}

class _LeadersState extends State<Leaders> {
  UserManager userManager = UserManager(); // Instantiate UserManager

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          SizedBox(height: 64,),
       Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
               //    const  SizedBox(
                 // width: 12,
                //),
                const Text(
                  'LEADERBOARDS',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                //const SizedBox(
                  //width: 22,
               // ),
                Image.asset(
                  'lib/assets/watering-plants.png',
                  height: 38,
                )
              ],
            ),
          
          Expanded(
            child: ListView.builder(
              itemCount: widget.usm.users.length,
              itemBuilder: (BuildContext context, int index) {
                User user = widget.usm.users[index];
                bool isTopUser = index == 0;

                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: isTopUser ? Colors.greenAccent : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(user.imagePath),
                    ),
                    title: Text(
                      user.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isTopUser ? Colors.white : Colors.black,
                        fontSize: isTopUser
                            ? 24
                            : 20, // Increase font size for top user
                        shadows: isTopUser
                            ? [
                                Shadow(
                                  blurRadius: 5,
                                  color: Colors.black,
                                  offset: Offset(0, 0),
                                ),
                              ]
                            : null, // Add a shadow for the top user
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          'Points: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          user.points.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: isTopUser ? Colors.red : Colors.black,
                            fontSize: 18,
                            shadows: isTopUser
                                ? [
                                    Shadow(
                                      blurRadius: 5,
                                      color: Colors.black,
                                      offset: Offset(0, 0),
                                    ),
                                  ]
                                : null, // Add a shadow for the top user
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    trailing: isTopUser
                        ? Text(
                            '👑', // Crown emoji for the top user
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          )
                        : null, // No trailing widget for non-top users
                    onTap: () {
                      // Add any action you want to perform when a user is tapped
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );

    /*Scaffold(
      appBar: AppBar(title: Text('Leaderboard')),
      body: ListView.builder(
        itemCount: widget.usm.users.length,
        itemBuilder: (BuildContext context, int index) {
          User user = widget.usm.users[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(user.name[0]),
            ),
            title: Text(user.name),
            trailing: Text(user.points.toString()),
          );
        },
      ),
    );*/
  }
}
