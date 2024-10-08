import 'package:get/get.dart';
import 'package:demandium/utils/core_export.dart';

class ServiceBinding extends Bindings{
  @override
  void dependencies() async {

    final sharedPreferences = await SharedPreferences.getInstance();
    Get.lazyPut(() => sharedPreferences);
    Get.lazyPut(() => ServiceController(
        serviceRepo: ServiceRepo(apiClient: ApiClient(
           appBaseUrl: AppConstants.baseUrl,
           sharedPreferences: sharedPreferences))
    ));
  }
}