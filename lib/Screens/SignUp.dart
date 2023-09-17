import 'package:flutter/material.dart';
import 'package:leader_borad/Screens/HPage.dart';
import 'package:leader_borad/Widgets/sepcialButton.dart';

class SignUp extends StatelessWidget {
  static String routeName = "/signUpScreen";
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // backgroundColor: const Color(0xfffff9f3) ,
      //),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 80),
              alignment: Alignment.topCenter,
              child: Image(
                image: AssetImage('lib/assets/green-power.png',
                ),
                height: 95,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            const Text('Sign Up',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30)),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 315.0),
              child: Text(
                'Name',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: 360,
              padding: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: Color.fromARGB(255, 0, 0, 0), width: 2)),
              child: const TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.only(right: 315.0),
              child: Text(
                'Email',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: 360,
              padding: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: Color.fromARGB(255, 0, 0, 0), width: 2)),
              child: const TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.only(right: 310.0, left: 11),
              child: Text(
                'Password',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: 360,
              padding: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: Color.fromARGB(255, 0, 0, 0), width: 2)),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            const SizedBox(height: 158),
             
                SignUpButton(),

            const SizedBox(height: 7),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 100.0,
                  ),
                  child: Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 15),
                  ),
                ),

                // UnderLine()
              ],
            )
          ],
        ),
      ),
    );
  }
}
