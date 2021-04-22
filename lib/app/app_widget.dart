import 'package:flutter/material.dart';
import 'package:joguinho_da_moeda/app/app_bindings.dart';
import 'package:joguinho_da_moeda/presentation/home/home_page.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  AppBindings appBindings = AppBindings();

  @override
  void initState() {
    super.initState();

    appBindings.registerSingleton();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Joguinho da Moeda",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
