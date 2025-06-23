class CategoryDummy {
  final List<CategoryDatum> data;

  CategoryDummy({required this.data});

  factory CategoryDummy.fromJson(Map<String, dynamic> json) => CategoryDummy(
    data: List<CategoryDatum>.from(
      json["data"].map((x) => CategoryDatum.fromJson(x)),
    ),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class CategoryDatum {
  final int id;
  final String name;
  final String color;

  CategoryDatum({required this.id, required this.name, required this.color});

  factory CategoryDatum.fromJson(Map<String, dynamic> json) =>
      CategoryDatum(id: json["id"], name: json["name"], color: json["color"]);

  Map<String, dynamic> toJson() => {"id": id, "name": name, "color": color};
}
