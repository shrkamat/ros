class Item {
  final String name;
  final String img;

  Item(this.name, this.img);
}

class Classifictaion {
  final String name;
  final List<Item> items;

  Classifictaion(this.name, this.items);
}

List<Classifictaion> fetchData() {
  var items = [
    Item("chicken noodles soup",
        "assets/images/soups/nonveg/chickennoodlessoup.jpeg"),
    Item("cream of chicken soup",
        "assets/images/soups/nonveg/creamofchicken.jpeg"),
    Item("Egg Soup soup", "assets/images/soups/nonveg/eggsoup.jpeg"),
    Item("Manchow soup", "assets/images/soups/nonveg/manchow.jpeg"),
  ];

  var classifictaions = [
    Classifictaion("SOUP", items),
  ];

  return classifictaions;
}
