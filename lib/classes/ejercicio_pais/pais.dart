// To parse this JSON data, do
//
//     final pais = paisFromJson(jsonString);

import 'dart:convert';

import 'package:explication_http/classes/ejercicio_pais/reginalbloc.dart';
import 'package:explication_http/classes/ejercicio_pais/translations.dart';

import 'currency.dart';
import 'flags.dart';
import 'lenguage.dart';

class Pais {
  Pais({
    this.name,
    this.topLevelDomain,
    this.alpha2Code,
    this.alpha3Code,
    this.callingCodes,
    this.capital,
    this.altSpellings,
    this.subregion,
    this.region,
    this.population,
    this.latlng,
    this.demonym,
    this.area,
    this.gini,
    this.timezones,
    this.borders,
    this.nativeName,
    this.numericCode,
    this.flags,
    this.currencies,
    this.languages,
    this.translations,
    this.flag,
    this.regionalBlocs,
    this.cioc,
    this.independent,
  });

  String? name;
  List<String>? topLevelDomain;
  String? alpha2Code;
  String? alpha3Code;
  List<String>? callingCodes;
  String? capital;
  List<String>? altSpellings;
  String? subregion;
  String? region;
  int? population;
  List<double>? latlng;
  String? demonym;
  double? area;
  double? gini;
  List<String>? timezones;
  List<String>? borders;
  String? nativeName;
  String? numericCode;
  Flags? flags;
  List<Currency>? currencies;
  List<Language>? languages;
  Translations? translations;
  String? flag;
  List<RegionalBloc>? regionalBlocs;
  String? cioc;
  bool? independent;

  factory Pais.fromRawJson(String str) => Pais.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pais.fromJson(Map<String, dynamic> json) => Pais(
        name: json['name'],
        topLevelDomain: json["topLevelDomain"] == null
            ? null
            : List<String>.from(json["topLevelDomain"].map((x) => x)),
        alpha2Code: json["alpha2Code"],
        alpha3Code: json["alpha3Code"],
        callingCodes: json["callingCodes"] == null
            ? null
            : List<String>.from(json["callingCodes"].map((x) => x)),
        capital: json["capital"],
        altSpellings: json["altSpellings"] == null
            ? null
            : List<String>.from(json["altSpellings"].map((x) => x)),
        subregion: json["subregion"],
        region: json["region"],
        population: json["population"],
        latlng: json["latlng"] == null
            ? null
            : List<double>.from(json["latlng"].map((x) => x.toDouble())),
        demonym: json["demonym"],
        area: json["area"],
        gini: json["gini"],
        timezones: json["timezones"] == null
            ? null
            : List<String>.from(json["timezones"].map((x) => x)),
        borders: json["borders"] == null
            ? null
            : List<String>.from(json["borders"].map((x) => x)),
        nativeName: json["nativeName"],
        numericCode: json["numericCode"],
        flags: json["flags"] == null ? null : Flags.fromJson(json["flags"]),
        currencies: json["currencies"] == null
            ? null
            : List<Currency>.from(
                json["currencies"].map((x) => Currency.fromJson(x))),
        languages: json["languages"] == null
            ? null
            : List<Language>.from(
                json["languages"].map((x) => Language.fromJson(x))),
        translations: json["translations"] == null
            ? null
            : Translations.fromJson(json["translations"]),
        flag: json["flag"],
        regionalBlocs: json["regionalBlocs"] == null
            ? null
            : List<RegionalBloc>.from(
                json["regionalBlocs"].map((x) => RegionalBloc.fromJson(x))),
        cioc: json["cioc"],
        independent: json["independent"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "topLevelDomain": topLevelDomain == null
            ? null
            : List<dynamic>.from(topLevelDomain!.map((x) => x)),
        "alpha2Code": alpha2Code,
        "alpha3Code": alpha3Code,
        "callingCodes": callingCodes == null
            ? null
            : List<dynamic>.from(callingCodes!.map((x) => x)),
        "capital": capital,
        "altSpellings": altSpellings == null
            ? null
            : List<dynamic>.from(altSpellings!.map((x) => x)),
        "subregion": subregion,
        "region": region,
        "population": population,
        "latlng":
            latlng == null ? null : List<dynamic>.from(latlng!.map((x) => x)),
        "demonym": demonym,
        "area": area,
        "gini": gini,
        "timezones": timezones == null
            ? null
            : List<dynamic>.from(timezones!.map((x) => x)),
        "borders":
            borders == null ? null : List<dynamic>.from(borders!.map((x) => x)),
        "nativeName": nativeName,
        "numericCode": numericCode,
        "flags": flags == null ? null : flags!.toJson(),
        "currencies": currencies == null
            ? null
            : List<dynamic>.from(currencies!.map((x) => x.toJson())),
        "languages": languages == null
            ? null
            : List<dynamic>.from(languages!.map((x) => x.toJson())),
        "translations": translations == null ? null : translations!.toJson(),
        "flag": flag,
        "regionalBlocs": regionalBlocs == null
            ? null
            : List<dynamic>.from(regionalBlocs!.map((x) => x.toJson())),
        "cioc": cioc,
        "independent": independent,
      };
}
