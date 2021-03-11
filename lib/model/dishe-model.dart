class ListOfDishes {
  ListOfDishes({
    this.dishes,
  });

  List<dynamic> dishes;

  factory ListOfDishes.fromJson(List<dynamic> json) => ListOfDishes(
    dishes: json,
  );
}

class DishElement {
  DishElement({
    this.dish,
  });

  String dish;

  factory DishElement.fromJson(Map<String, dynamic> json) => DishElement(
    dish: json["name"],
  );

}

