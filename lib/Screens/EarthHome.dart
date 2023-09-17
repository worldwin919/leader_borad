import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class EarthHome extends StatefulWidget {
  const EarthHome({super.key});

  @override
  State<EarthHome> createState() => _EarthHomeState();
}

class _EarthHomeState extends State<EarthHome> {
  final _conf = ConfettiController();
  bool _isPlaying = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _conf.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 80),
            child: Image.asset(
              'lib/assets/planet-earth.png',
              height: 250,
            ),
          ),
          SizedBox(
            height: 80,
          ),
          ConfettiWidget(confettiController: _conf),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Text(
              'Help Save Nature \n Keep going !',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Text(
              'Thank  you for your contribution in mother saving earth \n Thanks for your cooperation , you are a hero ! ',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 58,
          ),
          //ConfettiWidget(confettiController: _conf),
          SizedBox(
            height: 12,
          ),
          Container(
            width: double.infinity, // Takes complete width of the screen
            margin:
                EdgeInsets.symmetric(horizontal: 20), // Add margin for spacing
            child: OutlinedButton(
              onPressed: () {
                if (_isPlaying) {
                  _conf.stop();
                } else {
                  _conf.play();
                }
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor:
                    Color.fromARGB(255, 134, 246, 5), // Orange background color
                onPrimary: Colors.white, // White text color
                padding: EdgeInsets.symmetric(vertical: 11), // Vertical padding
              ),
              child: Text(
                'Thumbs Up!',
                style: TextStyle(fontSize: 18), // Adjust font size as needed
              ),
            ),
          )
        ],
      ),
    );
  }
}
