
import 'package:elmenus/utils/ar.dart';
import 'package:elmenus/utils/en.dart';
import 'package:get/get.dart';

class Translation extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en':en,
    'ar':ar
  };

}