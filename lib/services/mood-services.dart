import 'dart:convert';
import 'package:elmenus/model/dishe-model.dart';
import 'package:elmenus/model/mood-model.dart';
import 'package:http/http.dart' as http;

class DineOutApi{
  Future<List<MoodElement>> fetchMoodsList() async {
    try {
      var url = 'https://db-json-project.herokuapp.com/moods';
      final response = await http.get(url);
      final extractedData = json.decode(response.body);
      if (response.statusCode == 200) {
        ListOfMoods moodsList = ListOfMoods.fromJson(extractedData);
        List<MoodElement> mList=moodsList.moods.map((e) => MoodElement.fromJson(e)).toList();
        return mList;
      }
      else {
        print("cccccccccccccccc"+ response.statusCode.toString());
      }
      return [];
    }
    catch (e) {
      print("dddddddddddddddddd"+ e.toString());
      return null;
    }
  }

  Future<List<DishElement>> fetchDishesList() async {
    try {
      var url = 'https://db-json-project.herokuapp.com/Dishes';
      final response = await http.get(url);
      final extractedData = json.decode(response.body);
      if (response.statusCode == 200) {
        ListOfDishes dishList = ListOfDishes.fromJson(extractedData);
        List<DishElement> dList=dishList.dishes.map((e) => DishElement.fromJson(e)).toList();
        return dList;
      }
      else {
        print("cccccccccccccccc"+ response.statusCode.toString());
      }
      return [];
    }
    catch (e) {
      print("dddddddddddddddddd"+ e.toString());
      return null;
    }
  }

}