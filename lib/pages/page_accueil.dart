import 'package:app_api_rest_boutique/components/end_drawer_perso.dart';
import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';

class PageAccueil extends StatefulWidget {
  const PageAccueil({super.key});

  @override
  State<PageAccueil> createState() => _PageAccueilState();
}

class _PageAccueilState extends State<PageAccueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:  EndDrawerPerso(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: Text("Page Accueil"),
      ),
      );

    
  }
}