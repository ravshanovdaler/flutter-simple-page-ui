import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emotionFace;


  const EmoticonFace({Key? key, required this.emotionFace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(16),
      child: Center(child: Text(emotionFace, style: TextStyle(fontSize: 28),)),
    );
  }
}
