import 'package:app_api_rest_boutique/pages/page_compteur.dart';
import 'package:app_api_rest_boutique/utils/app_constants.dart';
import 'package:app_api_rest_boutique/utils/routeur.dart';
import 'package:app_api_rest_boutique/utils/theme_perso.dart';
import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';


void main(){
  runApp(MonAppli());

}

class MonAppli extends StatelessWidget {
  const MonAppli ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.nomDeApplication,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemePerso.modeclair,
      darkTheme: ThemePerso.modeSombre,
      initialRoute: Routeur.routeInitial,
      onUnknownRoute: (settings) => 
      MaterialPageRoute(builder: (context)=> PageCompteur()),
    );
  }
}