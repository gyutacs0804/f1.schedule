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
    var eventInfo = await eventDescription.getEventData();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return F1Screen(
            event: eventInfo,
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
                  height: 40,
                ),
              ),
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Text(
                  '  Motorsports Schedule',
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
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/mcl.jpg'), fit: BoxFit.fitHeight),
        ),
        //color: Colors.purple[700],
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SpinKitSpinningLines(
                    itemCount: 5,
                    color: Colors.amber,
                    lineWidth: 6,
                    size: 80.0,
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
