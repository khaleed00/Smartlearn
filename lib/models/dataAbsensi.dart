import 'dart:convert';

DataAbsensi dataAbsensiFromJson(String str) =>
    DataAbsensi.fromJson(json.decode(str));

String dataAbsensiToJson(DataAbsensi data) => json.encode(data.toJson());

class DataAbsensi {
  int id;
  String name;
  String waktu;
  String status;

  DataAbsensi({
    required this.id,
    required this.name,
    required this.waktu,
    required this.status,
  });

  factory DataAbsensi.fromJson(Map<String, dynamic> json) => DataAbsensi(
        id: json["id"],
        name: json["name"],
        waktu: json["waktu"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "waktu": waktu,
        "status": status,
      };
}
