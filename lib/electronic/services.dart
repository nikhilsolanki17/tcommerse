import 'dart:convert';
import 'package:tcommerce/electronic/modelclass.dart';
import 'package:http/http.dart' as http;

Future<PostModel> fetchPostModel() async {
  final response = await http.get(Uri.parse(
      'https://kapilopeninnovationslab.github.io/api_host/shoping_api.json'));

  if (response.statusCode == 200) {
    PostModel fetchPostModeldata =
        PostModel.fromJson(jsonDecode(response.body));
    print("fetchPostModeldata $fetchPostModeldata");
    return fetchPostModeldata;
  } else {
    throw Exception('Failed to load album');
  }
}
