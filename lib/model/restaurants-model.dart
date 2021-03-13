class ListOfRestaurants {
  ListOfRestaurants({
    this.restaurants,
  });

  List<dynamic> restaurants;

  factory ListOfRestaurants.fromJson(List<dynamic> json) => ListOfRestaurants(
    restaurants: json,
  );
}

class RestaurantElement {
  RestaurantElement({
    this.id,
    this.location,
    this.hotLine,
    this.branches,
    this.dish,
    this.mood,
    this.openNow,
    this.image,
    this.mealImage
  });

  String id;
  String location;
  dynamic hotLine;
  int branches;
  String dish;
  String mood;
  bool openNow;
  String image;
  String mealImage;

  factory RestaurantElement.fromJson(Map<String, dynamic> json) => RestaurantElement(
    id: json["id"],
    location: json["Location"],
    hotLine: json["hotLine"],
    branches: json["Branches"],
    dish: json["Dish"],
    mood: json["Mood"],
    openNow: json["openNow"],
    image: json["img"],
    mealImage: json["mealImg"],
  );
}