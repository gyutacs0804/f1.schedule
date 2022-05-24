import 'package:flutter/material.dart';

class EventText extends StatelessWidget {
  EventText({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '$title',
        style: TextStyle(
          color: Color(0xFF20D71F).withOpacity(0.7),
          fontSize: 20,
          fontFamily: 'roboto',
          fontWeight: FontWeight.w400,
          //fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
