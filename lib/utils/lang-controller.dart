
import 'package:get/get.dart';


class LanguageController extends GetxController {
  @override
  void onInit() async{
    super.onInit();
  }
  var lang = 'en'.obs;
  changeLang(String lan){
    lang.value=lan;
    update();
  }
}
