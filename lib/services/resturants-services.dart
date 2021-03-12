import 'dart:convert';
import 'package:elmenus/model/restaurants-model.dart';
import 'package:http/http.dart' as http;

class RestaurantsApi{
  Future<List<RestaurantElement>> fetchRestaurantsList() async {
    try {
      var url = 'https://db-json-project.herokuapp.com/resturants';
      final response = await http.get(url);
      final extractedData = json.decode(response.body);
      if (response.statusCode == 200) {
        ListOfRestaurants restList = ListOfRestaurants.fromJson(extractedData);
        List<RestaurantElement> rList=restList.restaurants.map((e) => RestaurantElement.fromJson(e)).toList();
        return rList;
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