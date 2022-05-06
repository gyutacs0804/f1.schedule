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
          Size(250, 45),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.white),
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
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'roboto',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
