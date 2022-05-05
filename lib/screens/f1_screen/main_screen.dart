import 'package:flutter/material.dart';
import 'package:f1_calendar/services/choosing_sport_button.dart';
import 'f1_loading_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
        backgroundColor: Colors.amber[600],
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Image(
                  image: AssetImage('icons/racecar100.png'),
                  height: 30,
                ),
              ),
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Text(
                  '    Motorsports Schedule',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.blueGrey[100],
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ChoosingSportButton(
                    sport: 'Formula 1',
                    screen: F1LoadingScreen(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
