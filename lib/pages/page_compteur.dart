import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';

class PageCompteur extends StatelessWidget {
  const PageCompteur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
  foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
  title: Text("Page Compteur"),
),
    );
  }
}