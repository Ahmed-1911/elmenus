import 'package:elmenus/model/menu-model.dart';
import 'package:elmenus/services/menu-services.dart';
import 'package:get/get.dart';


class RestaurantController extends GetxController {
  @override
  void onInit() async{
    super.onInit();
    await fetchMenu();
  }

  var isLoading = true.obs;
  var menu = List<MenuElement>().obs;

  fetchMenu() async {
    isLoading(true);
    menu.value = await MenuApi().fetchMenu();
    print(menu.length);
    isLoading(false);
  }
}
