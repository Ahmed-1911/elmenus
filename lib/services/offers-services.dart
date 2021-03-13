import 'dart:convert';
import 'package:elmenus/model/offers.dart';
import 'package:http/http.dart' as http;

class OffersApi{
  Future<List<OfferElement>> fetchOffersList() async {
    try {
      var url = 'https://db-json-project.herokuapp.com/offers';
      final response = await http.get(url);
      final extractedData = json.decode(response.body);
      if (response.statusCode == 200) {
        ListOfOffers offersList = ListOfOffers.fromJson(extractedData);
        List<OfferElement> oList=offersList.offers.map((e) => OfferElement.fromJson(e)).toList();
        return oList;
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