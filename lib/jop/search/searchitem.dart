import 'package:dio/dio.dart';
import 'package:findjop/core/constant/strings.dart';
import 'package:findjop/jop/presention/model/jopmodel.dart';

late JopModel model;
Future<List<dynamic>> searchItems(String query) async {
  try {
    Dio dio = Dio();
    final response = await dio.post(
        'https://project2.amit-learning.com/api/jobs/search',
        options: Options(headers: {
          "Authorization": "Bearer $usertoken",
          "Accept": "application/json"
        }),
        data: {"name": query});

    if (response.statusCode == 200) {
      model = JopModel.fromJson(response.data);
      return response.data; // Assuming the API response is a list of items
    } else {
      throw Exception('Failed to perform the search');
    }
  } catch (e) {
    throw Exception('Error during search: $e');
  }
}
