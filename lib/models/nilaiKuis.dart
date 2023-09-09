import 'dart:convert';

NilaiKuis nilaiKuisFromJson(String str) => NilaiKuis.fromJson(json.decode(str));

String nilaiKuisToJson(NilaiKuis data) => json.encode(data.toJson());

class NilaiKuis {
  int id;
  String name;
  int nilai;

  NilaiKuis({
    required this.id,
    required this.name,
    required this.nilai,
  });

  factory NilaiKuis.fromJson(Map<String, dynamic> json) => NilaiKuis(
        id: json["id"],
        name: json["name"],
        nilai: json["nilai"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "nilai": nilai,
      };
}
