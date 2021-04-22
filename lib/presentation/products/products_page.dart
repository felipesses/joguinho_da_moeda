import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:joguinho_da_moeda/app/app_controller.dart';

import '../../data/models/product_model.dart';
import 'products_controller.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final store = ProductsController();
  final appStore = GetIt.I.get<AppController>();

  @override
  void initState() {
    super.initState();
    print(appStore.coins);
    store.getProductData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Observer(
            builder: (_) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/coin.svg',
                    ),
                    SizedBox(width: 5),
                    Text(
                      '${appStore.coins} Coins',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Observer(
          builder: (_) {
            List<ProductModel>? list = store.productModelList.value;

            if (list == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            return GridView.builder(
              itemCount: list.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (_, index) {
                return Container(
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: InkWell(
                    onTap: () {
                      buyProduct(list[index]);
                    },
                    child: GridTile(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              list[index].imgUrl,
                            ),
                            SizedBox(height: 5),
                            Text(
                              list[index].name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      footer: Center(
                        child: Text("${list[index].price} Coins"),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  buyProduct(ProductModel model) {
    if (appStore.coins >= double.parse(model.price)) {
      appStore.coins -= int.parse(model.price);
      showAlert("Produto adiquirido com successo!");
    } else
      showAlert('Você não tem moedas o suficiente!');
  }

  showAlert(String content) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          backgroundColor: Color(0xffDDCA815),
          title: Text(
            content,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
