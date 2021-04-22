import 'package:flutter/services.dart';

import 'models/product_model.dart';

class DataRepository {
  static const platform = const MethodChannel('flutter.native/helper');

  Future<List<ProductModel>?> getProductData() async {
    List<ProductModel>? response;
    try {
      final List<Map<dynamic, dynamic>>? internalResult = await platform
          .invokeListMethod<Map<dynamic, dynamic>>('getProductData');
      response = internalResult?.map((e) => ProductModel.fromJson(e)).toList();
    } on PlatformException catch (e) {
      print("PLATFORM EXCEPTION -> $e");
    }

    print("RESPONSE -> $response");

    return response;
  }

  Future<int>? getBatteryLevel() async {
    int? response;

    try {
      final int result = await platform.invokeMethod('getBatteryLevel');

      response = result;
    } on PlatformException catch (e) {
      print("PLATFORM EXCEPTION -> $e");
    }

    print("RESPONSE -> $response");

    return response!;
  }
}
