import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myapp/models/notes_model.dart';
import 'package:myapp/utils/constant.dart';

class NotesService {
  // get data
  Future getData() async {
    try {
      final res = await http.get(Uri.parse(notesURL));
      if (res.statusCode == 200) {
        List jsonDecode = json.decode(res.body);
        return jsonDecode.map((data) => NotesModel.fromJson(data)).toList();
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  // post data
  Future addData(String title, String content) async {
    try {
      final res = await http.post(
        Uri.parse(notesURL),
        body: {"title": title, "content": content},
      );
      if (res.statusCode == 201) {
        return true;
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  // put data
  Future updateData(String id, String title, String content) async {
    try {
      final res = await http.put(
        Uri.parse('${notesURL}/$id'),
        body: {"title": title, "content": content},
      );
      if (res.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  // delete data
  Future deleteData(String id) async {
    try {
      final res = await http.delete(Uri.parse('${notesURL}/$id'));
      if (res.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
