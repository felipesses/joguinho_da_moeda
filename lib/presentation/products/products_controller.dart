import 'package:mobx/mobx.dart';

import '../../data/data_repository.dart';
import '../../data/models/product_model.dart';

part 'products_controller.g.dart';

class ProductsController = _ProductsControllerBase with _$ProductsController;

abstract class _ProductsControllerBase with Store {
  final dataRepository = DataRepository();

  @observable
  late ObservableFuture<List<ProductModel>?> productModelList =
      ObservableFuture<List<ProductModel>>.value([]);

  @action
  getProductData() {
    productModelList = dataRepository.getProductData().asObservable();
  }
}
