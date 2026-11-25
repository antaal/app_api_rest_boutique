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
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemePerso.modeclair,
      darkTheme: ThemePerso.modeSombre,
    );
  }
}