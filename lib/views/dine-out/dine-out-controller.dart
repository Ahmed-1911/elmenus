import 'package:elmenus/model/dishe-model.dart';
import 'package:elmenus/model/mood-model.dart';
import 'package:elmenus/services/mood-services.dart';
import 'package:get/get.dart';


class DineOutController extends GetxController {
  @override
  void onInit() async{
    super.onInit();
    await fetchListOfMoods();
    await fetchListOfDishes();
  }

  var isLoading = true.obs;
  var moodsList = List<MoodElement>().obs;
  var dishesList = List<DishElement>().obs;

  fetchListOfMoods() async {
    isLoading(true);
    moodsList.value = await DineOutApi().fetchMoodsList();
    isLoading(false);
  }

  fetchListOfDishes() async {
    isLoading(true);
    dishesList.value = await DineOutApi().fetchDishesList();
    isLoading(false);
  }
}
