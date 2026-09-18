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
}
