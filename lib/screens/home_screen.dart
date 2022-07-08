import 'package:flutter/material.dart';
import 'package:flutter_preferencias/components/components.dart';

import '../preferencias/preferencia.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routerName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      drawer: const SideMenuComponent(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('isDarkmode: ${Preferencia.isDarkMode}'),
        Divider(),
        Text('Genero: ${Preferencia.gender}'),
        Divider(),
        Text('Nombre de usuario: ${Preferencia.name}')
      ]),
    );
  }
}
