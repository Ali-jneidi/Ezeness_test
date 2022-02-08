class ProductModel
{
  int? id;
  dynamic price;
  dynamic oldPrice;
  dynamic discount;
  String? image;
  String? name;
  bool? inFavorites;
  double? rating;
  String? dist;


  ProductModel({this.id, this.price, this.oldPrice, this.discount, this.image,
      this.name, this.inFavorites, this.rating, this.dist});

  ProductModel.fromJson(Map<String, dynamic> json)
  {
    id = json['id'];
    price = json['price'];
    oldPrice = json['old_price'];
    discount = json['discount'];
    image = json['image'];
    name = json['name'];
    inFavorites = json['in_favorites'];
    rating = json['rating'];
    dist = json['dist'];
  }
}