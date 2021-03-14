class ListOfOrders{
  ListOfOrders({
    this.orders,
  });

  List<dynamic> orders;

  factory ListOfOrders.fromJson(List<dynamic> json) => ListOfOrders(
    orders: json,
  );
}

class OrderElement {
  OrderElement({
    this.user,
    this.totalPrice,
    this.deliveryFee,
    this.restaurant
  });

  String user;
  var totalPrice;
  var deliveryFee;
  String restaurant;

  factory OrderElement.fromJson(Map<String, dynamic> json) => OrderElement(
    user: json["userEmail"],
    totalPrice: json["totalprice"],
    deliveryFee: json["deliveryfee"],
    restaurant: json["resturant"],
  );
}