/// carts : [{"id":16,"products":[{"id":3,"title":"Samsung Universe 9","price":1249,"quantity":3,"total":3747,"discountPercentage":15.46,"discountedPrice":3168},{"id":50,"title":"Women Shoes","price":36,"quantity":3,"total":108,"discountPercentage":16.87,"discountedPrice":90},{"id":67,"title":"Fashion Magnetic Wrist Watch","price":60,"quantity":2,"total":120,"discountPercentage":16.69,"discountedPrice":100},{"id":86,"title":"Bluetooth Aux","price":25,"quantity":1,"total":25,"discountPercentage":10.56,"discountedPrice":22},{"id":12,"title":"Brown Perfume","price":40,"quantity":1,"total":40,"discountPercentage":15.66,"discountedPrice":34}],"total":4040,"discountedTotal":3414,"userId":15,"totalProducts":5,"totalQuantity":10}]
/// total : 1
/// skip : 0
/// limit : 1

class CartsModels {
  CartsModels({
      List<Carts>? carts, 
      num? total, 
      num? skip, 
      num? limit,}){
    _carts = carts;
    _total = total;
    _skip = skip;
    _limit = limit;
}

  CartsModels.fromJson(dynamic json) {
    if (json['carts'] != null) {
      _carts = [];
      json['carts'].forEach((v) {
        _carts?.add(Carts.fromJson(v));
      });
    }
    _total = json['total'];
    _skip = json['skip'];
    _limit = json['limit'];
  }
  List<Carts>? _carts;
  num? _total;
  num? _skip;
  num? _limit;
CartsModels copyWith({  List<Carts>? carts,
  num? total,
  num? skip,
  num? limit,
}) => CartsModels(  carts: carts ?? _carts,
  total: total ?? _total,
  skip: skip ?? _skip,
  limit: limit ?? _limit,
);
  List<Carts>? get carts => _carts;
  num? get total => _total;
  num? get skip => _skip;
  num? get limit => _limit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_carts != null) {
      map['carts'] = _carts?.map((v) => v.toJson()).toList();
    }
    map['total'] = _total;
    map['skip'] = _skip;
    map['limit'] = _limit;
    return map;
  }

}

/// id : 16
/// products : [{"id":3,"title":"Samsung Universe 9","price":1249,"quantity":3,"total":3747,"discountPercentage":15.46,"discountedPrice":3168},{"id":50,"title":"Women Shoes","price":36,"quantity":3,"total":108,"discountPercentage":16.87,"discountedPrice":90},{"id":67,"title":"Fashion Magnetic Wrist Watch","price":60,"quantity":2,"total":120,"discountPercentage":16.69,"discountedPrice":100},{"id":86,"title":"Bluetooth Aux","price":25,"quantity":1,"total":25,"discountPercentage":10.56,"discountedPrice":22},{"id":12,"title":"Brown Perfume","price":40,"quantity":1,"total":40,"discountPercentage":15.66,"discountedPrice":34}]
/// total : 4040
/// discountedTotal : 3414
/// userId : 15
/// totalProducts : 5
/// totalQuantity : 10

class Carts {
  Carts({
      num? id, 
      List<Products>? products, 
      num? total, 
      num? discountedTotal, 
      num? userId, 
      num? totalProducts, 
      num? totalQuantity,}){
    _id = id;
    _products = products;
    _total = total;
    _discountedTotal = discountedTotal;
    _userId = userId;
    _totalProducts = totalProducts;
    _totalQuantity = totalQuantity;
}

  Carts.fromJson(dynamic json) {
    _id = json['id'];
    if (json['products'] != null) {
      _products = [];
      json['products'].forEach((v) {
        _products?.add(Products.fromJson(v));
      });
    }
    _total = json['total'];
    _discountedTotal = json['discountedTotal'];
    _userId = json['userId'];
    _totalProducts = json['totalProducts'];
    _totalQuantity = json['totalQuantity'];
  }
  num? _id;
  List<Products>? _products;
  num? _total;
  num? _discountedTotal;
  num? _userId;
  num? _totalProducts;
  num? _totalQuantity;
Carts copyWith({  num? id,
  List<Products>? products,
  num? total,
  num? discountedTotal,
  num? userId,
  num? totalProducts,
  num? totalQuantity,
}) => Carts(  id: id ?? _id,
  products: products ?? _products,
  total: total ?? _total,
  discountedTotal: discountedTotal ?? _discountedTotal,
  userId: userId ?? _userId,
  totalProducts: totalProducts ?? _totalProducts,
  totalQuantity: totalQuantity ?? _totalQuantity,
);
  num? get id => _id;
  List<Products>? get products => _products;
  num? get total => _total;
  num? get discountedTotal => _discountedTotal;
  num? get userId => _userId;
  num? get totalProducts => _totalProducts;
  num? get totalQuantity => _totalQuantity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_products != null) {
      map['products'] = _products?.map((v) => v.toJson()).toList();
    }
    map['total'] = _total;
    map['discountedTotal'] = _discountedTotal;
    map['userId'] = _userId;
    map['totalProducts'] = _totalProducts;
    map['totalQuantity'] = _totalQuantity;
    return map;
  }

}

/// id : 3
/// title : "Samsung Universe 9"
/// price : 1249
/// quantity : 3
/// total : 3747
/// discountPercentage : 15.46
/// discountedPrice : 3168

class Products {
  Products({
      num? id, 
      String? title, 
      num? price, 
      num? quantity, 
      num? total, 
      num? discountPercentage, 
      num? discountedPrice,}){
    _id = id;
    _title = title;
    _price = price;
    _quantity = quantity;
    _total = total;
    _discountPercentage = discountPercentage;
    _discountedPrice = discountedPrice;
}

  Products.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _price = json['price'];
    _quantity = json['quantity'];
    _total = json['total'];
    _discountPercentage = json['discountPercentage'];
    _discountedPrice = json['discountedPrice'];
  }
  num? _id;
  String? _title;
  num? _price;
  num? _quantity;
  num? _total;
  num? _discountPercentage;
  num? _discountedPrice;
Products copyWith({  num? id,
  String? title,
  num? price,
  num? quantity,
  num? total,
  num? discountPercentage,
  num? discountedPrice,
}) => Products(  id: id ?? _id,
  title: title ?? _title,
  price: price ?? _price,
  quantity: quantity ?? _quantity,
  total: total ?? _total,
  discountPercentage: discountPercentage ?? _discountPercentage,
  discountedPrice: discountedPrice ?? _discountedPrice,
);
  num? get id => _id;
  String? get title => _title;
  num? get price => _price;
  num? get quantity => _quantity;
  num? get total => _total;
  num? get discountPercentage => _discountPercentage;
  num? get discountedPrice => _discountedPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['price'] = _price;
    map['quantity'] = _quantity;
    map['total'] = _total;
    map['discountPercentage'] = _discountPercentage;
    map['discountedPrice'] = _discountedPrice;
    return map;
  }

}