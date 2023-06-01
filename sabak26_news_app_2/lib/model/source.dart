class Sourse {
  Sourse({
    required this.id,
    required this.name,
  });
  final String id;
  final String name;

  factory Sourse.fromJson(Map<String, dynamic> json) => // bul #return degendi tyshyndyrot
      Sourse(id: json['id'], name: json['name']);
}
