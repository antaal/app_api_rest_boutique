import 'package:app_api_rest_boutique/components/end_drawer_perso.dart';
import 'package:material_ui/material_ui.dart';

// Page affichant le catalogue de la boutique.
class PageBoutique extends StatelessWidget {
  const PageBoutique({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: EndDrawerPerso(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: Text("Boutique"),
      ),
      body: Center(
        child: Text(
          "Catalogue boutique ",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}