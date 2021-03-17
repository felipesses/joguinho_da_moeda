import 'package:flutter/services.dart';

import 'models/product_model.dart';

class DataRepository {
  static const platform = const MethodChannel('flutter.native/helper');

  Future<ProductModel?> getProductData() async {
    List<dynamic>? response;
    try {
      // final List<dynamic>? internalResult = await platform.invokeListMethod('getProductList');
      final String internalResult = await platform.invokeMethod('getProductList');

      print('INTERNAL RESULT $internalResult');

      print("RESPONSE -> $internalResult");

    } on PlatformException catch (e) {
      print("PLATFORM EXCEPTION -> $e");
    }

  }
}
