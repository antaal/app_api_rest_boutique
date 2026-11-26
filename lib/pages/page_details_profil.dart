import 'package:app_api_rest_boutique/components/end_drawer_perso.dart';
import 'package:material_ui/material_ui.dart';

// Page affichant les détails du profil de l'utilisateur.
class PageDetailsProfil extends StatelessWidget {
  const PageDetailsProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: EndDrawerPerso(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: Text("Détails Profil"),
      ),
      body: Center(
        child: Text(
          "Détails du profil",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}