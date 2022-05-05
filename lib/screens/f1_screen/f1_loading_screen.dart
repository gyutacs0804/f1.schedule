import 'package:flutter/material.dart';
import 'f1_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:f1_calendar/services/f1_event_data.dart';

class F1LoadingScreen extends StatefulWidget {
  F1LoadingScreen({this.location});

  final location;

  @override
  _F1LoadingScreenState createState() => _F1LoadingScreenState();
}

class _F1LoadingScreenState extends State<F1LoadingScreen> {
  ScheduleModel eventDescription = ScheduleModel();

  @override
  void initState() {
    super.initState();
    updateUI(widget.location);
  }

  void updateUI(dynamic) async {
    var event1 = await eventDescription.getEventData();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return F1Screen(
            event: event1,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.amber[600],
        centerTitle: true,
        automaticallyImplyLeading: false,
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
                  SpinKitSpinningLines(
                    color: Colors.white,
                    size: 50.0,
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
