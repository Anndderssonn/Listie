class ItemsDummy {
  final List<ItemsDatum> data;

  ItemsDummy({required this.data});

  factory ItemsDummy.fromJson(Map<String, dynamic> json) => ItemsDummy(
    data: List<ItemsDatum>.from(
      json["data"].map((x) => ItemsDatum.fromJson(x)),
    ),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class ItemsDatum {
  final int id;
  final String name;
  final int quantity;
  final int category;

  ItemsDatum({
    required this.id,
    required this.name,
    required this.quantity,
    required this.category,
  });

  factory ItemsDatum.fromJson(Map<String, dynamic> json) => ItemsDatum(
    id: json["id"],
    name: json["name"],
    quantity: json["quantity"],
    category: json["category"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "quantity": quantity,
    "category": category,
  };
}
