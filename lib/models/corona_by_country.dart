// To parse this JSON data, do
//
//     final coronaByCountry = coronaByCountryFromJson(jsonString);

import 'dart:convert';

List<CoronaByCountry> coronaByCountryFromJson(String str) => List<CoronaByCountry>.from(json.decode(str).map((x) => CoronaByCountry.fromJson(x)));

String coronaByCountryToJson(List<CoronaByCountry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CoronaByCountry {
  String country;
  String countryCode;
  String province;
  String city;
  String cityCode;
  String lat;
  String lon;
  int confirmed;
  int deaths;
  int recovered;
  int active;
  DateTime date;

  CoronaByCountry({
    this.country,
    this.countryCode,
    this.province,
    this.city,
    this.cityCode,
    this.lat,
    this.lon,
    this.confirmed,
    this.deaths,
    this.recovered,
    this.active,
    this.date,
  });

  factory CoronaByCountry.fromJson(Map<String, dynamic> json) => CoronaByCountry(
    country: json["Country"] == null ? null : json["Country"],
    countryCode: json["CountryCode"] == null ? null : json["CountryCode"],
    province: json["Province"] == null ? null : json["Province"],
    city: json["City"] == null ? null : json["City"],
    cityCode: json["CityCode"] == null ? null : json["CityCode"],
    lat: json["Lat"] == null ? null : json["Lat"],
    lon: json["Lon"] == null ? null : json["Lon"],
    confirmed: json["Confirmed"] == null ? null : json["Confirmed"],
    deaths: json["Deaths"] == null ? null : json["Deaths"],
    recovered: json["Recovered"] == null ? null : json["Recovered"],
    active: json["Active"] == null ? null : json["Active"],
    date: json["Date"] == null ? null : DateTime.parse(json["Date"]),
  );

  Map<String, dynamic> toJson() => {
    "Country": country == null ? null : country,
    "CountryCode": countryCode == null ? null : countryCode,
    "Province": province == null ? null : province,
    "City": city == null ? null : city,
    "CityCode": cityCode == null ? null : cityCode,
    "Lat": lat == null ? null : lat,
    "Lon": lon == null ? null : lon,
    "Confirmed": confirmed == null ? null : confirmed,
    "Deaths": deaths == null ? null : deaths,
    "Recovered": recovered == null ? null : recovered,
    "Active": active == null ? null : active,
    "Date": date == null ? null : date.toIso8601String(),
  };
}
