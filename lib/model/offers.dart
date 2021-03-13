class ListOfOffers{
  ListOfOffers({
    this.offers,
  });

  List<dynamic> offers;

  factory ListOfOffers.fromJson(List<dynamic> json) => ListOfOffers(
    offers: json,
  );
}

class OfferElement {
  OfferElement({
   this.name,
    this.duration,
    this.image,
    this.mealImage
  });

  String name;
  String duration;
  String image;
  String mealImage;

  factory OfferElement.fromJson(Map<String, dynamic> json) => OfferElement(
    name: json["resturant"],
    duration: json["duration"],
    image: json["img"],
    mealImage: json["mealImg"],
  );
}