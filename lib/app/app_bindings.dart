import 'package:get_it/get_it.dart';
import 'package:joguinho_da_moeda/app/app_controller.dart';

class AppBindings {
  GetIt getIt = GetIt.I;

  registerSingleton() {
    getIt.registerLazySingleton<AppController>(() => AppController());
  }
}
