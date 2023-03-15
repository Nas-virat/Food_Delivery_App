import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../repo/popular_product_repo.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  @override
  void onInit() {
    super.onInit();
    getPopularProducts();
  }

  Future<void> getPopularProducts() async {
    Response response = await popularProductRepo.getPopularProducts();

    if (response.statusCode == 200) {
      _popularProductList.assignAll(response.body);
      update();
    } else {
      Get.snackbar('Error', response.statusText.toString());
    }
  }
}
