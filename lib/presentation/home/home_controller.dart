import '../../data/data_repository.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final dataRepository = DataRepository();

  @observable
  int? batteryLevel;

  @action
  Future<int> getBatteryLevel() async {
    batteryLevel = await dataRepository.getBatteryLevel()!;
    return batteryLevel!;
  }
}
