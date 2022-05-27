import 'package:f1_calendar/screens/indycar_screen/indycar_loading_screen.dart';
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
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
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
                    height: 40,
                  ),
                ),
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Text(
                    '  NextRace',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'roboto',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          //color: Colors.purple[700],
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/mcl.jpg'), fit: BoxFit.fitHeight),
          ),
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ChoosingSportButton(
                          sport: 'Formula 1',
                          screen: F1LoadingScreen(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ChoosingSportButton(
                          sport: 'Formula E',
                          screen: F1LoadingScreen(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ChoosingSportButton(
                          sport: 'Nascar',
                          screen: F1LoadingScreen(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ChoosingSportButton(
                          sport: 'IndyCar',
                          screen: IndyCarLoadingScreen(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ChoosingSportButton(
                          sport: 'Indy Lights',
                          screen: F1LoadingScreen(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ChoosingSportButton(
                          sport: 'MotoGP',
                          screen: F1LoadingScreen(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
