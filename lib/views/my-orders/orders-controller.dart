import 'package:elmenus/model/orders-model.dart';
import 'package:elmenus/services/orders-services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class OrdersController extends GetxController {
  @override
  void onInit() async{
    super.onInit();
    await fetchListOfOrders();
  }

  var isLoading = true.obs;
  var orders = List<OrderElement>().obs;

  fetchListOfOrders() async {
    var user=await GetStorage().read('user');
    isLoading(true);
    var all = await OrdersApi().fetchOrdersList();
    orders.value=all.where((element) => element.user==user).toList();
    isLoading(false);
  }

}
