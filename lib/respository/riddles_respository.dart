import 'package:dio/dio.dart';
import 'package:riddles/models/models.dart';

class RiddlesRespository {
  static Future<List<Riddles>?> fetchRiddlesApi() async {
    // changed return type to Future<List<Riddles>?>
    try {
      final Response<List<dynamic>>
          response = // changed type to Response<List<dynamic>>
          await Dio(BaseOptions()).get("https://api.api-ninjas.com/v1/riddles");
      print(response.data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data; // added final
        if (data != null && data.isNotEmpty) {
          // check for null or empty data
          return data
              .map((riddle) => Riddles.fromJson(riddle))
              .toList(); // changed e to riddle
        } else {
          return null; // return null if data is null or empty
        }
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception();
    }
  }
}
