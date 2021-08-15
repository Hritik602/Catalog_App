
class CatalogModel{
  static List<Items> item = [
  Items(
  id: "01",
  name: "iphone 12 Pro",
  desc: "Apple iphone 12th generation",
  price: 999,
  color: "#33505a",
  image:
  "https://bravadowireless.com/wp-content/uploads/2020/11/iphone-12-pro-silver-hero.png",
  )
  ];
}

class Items {
  String id = "";
  String name = "";
  String desc = "";
  double price = 0;
  String color = "";
  String image = "";

  Items(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.image,
      required this.color});

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'desc': this.desc,
      'price': this.price,
      'color': this.color,
      'image': this.image,
    };
  }

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      id: map['id'] as String,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as double,
      color: map['color'] as String,
      image: map['image'] as String,
    );
  }
}


