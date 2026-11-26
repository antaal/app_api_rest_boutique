import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  static final ApiServices _singleton = ApiServices._internal();
  
  ApiServices._internal(); // Private constructor

  factory ApiServices() => _singleton;
  

  Future<dynamic> getData (String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Erreur de Chargement des données: code : ${response.statusCode}. Raison : ${response.reasonPhrase}');
      }
    }catch (e, stacktrace) {
      print("$e ---- $stacktrace");
     
    }
  }
}