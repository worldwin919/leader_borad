import 'package:flutter/material.dart';

class HabitTile extends StatelessWidget {
  final String habitName;
  final bool habitComplete;
  final String imgpath;
  final Function(bool?)? onChanged;

   const HabitTile(
      {super.key,
      required this.habitName,
      required this.habitComplete,
      required this.imgpath,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: // const EdgeInsets.all(12),
          const EdgeInsets.only(bottom: 22, left: 10, right: 10, top: 1),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Checkbox(
              value: habitComplete, 
              onChanged: onChanged),
              Text(habitName ,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),),
             const  SizedBox(width : 20,),
             
              Padding( 
                padding: const EdgeInsets.only(left : 10.0),
                child: Image.asset('$imgpath' ,
                 height: 30,),
              )
          ],
        ),
      ),
    );
  }
}
