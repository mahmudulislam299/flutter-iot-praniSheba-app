import 'package:http/http.dart';

class Network {
  String url = '';
  late String data;

  Network({required this.url});

  Future<void> getData() async {
    try {
      Response response = await get(Uri.parse(url));
      print(response.statusCode);
      // print(response.body);
      if (response.statusCode == 200) {
        // return response.body;
        data = response.body;
        print(data);
      }
    } catch (e) {
      print(e);
      print("issue with api");
      throw Exception("failed to get post");
    }
  }
}
