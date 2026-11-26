import 'package:app_api_rest_boutique/pages/page_accueil.dart';
import 'package:app_api_rest_boutique/utils/app_constants.dart';
import 'package:app_api_rest_boutique/utils/routeur.dart';
import 'package:app_api_rest_boutique/utils/theme_perso.dart';
import 'package:material_ui/material_ui.dart';

// Point d'entrée : lance l'application avec MonAppli comme widget racine.

void main(){
  runApp(MonAppli());

}
// Widget racine : configure le thème, les routes et le titre de l'app.
class MonAppli extends StatelessWidget {
  const MonAppli ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.nomDeApplication,
      debugShowCheckedModeBanner: false,

     // Suit automatiquement le mode clair/sombre du système.
      themeMode: ThemeMode.system,
      theme: ThemePerso.modeclair,
      darkTheme: ThemePerso.modeSombre,
      initialRoute: Routeur.routeInitial,
      // Sécurité : redirige vers PageAccueil si une route inconnue est demandée.
      onUnknownRoute: (settings) => 
      MaterialPageRoute(builder: (context)=> PageAccueil()),
      routes: Routeur.routes,
    );
  }
}