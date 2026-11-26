import 'package:material_ui/material_ui.dart';

// Menu latéral (drawer) avec les liens de navigation principaux de l'app.
class EndDrawerPerso extends StatefulWidget {
  const EndDrawerPerso({super.key});

  @override
  State<EndDrawerPerso> createState() => _EndDrawerPersoState();
}

class _EndDrawerPersoState extends State<EndDrawerPerso> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 120,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Text('Menu'),                 
            ),
          ),
       // Lien vers l'accueil. removeUntil(false) vide l'historique
          // pour éviter d'empiler les pages du menu.
          ListTile(
            leading: Icon(Icons.home),
            tileColor: Theme.of(context).colorScheme.secondary,
            title: Text('Accueil'),
            onTap: (){
              Navigator.pushNamedAndRemoveUntil(
                context,
                 "/page-accueil", 
                 (predicate)=>false,
                 );
            },
          ),
         Divider(
          color: Theme.of(context).colorScheme.tertiary, thickness: 2,),
            // Lien vers le compteur.
                ListTile(
            leading: Icon(Icons.countertops),
            tileColor: Theme.of(context).colorScheme.secondary,
            title: Text('Compteur'),
            onTap: (){
              Navigator.pushNamedAndRemoveUntil(
                context,
                 "/pagecompteur", 
                 (predicate)=>false,
                 );
            },
          ),
         Divider(
          color: Theme.of(context).colorScheme.tertiary, thickness: 2,),
                
           // Lien vers le profil. 
          ListTile(
            leading: Icon(Icons.person),
            tileColor: Theme.of(context).colorScheme.secondary,
            title: Text('Details Profil'),
            onTap: (){
              Navigator.pushNamedAndRemoveUntil(
                context,
                 "/page-details-profil", 
                 (predicate)=>false,
                 );
            },
          ),
         Divider(
          color: Theme.of(context).colorScheme.tertiary, thickness: 2,),
          // Lien vers la boutique.
               ListTile(
            leading: Icon(Icons.shopping_cart),
            tileColor: Theme.of(context).colorScheme.secondary,
            title: Text('Boutique'),
            onTap: (){
              Navigator.pushNamedAndRemoveUntil(
                context,
                 "/page-boutique", 
                 (predicate)=>false,
                 );
            },
          ),
         Divider(
          color: Theme.of(context).colorScheme.tertiary, thickness: 2,),
        ],
      ),
    );
  }
}