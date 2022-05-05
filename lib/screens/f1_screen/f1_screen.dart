import 'package:f1_calendar/screens/f1_screen/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:f1_calendar/services/event_text.dart';
import 'package:f1_calendar/services/f1_event_data.dart';
import 'package:intl/intl.dart';
import 'f1_loading_screen.dart';

class F1Screen extends StatefulWidget {
  F1Screen({this.event});

  final event;

  @override
  State<F1Screen> createState() => _F1ScreenState();
}

class _F1ScreenState extends State<F1Screen> {
  ScheduleModel eventDescription = ScheduleModel();

  String nextEvent = '...';
  String session1Start = '...';
  String session2Start = '...';
  String session3Start = '...';
  String session4Start = '...';
  String session5Start = '...';

  String session1Name = '...';
  String session2Name = '...';
  String session3Name = '...';
  String session4Name = '...';
  String session5Name = '...';

  dynamic timeFormat1 = '...';
  dynamic timeFormat2 = '...';
  dynamic timeFormat3 = '...';
  dynamic timeFormat4 = '...';
  dynamic timeFormat5 = '...';

  dynamic dateFormat1 = '...';
  dynamic dateFormat2 = '...';
  dynamic dateFormat3 = '...';
  dynamic dateFormat4 = '...';
  dynamic dateFormat5 = '...';

  @override
  void initState() {
    super.initState();
    UI(widget.event);
  }

  Future UI(dynamic eventData) async {
    int eventNumber = 0;
    String eventNumberCall = eventData['stages'][eventNumber]['status'];

    while (eventNumberCall == 'Closed') {
      eventNumber++;
      eventNumberCall = eventData['stages'][eventNumber]['status'];
    }

    DateFormat timeFormat = DateFormat("HH:mm");
    DateFormat dateFormat = DateFormat("yyyy-MM-dd");
    setState(
      () {
        nextEvent = eventData['stages'][eventNumber]['description'];

        session1Start =
            eventData['stages'][eventNumber]['stages'][0]['scheduled'];
        session2Start =
            eventData['stages'][eventNumber]['stages'][1]['scheduled'];
        session3Start =
            eventData['stages'][eventNumber]['stages'][2]['scheduled'];
        session4Start =
            eventData['stages'][eventNumber]['stages'][3]['scheduled'];
        session5Start =
            eventData['stages'][eventNumber]['stages'][4]['scheduled'];

        session1Name =
            eventData['stages'][eventNumber]['stages'][0]['description'];
        session2Name =
            eventData['stages'][eventNumber]['stages'][1]['description'];
        session3Name =
            eventData['stages'][eventNumber]['stages'][2]['description'];
        session4Name =
            eventData['stages'][eventNumber]['stages'][3]['description'];
        session5Name =
            eventData['stages'][eventNumber]['stages'][4]['description'];

        timeFormat1 =
            timeFormat.format(DateTime.parse(session1Start).toLocal());
        timeFormat2 =
            timeFormat.format(DateTime.parse(session2Start).toLocal());
        timeFormat3 =
            timeFormat.format(DateTime.parse(session3Start).toLocal());
        timeFormat4 =
            timeFormat.format(DateTime.parse(session4Start).toLocal());
        timeFormat5 =
            timeFormat.format(DateTime.parse(session5Start).toLocal());

        dateFormat1 =
            dateFormat.format(DateTime.parse(session1Start).toLocal());
        dateFormat2 =
            dateFormat.format(DateTime.parse(session2Start).toLocal());
        dateFormat3 =
            dateFormat.format(DateTime.parse(session3Start).toLocal());
        dateFormat4 =
            dateFormat.format(DateTime.parse(session4Start).toLocal());
        dateFormat5 =
            dateFormat.format(DateTime.parse(session5Start).toLocal());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (BuildContext context) => MainScreen()),
              );
            },
          ),
          toolbarHeight: 60,
          backgroundColor: Colors.amber[600],
          centerTitle: true,
          title: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Image(
                    image: AssetImage('icons/racecar100.png'),
                    height: 50,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Container(
                      //color: Colors.blue,
                      child: Text(
                        'Next event: $nextEvent',
                        style: TextStyle(
                          letterSpacing: 1.1,
                          fontSize: 18,
                          fontFamily: 'roboto',
                          fontWeight: FontWeight.w500,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Container(
                          child: Text(
                            'Friday, $dateFormat1',
                            style: TextStyle(
                              letterSpacing: 1.1,
                              fontSize: 18,
                              fontFamily: 'roboto',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Divider(
                          height: 3,
                          thickness: 1,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  EventText(title: '$session1Name'),
                                  EventText(title: '$session2Name'),
                                ],
                              ),
                            ),
                            //SizedBox(width: 70),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  EventText(title: '$timeFormat1'),
                                  EventText(title: '$timeFormat2'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Text(
                            'Saturday, $dateFormat3',
                            style: TextStyle(
                              letterSpacing: 1.1,
                              fontSize: 18,
                              fontFamily: 'roboto',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Divider(
                          height: 3,
                          thickness: 1,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  EventText(title: '$session3Name'),
                                  EventText(title: '$session4Name'),
                                ],
                              ),
                            ),
                            //SizedBox(width: 70),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  EventText(title: '$timeFormat3'),
                                  EventText(title: '$timeFormat4'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Container(
                          child: Text(
                            'Sunday, $dateFormat5',
                            style: TextStyle(
                              letterSpacing: 1.1,
                              fontSize: 18,
                              fontFamily: 'roboto',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Divider(
                          height: 3,
                          thickness: 1,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  EventText(title: '$session5Name'),
                                ],
                              ),
                            ),
                            //SizedBox(width: 70),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  EventText(title: '$timeFormat5'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO back button behaviour (go back to MainScreen)
