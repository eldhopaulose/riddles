import 'package:dio/dio.dart';

class RiddlesRespository {
  static Future<String?> fetchRiddlesApi() async {
    // changed return type to Future<String?>
    try {
      final Response response =
          await Dio(BaseOptions()).get("https://api.api-ninjas.com/v1/riddles");
      print(response.data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var data = response.data; // data is a list of maps
        for (var item in data) {
          // loop through the list
          var title = item['title']; // get the title from each map
          print(title); // print the title or do something else with it
          return item['title'];
        }
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception();
    }
    return "No riddles found"; // added default return value
  }
}
