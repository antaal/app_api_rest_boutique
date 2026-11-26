import 'dart:convert';

import 'package:http/http.dart' as http;


// Service qui centralise les appels à l'API REST.
// Pattern Singleton : une seule instance partagée dans toute l'app.
class ApiServices {
  static final ApiServices _singleton = ApiServices._internal();
  
  ApiServices._internal(); // Private constructor

  factory ApiServices() => _singleton;
  
// Récupère et décode les données JSON depuis une URL donnée.
  Future<dynamic> getData (String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Erreur de Chargement des données: code : ${response.statusCode}. Raison : ${response.reasonPhrase}');
      }
    }catch (e, stacktrace) {
  // Capture les erreurs réseau/parsing pour éviter un crash.
      print("$e ---- $stacktrace");
     
    }
  }
}