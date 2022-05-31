import 'package:f1_calendar/screens/f1_screen/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:f1_calendar/services/event_text.dart';
import 'package:f1_calendar/services/indycar_event_data.dart';
import 'package:intl/intl.dart';
import 'package:f1_calendar/services/colors.dart';

class IndyCarScreen extends StatefulWidget {
  IndyCarScreen({this.event});

  final event;

  @override
  State<IndyCarScreen> createState() => _IndyCarScreenState();
}

class _IndyCarScreenState extends State<IndyCarScreen> {
  ScheduleModelIndycar eventDescription = ScheduleModelIndycar();

  dynamic nextEvent;
  dynamic session1Start;
  dynamic session2Start;
  dynamic session3Start;
  dynamic session4Start;
  dynamic session5Start;
  dynamic session6Start;
  dynamic session7Start;
  dynamic session8Start;
  dynamic session9Start;
  dynamic session10Start;
  dynamic session11Start;
  dynamic session12Start;

  dynamic session1Name;
  dynamic session2Name;
  dynamic session3Name;
  dynamic session4Name;
  dynamic session5Name;
  dynamic session6Name;
  dynamic session7Name;
  dynamic session8Name;
  dynamic session9Name;
  dynamic session10Name;
  dynamic session11Name;
  dynamic session12Name;

  dynamic timeFormat1;
  dynamic timeFormat2;
  dynamic timeFormat3;
  dynamic timeFormat4;
  dynamic timeFormat5;
  dynamic timeFormat6;
  dynamic timeFormat7;
  dynamic timeFormat8;
  dynamic timeFormat9;
  dynamic timeFormat10;
  dynamic timeFormat11;
  dynamic timeFormat12;

  dynamic weekday1;
  dynamic weekday2;
  dynamic weekday3;
  dynamic weekday4;
  dynamic weekday5;
  dynamic weekday6;
  dynamic weekday7;
  dynamic weekday8;
  dynamic weekday9;
  dynamic weekday10;
  dynamic weekday11;
  dynamic weekday12;

  @override
  void initState() {
    super.initState();
    UI(widget.event);
  }

  Future UI(dynamic eventData) async {
    int eventNumber = 0;
    String? eventNumberCall = eventData['stages'][eventNumber]['status'];

    while (eventNumberCall == 'Closed') {
      eventNumber++;
      eventNumberCall = eventData['stages'][eventNumber]['status'];
    }

    DateFormat timeFormat = DateFormat("HH:mm");
    DateFormat dateFormat = DateFormat("EEEE");
    setState(
      () {
        nextEvent = eventData['stages'][eventNumber]['description'];
        try {
          session1Start =
              eventData['stages'][eventNumber]['stages'][0]['scheduled'];
        } catch (e) {
          session1Start;
        }
        ;
        try {
          session2Start =
              eventData['stages'][eventNumber]['stages'][1]['scheduled'];
        } catch (e) {
          session2Start;
        }
        ;
        try {
          session3Start =
              eventData['stages'][eventNumber]['stages'][2]['scheduled'];
        } catch (e) {
          session3Start;
        }
        ;
        try {
          session4Start =
              eventData['stages'][eventNumber]['stages'][3]['scheduled'];
        } catch (e) {
          session4Start;
        }
        ;
        try {
          session5Start =
              eventData['stages'][eventNumber]['stages'][4]['scheduled'];
        } catch (e) {
          session5Start;
        }
        ;
        try {
          session6Start =
              eventData['stages'][eventNumber]['stages'][5]['scheduled'];
        } catch (e) {
          session6Start;
        }
        ;
        try {
          session7Start =
              eventData['stages'][eventNumber]['stages'][6]['scheduled'];
        } catch (e) {
          session7Start;
        }
        ;
        try {
          session8Start =
              eventData['stages'][eventNumber]['stages'][7]['scheduled'];
        } catch (e) {
          session8Start;
        }
        ;
        try {
          session9Start =
              eventData['stages'][eventNumber]['stages'][8]['scheduled'];
        } catch (e) {
          session9Start;
        }
        ;
        try {
          session10Start =
              eventData['stages'][eventNumber]['stages'][9]['scheduled'];
        } catch (e) {
          session10Start;
        }
        ;
        try {
          session11Start =
              eventData['stages'][eventNumber]['stages'][10]['scheduled'];
        } catch (e) {
          session11Start;
        }
        ;
        try {
          session12Start =
              eventData['stages'][eventNumber]['stages'][11]['scheduled'];
        } catch (e) {
          session12Start;
        }
        ;
        try {
          session1Name =
              eventData['stages'][eventNumber]['stages'][0]['description'];
        } catch (e) {
          session1Name;
        }
        ;
        try {
          session2Name =
              eventData['stages'][eventNumber]['stages'][1]['description'];
        } catch (e) {
          session2Name;
        }
        ;
        try {
          session3Name =
              eventData['stages'][eventNumber]['stages'][2]['description'];
        } catch (e) {
          session3Name;
        }
        ;
        try {
          session4Name =
              eventData['stages'][eventNumber]['stages'][3]['description'];
        } catch (e) {
          session4Name;
        }
        ;
        try {
          session5Name =
              eventData['stages'][eventNumber]['stages'][4]['description'];
        } catch (e) {
          session5Name;
        }
        ;
        try {
          session6Name =
              eventData['stages'][eventNumber]['stages'][5]['description'];
        } catch (e) {
          session6Name;
        }
        ;
        try {
          session7Name =
              eventData['stages'][eventNumber]['stages'][6]['description'];
        } catch (e) {
          session7Name;
        }
        ;
        try {
          session8Name =
              eventData['stages'][eventNumber]['stages'][7]['description'];
        } catch (e) {
          session8Name;
        }
        ;
        try {
          session9Name =
              eventData['stages'][eventNumber]['stages'][8]['description'];
        } catch (e) {
          session9Name;
        }
        ;
        try {
          session10Name =
              eventData['stages'][eventNumber]['stages'][9]['description'];
        } catch (e) {
          session10Name;
        }
        ;
        try {
          session11Name =
              eventData['stages'][eventNumber]['stages'][10]['description'];
        } catch (e) {
          session11Name;
        }
        ;
        try {
          session12Name =
              eventData['stages'][eventNumber]['stages'][11]['description'];
        } catch (e) {
          session12Name;
        }
        ;
        try {
          timeFormat1 =
              timeFormat.format(DateTime.parse(session1Start).toLocal());
        } catch (e) {
          timeFormat1;
        }
        ;
        try {
          timeFormat2 =
              timeFormat.format(DateTime.parse(session2Start).toLocal());
        } catch (e) {
          timeFormat2;
        }
        ;
        try {
          timeFormat3 =
              timeFormat.format(DateTime.parse(session3Start).toLocal());
        } catch (e) {
          timeFormat3;
        }
        ;
        try {
          timeFormat4 =
              timeFormat.format(DateTime.parse(session4Start).toLocal());
        } catch (e) {
          timeFormat4;
        }
        ;
        try {
          timeFormat5 =
              timeFormat.format(DateTime.parse(session5Start).toLocal());
        } catch (e) {
          timeFormat5;
        }
        ;
        try {
          timeFormat6 =
              timeFormat.format(DateTime.parse(session6Start).toLocal());
        } catch (e) {
          timeFormat6;
        }
        ;
        try {
          timeFormat7 =
              timeFormat.format(DateTime.parse(session7Start).toLocal());
        } catch (e) {
          timeFormat7;
        }
        ;
        try {
          timeFormat8 =
              timeFormat.format(DateTime.parse(session8Start).toLocal());
        } catch (e) {
          timeFormat8;
        }
        ;
        try {
          timeFormat9 =
              timeFormat.format(DateTime.parse(session9Start).toLocal());
        } catch (e) {
          timeFormat9;
        }
        ;
        try {
          timeFormat10 =
              timeFormat.format(DateTime.parse(session10Start).toLocal());
        } catch (e) {
          timeFormat10;
        }
        ;
        try {
          timeFormat11 =
              timeFormat.format(DateTime.parse(session11Start).toLocal());
        } catch (e) {
          timeFormat11;
        }
        ;
        try {
          timeFormat12 =
              timeFormat.format(DateTime.parse(session12Start).toLocal());
        } catch (e) {
          timeFormat12;
        }
        ;

        weekday1 = dateFormat.format(DateTime.parse(session1Start).toLocal());
        weekday2 = dateFormat.format(DateTime.parse(session2Start).toLocal());
        weekday3 = dateFormat.format(DateTime.parse(session3Start).toLocal());
        weekday4 = dateFormat.format(DateTime.parse(session4Start).toLocal());
        weekday5 = dateFormat.format(DateTime.parse(session5Start).toLocal());
        weekday6 = dateFormat.format(DateTime.parse(session6Start).toLocal());
        weekday7 = dateFormat.format(DateTime.parse(session7Start).toLocal());
        weekday8 = dateFormat.format(DateTime.parse(session8Start).toLocal());
        weekday9 = dateFormat.format(DateTime.parse(session9Start).toLocal());
        weekday10 = dateFormat.format(DateTime.parse(session10Start).toLocal());
        weekday11 = dateFormat.format(DateTime.parse(session11Start).toLocal());
        weekday12 = dateFormat.format(DateTime.parse(session12Start).toLocal());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => MainScreen(),
          ),
        );
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => MainScreen(),
                ),
              );
            },
          ),
          toolbarHeight: 60,
          backgroundColor: Colors.amber[600],
          centerTitle: true,
          title: RichText(
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
                    '  IndyCar',
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
          child: Padding(
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
                        child: Text(
                          'Next event: $nextEvent',
                          style: TextStyle(
                            color: kSeriesTextColor,
                            letterSpacing: 1.1,
                            fontSize: 25,
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
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    session1Name != null
                                        ? EventText(
                                            title: '$session1Name, $weekday1')
                                        : SizedBox.shrink(),
                                    session2Name != null
                                        ? EventText(
                                            title: '$session2Name, $weekday2')
                                        : SizedBox.shrink(),
                                    session3Name != null
                                        ? EventText(
                                            title: '$session3Name, $weekday3')
                                        : SizedBox.shrink(),
                                    session4Name != null
                                        ? EventText(
                                            title: '$session4Name, $weekday4')
                                        : SizedBox.shrink(),
                                    session5Name != null
                                        ? EventText(
                                            title: '$session5Name, $weekday5')
                                        : SizedBox.shrink(),
                                    session6Name != null
                                        ? EventText(
                                            title: '$session6Name, $weekday6')
                                        : SizedBox.shrink(),
                                    session7Name != null
                                        ? EventText(
                                            title: '$session7Name, $weekday7')
                                        : SizedBox.shrink(),
                                    session8Name != null
                                        ? EventText(
                                            title: '$session8Name, $weekday8')
                                        : SizedBox.shrink(),
                                    session9Name != null
                                        ? EventText(
                                            title: '$session9Name, $weekday9')
                                        : SizedBox.shrink(),
                                    session10Name != null
                                        ? EventText(
                                            title: '$session10Name, $weekday10')
                                        : SizedBox.shrink(),
                                    session11Name != null
                                        ? EventText(
                                            title: '$session11Name, $weekday11')
                                        : SizedBox.shrink(),
                                    session12Name != null
                                        ? EventText(
                                            title: '$session12Name, $weekday12')
                                        : SizedBox.shrink(),
                                  ],
                                ),
                                flex: 7,
                              ),
                              //SizedBox(width: 70),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    session1Name != null
                                        ? EventText(title: '$timeFormat1')
                                        : SizedBox.shrink(),
                                    session2Name != null
                                        ? EventText(title: '$timeFormat2')
                                        : SizedBox.shrink(),
                                    session3Name != null
                                        ? EventText(title: '$timeFormat3')
                                        : SizedBox.shrink(),
                                    session4Name != null
                                        ? EventText(title: '$timeFormat4')
                                        : SizedBox.shrink(),
                                    session5Name != null
                                        ? EventText(title: '$timeFormat5')
                                        : SizedBox.shrink(),
                                    session6Name != null
                                        ? EventText(title: '$timeFormat6')
                                        : SizedBox.shrink(),
                                    session7Name != null
                                        ? EventText(title: '$timeFormat7')
                                        : SizedBox.shrink(),
                                    session8Name != null
                                        ? EventText(title: '$timeFormat8')
                                        : SizedBox.shrink(),
                                    session9Name != null
                                        ? EventText(title: '$timeFormat9')
                                        : SizedBox.shrink(),
                                    session10Name != null
                                        ? EventText(title: '$timeFormat10')
                                        : SizedBox.shrink(),
                                    session11Name != null
                                        ? EventText(title: '$timeFormat11')
                                        : SizedBox.shrink(),
                                    session12Name != null
                                        ? EventText(title: '$timeFormat12')
                                        : SizedBox.shrink(),
                                  ],
                                ),
                                flex: 2,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SizedBox(height: 15),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
