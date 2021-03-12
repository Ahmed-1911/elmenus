class Menu{
  Menu({
    this.menu,
  });

  List<dynamic> menu;

  factory Menu.fromJson(List<dynamic> json) => Menu(
    menu: json,
  );
}

class MenuElement {
  MenuElement({
    this.name,
    this.price,
    this.description
  });

  String name;
  var price;
  String description;

  factory MenuElement.fromJson(Map<String, dynamic> json) => MenuElement(
    name: json["meal"],
    price: json["price"],
    description: json["description"],
  );
}