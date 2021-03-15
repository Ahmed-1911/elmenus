import 'dart:convert';
import 'package:elmenus/model/orders-model.dart';
import 'package:http/http.dart' as http;

class OrdersApi {
  Future<List<OrderElement>> fetchOrdersList() async {
    try {
      var url = 'https://db-json-project.herokuapp.com/orders';
      final response = await http.get(url);
      final extractedData = json.decode(response.body);
      print(extractedData.toString());
      if (response.statusCode == 200) {
        ListOfOrders ordersList = ListOfOrders.fromJson(extractedData);
        List<OrderElement> oList =
            ordersList.orders.map((e) => OrderElement.fromJson(e)).toList();
        return oList;
      } else {
        print(response.statusCode.toString());
      }
      return [];
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<OrderElement> sendOrder(OrderElement order) async {
    try {
      var url = 'https://db-json-project.herokuapp.com/orders';
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, dynamic>{
          'resturant': order.restaurant,
          'userEmail': order.user,
          'totalprice': order.totalPrice,
          'deliveryfee': order.deliveryFee
        }),
      );
      if (response.statusCode == 200) {
        print(OrderElement.fromJson(jsonDecode(response.body)).toString());
      } else {
        throw Exception('Failed to send data');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
