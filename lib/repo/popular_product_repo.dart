import 'package:food_delivery_app/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {

  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProducts() async {
    return await apiClient.getData('/popular-products');
  }

}
