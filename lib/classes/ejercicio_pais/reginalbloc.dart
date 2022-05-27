import 'dart:convert';

class RegionalBloc {
  RegionalBloc({
    this.acronym,
    this.name,
    this.otherNames,
    this.otherAcronyms,
  });

  String? acronym;
  String? name;
  List<String>? otherNames;
  List<String>? otherAcronyms;

  factory RegionalBloc.fromRawJson(String str) =>
      RegionalBloc.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegionalBloc.fromJson(Map<String, dynamic> json) => RegionalBloc(
        acronym: json["acronym"],
        name: json["name"],
        otherNames: json["otherNames"] == null
            ? null
            : List<String>.from(json["otherNames"].map((x) => x)),
        otherAcronyms: json["otherAcronyms"] == null
            ? null
            : List<String>.from(json["otherAcronyms"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "acronym": acronym,
        "name": name,
        "otherNames": otherNames == null
            ? null
            : List<dynamic>.from(otherNames!.map((x) => x)),
        "otherAcronyms": otherAcronyms == null
            ? null
            : List<dynamic>.from(otherAcronyms!.map((x) => x)),
      };
}
