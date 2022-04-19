import 'package:http/http.dart';
import 'dart:convert';

class Network {
  String url = '';

  Network({required this.url});

  Future<dynamic> getData() async {
    try {
      Response response = await get(Uri.parse(url));
      print(response.statusCode);
      // print(response.body);
      if (response.statusCode == 200) {
        // var responseData = json.decode(response.body);
        // print(responseData);
        // return responseData;
        return response.body;
      }
    } catch (e) {
      print(e);
      print("issue with api");
      throw Exception("failed to get post");
    }
  }
}
