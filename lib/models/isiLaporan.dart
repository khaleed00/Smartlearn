import 'dart:convert';

IsiLaporan isiLaporanFromJson(String str) =>
    IsiLaporan.fromJson(json.decode(str));

String isiLaporanToJson(IsiLaporan data) => json.encode(data.toJson());

class IsiLaporan {
  int id;
  String name;
  String kuis;
  String tugas;

  IsiLaporan({
    required this.id,
    required this.name,
    required this.kuis,
    required this.tugas,
  });

  factory IsiLaporan.fromJson(Map<String, dynamic> json) => IsiLaporan(
        id: json["id"],
        name: json["name"],
        kuis: json["kuis"],
        tugas: json["tugas"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "kuis": kuis,
        "tugas": tugas,
      };
}
