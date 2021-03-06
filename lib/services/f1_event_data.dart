import 'package:f1_calendar/services/networking.dart';

const apiKey = '3t4edw6mu7y5e8ug524nvg4u';
const sportRadarUrl =
    'https://api.sportradar.us/formula1/trial/v2/en/sport_events';

class ScheduleModelF1 {
  Future<dynamic> getEventData() async {
    Networking networkCurrentHelper = Networking(
        '$sportRadarUrl/sr:stage:937183/schedule.json?api_key=$apiKey');

    var eventData = await networkCurrentHelper.getData();

    return eventData;
  }
}

//TODO getF1CurrentStageNumber (sr:stage:937183)
