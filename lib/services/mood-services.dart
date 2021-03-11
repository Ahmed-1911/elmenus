import 'dart:convert';
import 'package:elmenus/model/mood-model.dart';
import 'package:http/http.dart' as http;

class MoodsApi{
  Future<List<MoodElement>> fetchMoodsList() async {
    try {
      var url = 'http://localhost:3000';
      final response = await http.get(url);
      final extractedData = json.decode(response.body);
      print(extractedData);
      if (response.statusCode == 200) {
        ListOfMoods recitersList = ListOfMoods.fromJson(extractedData);
        List<MoodElement> mList=recitersList.moods.map((e) => MoodElement.fromJson(e)).toList();
        print(mList);
        return mList;
      }
      else {
        print( response.statusCode.toString());
      }
      return [];
    }
    catch (e) {
      print( e.toString());
      return null;
    }
  }
}