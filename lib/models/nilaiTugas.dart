import 'dart:convert';

NilaiTugas nilaiTugasFromJson(String str) =>
    NilaiTugas.fromJson(json.decode(str));

String nilaiTugasToJson(NilaiTugas data) => json.encode(data.toJson());

class NilaiTugas {
  int id;
  String name;
  int nilai;

  NilaiTugas({
    required this.id,
    required this.name,
    required this.nilai,
  });

  factory NilaiTugas.fromJson(Map<String, dynamic> json) => NilaiTugas(
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
