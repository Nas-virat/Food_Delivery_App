import 'package:get/get.dart';

import '../controller/popular_product_controller.dart';
import '../data/api/api_client.dart';
import '../repo/popular_product_repo.dart';

Future<void> init() async {
  //api client
  Get.put<ApiClient>(ApiClient(appBaseUrl: 'https://api.example.com'));
  //repos
  Get.put<PopularProductRepo>(PopularProductRepo(apiClient: Get.find()));
  //controllers
  Get.put<PopularProductController>(PopularProductController(popularProductRepo: Get.find()));
}
