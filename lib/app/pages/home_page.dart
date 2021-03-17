import 'package:flutter/material.dart';
import 'package:joguinho_da_moeda/app/data/data_repository.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dataRepository = DataRepository();

  @override
  void initState() {
    super.initState();
    dataRepository.getProductData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Joguinho da Moeda"),
      ),
      body: Center(),
    );
  }
}
