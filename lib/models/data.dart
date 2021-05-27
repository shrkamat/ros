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
    Item(
      "Veg Manchow",
      "https://s9c2c8i7.rocketcdn.me/wp-content/uploads/2020/06/veg-manchow-soup.jpg",
    ),
    Item("cream of chicken soup",
        "https://www.secondrecipe.com/wp-content/uploads/2019/12/tomato-basil-soup-360x480.jpg"),
    Item("Egg Soup",
        "https://www.secondrecipe.com/wp-content/uploads/2018/08/corn-soup-360x480.jpg"),
    Item(
      "Manchow soup",
      "https://www.secondrecipe.com/wp-content/uploads/2020/06/tofu-brocolli-soup-360x480.jpg",
    ),
  ];

  var itemStarters = [
    Item("chicken Tandoor",
        "https://www.secondrecipe.com/wp-content/uploads/2019/12/gobi-manchurian2019-1-360x480.jpg"),
    Item("chicken chilly",
        "https://www.secondrecipe.com/wp-content/uploads/2016/05/roasted-vegetables-360x480.jpg"),
    Item("veg starters",
        "https://www.secondrecipe.com/wp-content/uploads/2020/03/banana-cutlet-360x480.jpg"),
    Item("Paneer Tikka",
        "https://www.secondrecipe.com/wp-content/uploads/2018/02/paneer-tikka-360x480.jpg"),
  ];
  var classifictaionList = [
    Classification('Soups', itemsSoup),
    Classification('Starters', itemStarters)
  ];
  return classifictaionList;
}
