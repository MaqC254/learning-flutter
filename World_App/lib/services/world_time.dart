import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  late String location;
  late String time;
  late String flag;
  late String url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future <void> getTime() async {
    try {
      Response response = await get(
          Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      String dateTime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));
      time = now.toString().substring(11, 16);
    }
    catch(e){
      print('error caught:$e');
      time='Unable to fetch time. Check your internet connection';
    }
  }
}