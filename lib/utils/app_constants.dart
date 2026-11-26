// Classe abstraite regroupant les constantes globales de l'application.
// Abstraite car elle ne sert qu'à centraliser des valeurs fixes
// (jamais instanciée : pas de "AppConstants()").
// Avantage : si le nom ou la version change, on modifie une seule
// valeur ici plutôt que de chercher partout dans le code.
abstract class AppConstants {
  // Nom affiché de l'application .
  static const String nomDeApplication = "INGC SUPDECO";

  // Numéro de version de l'application, utile pour l'affichage
  static const String versionDeApplication = "1.0.0";
}