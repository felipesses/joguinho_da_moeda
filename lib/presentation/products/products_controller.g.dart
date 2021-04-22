// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductsController on _ProductsControllerBase, Store {
  final _$productModelListAtom =
      Atom(name: '_ProductsControllerBase.productModelList');

  @override
  ObservableFuture<List<ProductModel>?> get productModelList {
    _$productModelListAtom.reportRead();
    return super.productModelList;
  }

  @override
  set productModelList(ObservableFuture<List<ProductModel>?> value) {
    _$productModelListAtom.reportWrite(value, super.productModelList, () {
      super.productModelList = value;
    });
  }

  final _$_ProductsControllerBaseActionController =
      ActionController(name: '_ProductsControllerBase');

  @override
  dynamic getProductData() {
    final _$actionInfo = _$_ProductsControllerBaseActionController.startAction(
        name: '_ProductsControllerBase.getProductData');
    try {
      return super.getProductData();
    } finally {
      _$_ProductsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
productModelList: ${productModelList}
    ''';
  }
}
