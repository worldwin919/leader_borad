 import 'package:flutter/material.dart';
import 'package:leader_borad/Screens/HPage.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Takes complete width of the screen
      margin: EdgeInsets.symmetric(horizontal: 20), // Add margin for spacing
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(context,  MaterialPageRoute(
            builder: (context) => HPage()));
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Color.fromARGB(255, 134, 246, 5), // Orange background color
          onPrimary: Colors.white, // White text color
          padding: EdgeInsets.symmetric(vertical: 11), // Vertical padding
        ),
        child: Text(
          'Sign Up',
          style: TextStyle(fontSize: 18), // Adjust font size as needed
        ),
      ),
    );
  }
}



