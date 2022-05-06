import 'package:f1_calendar/services/colors.dart';
import 'package:flutter/material.dart';

class ChoosingSportButton extends StatelessWidget {
  final String sport;
  final Widget screen;

  ChoosingSportButton({required this.sport, required this.screen});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(
          Size(0, 45),
        ),
        backgroundColor: MaterialStateProperty.all(
          Colors.purple.withOpacity(0.3),
        ),
        elevation: MaterialStateProperty.all(3),
      ),
      onPressed: () async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => screen,
          ),
        );
      },
      child: Text(
        '$sport',
        style: TextStyle(
          color: kSeriesTextColor,
          fontSize: 20,
          fontFamily: 'roboto',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
