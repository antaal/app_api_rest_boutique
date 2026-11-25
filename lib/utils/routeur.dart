import 'package:app_api_rest_boutique/pages/page_accueil.dart';
import 'package:app_api_rest_boutique/pages/page_compteur.dart';
import 'package:flutter/widgets.dart';

abstract class Routeur {
  static const String routeInitial='/page-compteur';
  static final Map<String, WidgetBuilder> routes = {
    "/pagecompteur":(context) => PageCompteur(),
    "/page-accueil": (context) =>PageAccueil(),
  };
  
}