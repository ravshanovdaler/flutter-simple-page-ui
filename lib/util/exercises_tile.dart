import 'package:flutter/material.dart';


class Exercise extends StatelessWidget{
  final icon;
  final String ExerciseName;
  final String numberOfExercises;
  final color;


  const Exercise({
    Key? key,
    required this.icon,
    required this.color,
    required this.ExerciseName,
    required this.numberOfExercises,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                      padding:EdgeInsets.all(16),
                      color: color,
                      child: Icon(icon, color: Colors.white,))),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ExerciseName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text('$numberOfExercises Exercises',
                    style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),),
                ],
              ),],),
            Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}