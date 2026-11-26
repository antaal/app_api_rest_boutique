import 'package:app_api_rest_boutique/pages/page_accueil.dart';
import 'package:app_api_rest_boutique/pages/page_boutique.dart';
import 'package:app_api_rest_boutique/pages/page_compteur.dart';
import 'package:app_api_rest_boutique/pages/page_details_profil.dart';
import 'package:flutter/widgets.dart';

// Centralise la configuration des routes nommées de l'application.
abstract class Routeur {
  static const String routeInitial='/page-compteur';

  // Mappe les noms de routes aux widgets correspondants.
  static final Map<String, WidgetBuilder> routes = {
    "/pagecompteur":(context) => PageCompteur(),
    "/page-accueil": (context) =>PageAccueil(),
    "/page-details-profil": (context) =>PageDetailsProfil(),
    "/page-boutique": (context) =>PageBoutique(),
  };
  
}