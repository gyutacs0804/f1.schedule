import 'package:f1_calendar/services/networking.dart';

const apiKey = 'qynk9t9c6ajpwrxypdrayqtg';
const sportRadarUrl =
    'https://api.sportradar.us/indycar/trial/v2/en/sport_events';

class ScheduleModelIndycar {
  Future<dynamic> getEventData() async {
    Networking networkCurrentHelper = Networking(
        '$sportRadarUrl/sr:stage:948353/schedule.json?api_key=$apiKey');

    var eventData = await networkCurrentHelper.getData();

    return eventData;
  }
}

//TODO getF1CurrentStageNumber (sr:stage:937183)
