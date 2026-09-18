import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myapp/models/chatty_model.dart';
import 'package:myapp/utils/constant.dart';

class ChattyService {
  // get data dari API
  Future<List<ChattyModel>> getChatList() async {
    // buat url
    final response = await http.get(
      Uri.parse(reqURL),
      headers: {
        'Content-Type': 'application/json',
        // api key kita
        'x-api-key': 'reqres_3f58197e64dd4ed7ac83dfd83d26e993',
      },
    );
    print("Status Code : ${response.statusCode}");
    print("body : ${response.body}");
    // jika data 200
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final List<dynamic> data = jsonData['data'];

      return data.map((json) => ChattyModel.fromJson(json)).toList();
    }

    throw Exception('Gagal mengambil data Chatty');
  }

  Future<List<ChattyModel>> getGroupList() async {
    // buat url
    final response = await http.get(
      Uri.parse(productURL),
      headers: {'Content-Type': 'application/json'},
    );
    print("Status Code : ${response.statusCode}");
    print("body : ${response.body}");
    // jika data 200
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final List<dynamic> data = jsonData['products'];

      return data.map((json) => ChattyModel.fromJsonGroup(json)).toList();
    }

    throw Exception('Gagal mengambil data Group');
  }
}
