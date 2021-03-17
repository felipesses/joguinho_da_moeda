import 'package:flutter/material.dart';
import 'package:joguinho_da_moeda/app/pages/home_page.dart';


class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Joguinho da Moeda",
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
