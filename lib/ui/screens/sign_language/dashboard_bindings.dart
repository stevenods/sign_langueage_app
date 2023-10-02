import 'package:get/instance_manager.dart';
import 'package:sped_app/controller/translate.dart';

class TranslateBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TranslaterController>(() => TranslaterController(),
        fenix: true);
  }
}
