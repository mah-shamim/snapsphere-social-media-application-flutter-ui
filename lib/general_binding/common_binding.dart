import 'package:get/get.dart';

import '../services/dio_api_handler/api_worker.dart';

/// Its A Example to Use This Type Of Binding
class CommonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiWorker());
  }
}
