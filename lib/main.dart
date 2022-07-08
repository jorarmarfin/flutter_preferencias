import 'package:flutter/material.dart';
import 'package:flutter_preferencias/preferencias/preferencia.dart';
import 'package:flutter_preferencias/screens/screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferencia.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName: (context) => const HomeScreen(),
        SettingsScreen.routerName: (context) => const SettingsScreen(),
      },
      theme: ThemeData.light(),
    );
  }
}
