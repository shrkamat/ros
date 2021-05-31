class Item {
  final String name;
  final String img;

  Item(this.name, this.img);
}

class Classification {
  final String name;
  final List<Item> itemList;

  Classification(this.name, this.itemList);
}

List<Classification> fetchData() {
  var itemsSoup = [
    Item("chicken noodles soup",
        "assets/images/soups/nonveg/chickennoodlessoup.jpeg"),
    Item("cream of chicken soup",
        "assets/images/soups/nonveg/creamofchicken.jpeg"),
    Item("Egg Soup", "assets/images/soups/nonveg/eggsoup.jpeg"),
    Item("Manchow soup", "assets/images/soups/nonveg/manchow.jpeg"),
    Item("SeaFood soup", "assets/images/soups/nonveg/seafoodsoup.jpeg"),
  ];

  var itemStarters = [
    Item("chicken noodles soup",
        "assets/images/soups/nonveg/chickennoodlessoup.jpeg"),
    Item("cream of chicken soup",
        "assets/images/soups/nonveg/chickennoodlessoup.jpeg"),
    Item("Egg Soup", "assets/images/soups/nonveg/chickennoodlessoup.jpeg"),
    Item("Manchow soup", "assets/images/soups/nonveg/manchow.jpeg"),
    Item("SeaFood soup", "assets/images/soups/nonveg/seafoodsoup.jpeg"),
  ];
  var classifictaionList = [
    Classification('SOUP', itemsSoup),
    Classification('Starters', itemStarters)
  ];
  return classifictaionList;
}
