import 'package:elmenus/model/mood-model.dart';
import 'package:elmenus/services/mood-services.dart';
import 'package:get/get.dart';


class MoodsController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    fetchListOfMoods();
  }

  var isLoading = true.obs;
  var moodsList = List<MoodElement>().obs;
  fetchListOfMoods() async {
    isLoading(true);
    moodsList.value = await MoodsApi().fetchMoodsList();
    isLoading(false);
  }
}
