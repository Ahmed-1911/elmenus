import 'dart:convert';
import 'package:elmenus/model/menu-model.dart';
import 'package:http/http.dart' as http;

class MenuApi{
  Future<List<MenuElement>> fetchMenu() async {
    try {
      var url = 'https://db-json-project.herokuapp.com/menu';
      final response = await http.get(url);
      final extractedData = json.decode(response.body);
      print(extractedData.toString());
      if (response.statusCode == 200) {
        Menu menuList = Menu.fromJson(extractedData);
        List<MenuElement> mList=menuList.menu.map((e) => MenuElement.fromJson(e)).toList();
        return mList;
      }
      else {
        print(response.statusCode.toString());
      }
      return [];
    }
    catch (e) {
      print(e.toString());
      return null;
    }
  }

}