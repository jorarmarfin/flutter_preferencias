import 'package:flutter/material.dart';
import 'package:flutter_preferencias/components/side_menu_component.dart';

import '../preferencias/preferencia.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  static String routerName = 'settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // bool isDarkMone = false;
  // int gender = 1;
  // String name = 'Fernando';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      drawer: const SideMenuComponent(),
      body: SingleChildScrollView(
        child: Column(children: [
          Text('Ajustes'),
          Divider(),
          SwitchListTile.adaptive(
              value: Preferencia.isDarkMode,
              title: Text('Modo Dark'),
              onChanged: (value) {
                Preferencia.isDarkMode = value;
                setState(() {});
              }),
          Divider(),
          RadioListTile<int>(
              title: const Text('Masculino'),
              value: 1,
              groupValue: Preferencia.gender,
              onChanged: (value) {
                Preferencia.gender = value ?? 2;
                setState(() {});
              }),
          RadioListTile<int>(
              title: const Text('Femenino'),
              value: 2,
              groupValue: Preferencia.gender,
              onChanged: (value) {
                Preferencia.gender = value ?? 2;
                setState(() {});
              }),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
                initialValue: Preferencia.name,
                decoration: const InputDecoration(
                    label: Text('Nombre'), helperText: 'Nombre de usuario'),
                onChanged: (value) {
                  Preferencia.name = value;
                  print(value);
                  setState(() {});
                }),
          )
        ]),
      ),
    );
  }
}
