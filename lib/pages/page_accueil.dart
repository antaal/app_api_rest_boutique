import 'package:app_api_rest_boutique/components/end_drawer_perso.dart';
import 'package:app_api_rest_boutique/services/api_services.dart';
import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';
import 'dart:convert';

class PageAccueil extends StatefulWidget {
  const PageAccueil({super.key});

  @override
  State<PageAccueil> createState() => _PageAccueilState();
}

class _PageAccueilState extends State<PageAccueil> {

  List<Map<String, dynamic>> data=[];
  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiServices apiServices = ApiServices();
       _isLoading = true;
    apiServices.getData("https://jsonplaceholder.typicode.com/users").then((
      result,
    ){
   
      print(jsonEncode(result));
      setState(() {
        _isLoading = false;
        data = List<Map<String, dynamic>>.from(result);
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:  EndDrawerPerso(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: Text("Page Accueil"),
      ),
      body: Center(
        child: SafeArea(
          bottom:true,
          child: Container(
            margin: EdgeInsets.all(10),
            width:MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
              color: Theme.of(context).colorScheme.primary,
              width: 3,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: _isLoading ? 
            CircularProgressIndicator()
            :((data.length > 0)
             ? ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                     NetworkImage("https://i.pravatar.cc/150?img=${data[index]["id"]}"),
                     radius:60,
                  ),
                  title: Text(data[index]["name"]),
                  subtitle: Text(data[index]["email"]),
                );
              },
              separatorBuilder: (context, index){
                return Divider(
                  color: Theme.of(context).colorScheme.tertiary,
                  thickness: 4,
                );
              },
               itemCount: data.length,
               )
               : Text(
                "Liste vide !",
                style: Theme.of(context).textTheme.headlineMedium,
                )
          ),
        ),
      ),
      ),
      );

    
  }
}