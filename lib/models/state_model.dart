// To parse this JSON data, do
//
//     final stateWiseCorona = stateWiseCoronaFromJson(jsonString);

import 'dart:convert';

StateWiseCorona stateWiseCoronaFromJson(String str) => StateWiseCorona.fromJson(json.decode(str));

String stateWiseCoronaToJson(StateWiseCorona data) => json.encode(data.toJson());

class StateWiseCorona {
  dynamic keyValues;
  TotalValues totalValues;
  StateWise stateWise;

  StateWiseCorona({
    this.keyValues,
    this.totalValues,
    this.stateWise,
  });

  factory StateWiseCorona.fromJson(Map<String, dynamic> json) => StateWiseCorona(
    keyValues: json["key_values"],
    totalValues: json["total_values"] == null ? null : TotalValues.fromJson(json["total_values"]),
    stateWise: json["state_wise"] == null ? null : StateWise.fromJson(json["state_wise"]),
  );

  Map<String, dynamic> toJson() => {
    "key_values": keyValues,
    "total_values": totalValues == null ? null : totalValues.toJson(),
    "state_wise": stateWise == null ? null : stateWise.toJson(),
  };
}

class StateWise {
  TotalValues maharashtra;
  TotalValues delhi;
  TotalValues tamilNadu;
  TotalValues rajasthan;
  TotalValues madhyaPradesh;
  TotalValues gujarat;
  TotalValues uttarPradesh;
  TotalValues telangana;
  TotalValues andhraPradesh;
  TotalValues kerala;
  TotalValues karnataka;
  TotalValues jammuAndKashmir;
  TotalValues westBengal;
  TotalValues haryana;
  TotalValues punjab;
  TotalValues bihar;
  TotalValues odisha;
  TotalValues uttarakhand;
  Chhattisgarh chhattisgarh;
  TotalValues himachalPradesh;
  TotalValues assam;
  TotalValues jharkhand;
  Chandigarh chandigarh;
  TotalValues ladakh;
  TotalValues andamanAndNicobarIslands;
  TotalValues meghalaya;
  TotalValues goa;
  TotalValues puducherry;
  TotalValues manipur;
  TotalValues tripura;
  TotalValues mizoram;
  TotalValues arunachalPradesh;
  DadraAndNagarHaveli dadraAndNagarHaveli;
  TotalValues nagaland;
  TotalValues damanAndDiu;
  TotalValues lakshadweep;
  TotalValues sikkim;

  StateWise({
    this.maharashtra,
    this.delhi,
    this.tamilNadu,
    this.rajasthan,
    this.madhyaPradesh,
    this.gujarat,
    this.uttarPradesh,
    this.telangana,
    this.andhraPradesh,
    this.kerala,
    this.karnataka,
    this.jammuAndKashmir,
    this.westBengal,
    this.haryana,
    this.punjab,
    this.bihar,
    this.odisha,
    this.uttarakhand,
    this.chhattisgarh,
    this.himachalPradesh,
    this.assam,
    this.jharkhand,
    this.chandigarh,
    this.ladakh,
    this.andamanAndNicobarIslands,
    this.meghalaya,
    this.goa,
    this.puducherry,
    this.manipur,
    this.tripura,
    this.mizoram,
    this.arunachalPradesh,
    this.dadraAndNagarHaveli,
    this.nagaland,
    this.damanAndDiu,
    this.lakshadweep,
    this.sikkim,
  });

  factory StateWise.fromJson(Map<String, dynamic> json) => StateWise(
    maharashtra: json["Maharashtra"] == null ? null : TotalValues.fromJson(json["Maharashtra"]),
    delhi: json["Delhi"] == null ? null : TotalValues.fromJson(json["Delhi"]),
    tamilNadu: json["Tamil Nadu"] == null ? null : TotalValues.fromJson(json["Tamil Nadu"]),
    rajasthan: json["Rajasthan"] == null ? null : TotalValues.fromJson(json["Rajasthan"]),
    madhyaPradesh: json["Madhya Pradesh"] == null ? null : TotalValues.fromJson(json["Madhya Pradesh"]),
    gujarat: json["Gujarat"] == null ? null : TotalValues.fromJson(json["Gujarat"]),
    uttarPradesh: json["Uttar Pradesh"] == null ? null : TotalValues.fromJson(json["Uttar Pradesh"]),
    telangana: json["Telangana"] == null ? null : TotalValues.fromJson(json["Telangana"]),
    andhraPradesh: json["Andhra Pradesh"] == null ? null : TotalValues.fromJson(json["Andhra Pradesh"]),
    kerala: json["Kerala"] == null ? null : TotalValues.fromJson(json["Kerala"]),
    karnataka: json["Karnataka"] == null ? null : TotalValues.fromJson(json["Karnataka"]),
    jammuAndKashmir: json["Jammu and Kashmir"] == null ? null : TotalValues.fromJson(json["Jammu and Kashmir"]),
    westBengal: json["West Bengal"] == null ? null : TotalValues.fromJson(json["West Bengal"]),
    haryana: json["Haryana"] == null ? null : TotalValues.fromJson(json["Haryana"]),
    punjab: json["Punjab"] == null ? null : TotalValues.fromJson(json["Punjab"]),
    bihar: json["Bihar"] == null ? null : TotalValues.fromJson(json["Bihar"]),
    odisha: json["Odisha"] == null ? null : TotalValues.fromJson(json["Odisha"]),
    uttarakhand: json["Uttarakhand"] == null ? null : TotalValues.fromJson(json["Uttarakhand"]),
    chhattisgarh: json["Chhattisgarh"] == null ? null : Chhattisgarh.fromJson(json["Chhattisgarh"]),
    himachalPradesh: json["Himachal Pradesh"] == null ? null : TotalValues.fromJson(json["Himachal Pradesh"]),
    assam: json["Assam"] == null ? null : TotalValues.fromJson(json["Assam"]),
    jharkhand: json["Jharkhand"] == null ? null : TotalValues.fromJson(json["Jharkhand"]),
    chandigarh: json["Chandigarh"] == null ? null : Chandigarh.fromJson(json["Chandigarh"]),
    ladakh: json["Ladakh"] == null ? null : TotalValues.fromJson(json["Ladakh"]),
    andamanAndNicobarIslands: json["Andaman and Nicobar Islands"] == null ? null : TotalValues.fromJson(json["Andaman and Nicobar Islands"]),
    meghalaya: json["Meghalaya"] == null ? null : TotalValues.fromJson(json["Meghalaya"]),
    goa: json["Goa"] == null ? null : TotalValues.fromJson(json["Goa"]),
    puducherry: json["Puducherry"] == null ? null : TotalValues.fromJson(json["Puducherry"]),
    manipur: json["Manipur"] == null ? null : TotalValues.fromJson(json["Manipur"]),
    tripura: json["Tripura"] == null ? null : TotalValues.fromJson(json["Tripura"]),
    mizoram: json["Mizoram"] == null ? null : TotalValues.fromJson(json["Mizoram"]),
    arunachalPradesh: json["Arunachal Pradesh"] == null ? null : TotalValues.fromJson(json["Arunachal Pradesh"]),
    dadraAndNagarHaveli: json["Dadra and Nagar Haveli"] == null ? null : DadraAndNagarHaveli.fromJson(json["Dadra and Nagar Haveli"]),
    nagaland: json["Nagaland"] == null ? null : TotalValues.fromJson(json["Nagaland"]),
    damanAndDiu: json["Daman and Diu"] == null ? null : TotalValues.fromJson(json["Daman and Diu"]),
    lakshadweep: json["Lakshadweep"] == null ? null : TotalValues.fromJson(json["Lakshadweep"]),
    sikkim: json["Sikkim"] == null ? null : TotalValues.fromJson(json["Sikkim"]),
  );

  Map<String, dynamic> toJson() => {
    "Maharashtra": maharashtra == null ? null : maharashtra.toJson(),
    "Delhi": delhi == null ? null : delhi.toJson(),
    "Tamil Nadu": tamilNadu == null ? null : tamilNadu.toJson(),
    "Rajasthan": rajasthan == null ? null : rajasthan.toJson(),
    "Madhya Pradesh": madhyaPradesh == null ? null : madhyaPradesh.toJson(),
    "Gujarat": gujarat == null ? null : gujarat.toJson(),
    "Uttar Pradesh": uttarPradesh == null ? null : uttarPradesh.toJson(),
    "Telangana": telangana == null ? null : telangana.toJson(),
    "Andhra Pradesh": andhraPradesh == null ? null : andhraPradesh.toJson(),
    "Kerala": kerala == null ? null : kerala.toJson(),
    "Karnataka": karnataka == null ? null : karnataka.toJson(),
    "Jammu and Kashmir": jammuAndKashmir == null ? null : jammuAndKashmir.toJson(),
    "West Bengal": westBengal == null ? null : westBengal.toJson(),
    "Haryana": haryana == null ? null : haryana.toJson(),
    "Punjab": punjab == null ? null : punjab.toJson(),
    "Bihar": bihar == null ? null : bihar.toJson(),
    "Odisha": odisha == null ? null : odisha.toJson(),
    "Uttarakhand": uttarakhand == null ? null : uttarakhand.toJson(),
    "Chhattisgarh": chhattisgarh == null ? null : chhattisgarh.toJson(),
    "Himachal Pradesh": himachalPradesh == null ? null : himachalPradesh.toJson(),
    "Assam": assam == null ? null : assam.toJson(),
    "Jharkhand": jharkhand == null ? null : jharkhand.toJson(),
    "Chandigarh": chandigarh == null ? null : chandigarh.toJson(),
    "Ladakh": ladakh == null ? null : ladakh.toJson(),
    "Andaman and Nicobar Islands": andamanAndNicobarIslands == null ? null : andamanAndNicobarIslands.toJson(),
    "Meghalaya": meghalaya == null ? null : meghalaya.toJson(),
    "Goa": goa == null ? null : goa.toJson(),
    "Puducherry": puducherry == null ? null : puducherry.toJson(),
    "Manipur": manipur == null ? null : manipur.toJson(),
    "Tripura": tripura == null ? null : tripura.toJson(),
    "Mizoram": mizoram == null ? null : mizoram.toJson(),
    "Arunachal Pradesh": arunachalPradesh == null ? null : arunachalPradesh.toJson(),
    "Dadra and Nagar Haveli": dadraAndNagarHaveli == null ? null : dadraAndNagarHaveli.toJson(),
    "Nagaland": nagaland == null ? null : nagaland.toJson(),
    "Daman and Diu": damanAndDiu == null ? null : damanAndDiu.toJson(),
    "Lakshadweep": lakshadweep == null ? null : lakshadweep.toJson(),
    "Sikkim": sikkim == null ? null : sikkim.toJson(),
  };
}

class TotalValues {
  String active;
  String confirmed;
  String deaths;
  String deltaconfirmed;
  String deltadeaths;
  String deltarecovered;
  String lastupdatedtime;
  String recovered;
  String state;
  String statecode;
  String statenotes;
  Map<String, DistrictValue> district;

  TotalValues({
    this.active,
    this.confirmed,
    this.deaths,
    this.deltaconfirmed,
    this.deltadeaths,
    this.deltarecovered,
    this.lastupdatedtime,
    this.recovered,
    this.state,
    this.statecode,
    this.statenotes,
    this.district,
  });

  factory TotalValues.fromJson(Map<String, dynamic> json) => TotalValues(
    active: json["active"] == null ? null : json["active"],
    confirmed: json["confirmed"] == null ? null : json["confirmed"],
    deaths: json["deaths"] == null ? null : json["deaths"],
    deltaconfirmed: json["deltaconfirmed"] == null ? null : json["deltaconfirmed"],
    deltadeaths: json["deltadeaths"] == null ? null : json["deltadeaths"],
    deltarecovered: json["deltarecovered"] == null ? null : json["deltarecovered"],
    lastupdatedtime: json["lastupdatedtime"] == null ? null : json["lastupdatedtime"],
    recovered: json["recovered"] == null ? null : json["recovered"],
    state: json["state"] == null ? null : json["state"],
    statecode: json["statecode"] == null ? null : json["statecode"],
    statenotes: json["statenotes"] == null ? null : json["statenotes"],
    district: json["district"] == null ? null : Map.from(json["district"]).map((k, v) => MapEntry<String, DistrictValue>(k, DistrictValue.fromJson(v))),
  );

  Map<String, dynamic> toJson() => {
    "active": active == null ? null : active,
    "confirmed": confirmed == null ? null : confirmed,
    "deaths": deaths == null ? null : deaths,
    "deltaconfirmed": deltaconfirmed == null ? null : deltaconfirmed,
    "deltadeaths": deltadeaths == null ? null : deltadeaths,
    "deltarecovered": deltarecovered == null ? null : deltarecovered,
    "lastupdatedtime": lastupdatedtime == null ? null : lastupdatedtime,
    "recovered": recovered == null ? null : recovered,
    "state": state == null ? null : state,
    "statecode": statecode == null ? null : statecode,
    "statenotes": statenotes == null ? null : statenotes,
    "district": district == null ? null : Map.from(district).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
  };
}

class DistrictValue {
  int confirmed;
  String lastupdatedtime;
  Delta delta;

  DistrictValue({
    this.confirmed,
    this.lastupdatedtime,
    this.delta,
  });

  factory DistrictValue.fromJson(Map<String, dynamic> json) => DistrictValue(
    confirmed: json["confirmed"] == null ? null : json["confirmed"],
    lastupdatedtime: json["lastupdatedtime"] == null ? null : json["lastupdatedtime"],
    delta: json["delta"] == null ? null : Delta.fromJson(json["delta"]),
  );

  Map<String, dynamic> toJson() => {
    "confirmed": confirmed == null ? null : confirmed,
    "lastupdatedtime": lastupdatedtime == null ? null : lastupdatedtime,
    "delta": delta == null ? null : delta.toJson(),
  };
}

class Delta {
  int confirmed;

  Delta({
    this.confirmed,
  });

  factory Delta.fromJson(Map<String, dynamic> json) => Delta(
    confirmed: json["confirmed"] == null ? null : json["confirmed"],
  );

  Map<String, dynamic> toJson() => {
    "confirmed": confirmed == null ? null : confirmed,
  };
}

class Chandigarh {
  String active;
  String confirmed;
  String deaths;
  String deltaconfirmed;
  String deltadeaths;
  String deltarecovered;
  String lastupdatedtime;
  String recovered;
  String state;
  String statecode;
  String statenotes;
  ChandigarhDistrict district;

  Chandigarh({
    this.active,
    this.confirmed,
    this.deaths,
    this.deltaconfirmed,
    this.deltadeaths,
    this.deltarecovered,
    this.lastupdatedtime,
    this.recovered,
    this.state,
    this.statecode,
    this.statenotes,
    this.district,
  });

  factory Chandigarh.fromJson(Map<String, dynamic> json) => Chandigarh(
    active: json["active"] == null ? null : json["active"],
    confirmed: json["confirmed"] == null ? null : json["confirmed"],
    deaths: json["deaths"] == null ? null : json["deaths"],
    deltaconfirmed: json["deltaconfirmed"] == null ? null : json["deltaconfirmed"],
    deltadeaths: json["deltadeaths"] == null ? null : json["deltadeaths"],
    deltarecovered: json["deltarecovered"] == null ? null : json["deltarecovered"],
    lastupdatedtime: json["lastupdatedtime"] == null ? null : json["lastupdatedtime"],
    recovered: json["recovered"] == null ? null : json["recovered"],
    state: json["state"] == null ? null : json["state"],
    statecode: json["statecode"] == null ? null : json["statecode"],
    statenotes: json["statenotes"] == null ? null : json["statenotes"],
    district: json["district"] == null ? null : ChandigarhDistrict.fromJson(json["district"]),
  );

  Map<String, dynamic> toJson() => {
    "active": active == null ? null : active,
    "confirmed": confirmed == null ? null : confirmed,
    "deaths": deaths == null ? null : deaths,
    "deltaconfirmed": deltaconfirmed == null ? null : deltaconfirmed,
    "deltadeaths": deltadeaths == null ? null : deltadeaths,
    "deltarecovered": deltarecovered == null ? null : deltarecovered,
    "lastupdatedtime": lastupdatedtime == null ? null : lastupdatedtime,
    "recovered": recovered == null ? null : recovered,
    "state": state == null ? null : state,
    "statecode": statecode == null ? null : statecode,
    "statenotes": statenotes == null ? null : statenotes,
    "district": district == null ? null : district.toJson(),
  };
}

class ChandigarhDistrict {
  DistrictValue chandigarh;

  ChandigarhDistrict({
    this.chandigarh,
  });

  factory ChandigarhDistrict.fromJson(Map<String, dynamic> json) => ChandigarhDistrict(
    chandigarh: json["Chandigarh"] == null ? null : DistrictValue.fromJson(json["Chandigarh"]),
  );

  Map<String, dynamic> toJson() => {
    "Chandigarh": chandigarh == null ? null : chandigarh.toJson(),
  };
}

class Chhattisgarh {
  String active;
  String confirmed;
  String deaths;
  String deltaconfirmed;
  String deltadeaths;
  String deltarecovered;
  String lastupdatedtime;
  String recovered;
  String state;
  String statecode;
  String statenotes;
  ChhattisgarhDistrict district;

  Chhattisgarh({
    this.active,
    this.confirmed,
    this.deaths,
    this.deltaconfirmed,
    this.deltadeaths,
    this.deltarecovered,
    this.lastupdatedtime,
    this.recovered,
    this.state,
    this.statecode,
    this.statenotes,
    this.district,
  });

  factory Chhattisgarh.fromJson(Map<String, dynamic> json) => Chhattisgarh(
    active: json["active"] == null ? null : json["active"],
    confirmed: json["confirmed"] == null ? null : json["confirmed"],
    deaths: json["deaths"] == null ? null : json["deaths"],
    deltaconfirmed: json["deltaconfirmed"] == null ? null : json["deltaconfirmed"],
    deltadeaths: json["deltadeaths"] == null ? null : json["deltadeaths"],
    deltarecovered: json["deltarecovered"] == null ? null : json["deltarecovered"],
    lastupdatedtime: json["lastupdatedtime"] == null ? null : json["lastupdatedtime"],
    recovered: json["recovered"] == null ? null : json["recovered"],
    state: json["state"] == null ? null : json["state"],
    statecode: json["statecode"] == null ? null : json["statecode"],
    statenotes: json["statenotes"] == null ? null : json["statenotes"],
    district: json["district"] == null ? null : ChhattisgarhDistrict.fromJson(json["district"]),
  );

  Map<String, dynamic> toJson() => {
    "active": active == null ? null : active,
    "confirmed": confirmed == null ? null : confirmed,
    "deaths": deaths == null ? null : deaths,
    "deltaconfirmed": deltaconfirmed == null ? null : deltaconfirmed,
    "deltadeaths": deltadeaths == null ? null : deltadeaths,
    "deltarecovered": deltarecovered == null ? null : deltarecovered,
    "lastupdatedtime": lastupdatedtime == null ? null : lastupdatedtime,
    "recovered": recovered == null ? null : recovered,
    "state": state == null ? null : state,
    "statecode": statecode == null ? null : statecode,
    "statenotes": statenotes == null ? null : statenotes,
    "district": district == null ? null : district.toJson(),
  };
}

class ChhattisgarhDistrict {
  DistrictValue raipur;
  DistrictValue rajnandgaon;
  DistrictValue bilaspur;
  DistrictValue durg;
  DistrictValue korba;

  ChhattisgarhDistrict({
    this.raipur,
    this.rajnandgaon,
    this.bilaspur,
    this.durg,
    this.korba,
  });

  factory ChhattisgarhDistrict.fromJson(Map<String, dynamic> json) => ChhattisgarhDistrict(
    raipur: json["Raipur"] == null ? null : DistrictValue.fromJson(json["Raipur"]),
    rajnandgaon: json["Rajnandgaon"] == null ? null : DistrictValue.fromJson(json["Rajnandgaon"]),
    bilaspur: json["Bilaspur"] == null ? null : DistrictValue.fromJson(json["Bilaspur"]),
    durg: json["Durg"] == null ? null : DistrictValue.fromJson(json["Durg"]),
    korba: json["Korba"] == null ? null : DistrictValue.fromJson(json["Korba"]),
  );

  Map<String, dynamic> toJson() => {
    "Raipur": raipur == null ? null : raipur.toJson(),
    "Rajnandgaon": rajnandgaon == null ? null : rajnandgaon.toJson(),
    "Bilaspur": bilaspur == null ? null : bilaspur.toJson(),
    "Durg": durg == null ? null : durg.toJson(),
    "Korba": korba == null ? null : korba.toJson(),
  };
}

class DadraAndNagarHaveli {
  String active;
  String confirmed;
  String deaths;
  String deltaconfirmed;
  String deltadeaths;
  String deltarecovered;
  String lastupdatedtime;
  String recovered;
  String state;
  String statecode;
  String statenotes;
  DadraAndNagarHaveliDistrict district;

  DadraAndNagarHaveli({
    this.active,
    this.confirmed,
    this.deaths,
    this.deltaconfirmed,
    this.deltadeaths,
    this.deltarecovered,
    this.lastupdatedtime,
    this.recovered,
    this.state,
    this.statecode,
    this.statenotes,
    this.district,
  });

  factory DadraAndNagarHaveli.fromJson(Map<String, dynamic> json) => DadraAndNagarHaveli(
    active: json["active"] == null ? null : json["active"],
    confirmed: json["confirmed"] == null ? null : json["confirmed"],
    deaths: json["deaths"] == null ? null : json["deaths"],
    deltaconfirmed: json["deltaconfirmed"] == null ? null : json["deltaconfirmed"],
    deltadeaths: json["deltadeaths"] == null ? null : json["deltadeaths"],
    deltarecovered: json["deltarecovered"] == null ? null : json["deltarecovered"],
    lastupdatedtime: json["lastupdatedtime"] == null ? null : json["lastupdatedtime"],
    recovered: json["recovered"] == null ? null : json["recovered"],
    state: json["state"] == null ? null : json["state"],
    statecode: json["statecode"] == null ? null : json["statecode"],
    statenotes: json["statenotes"] == null ? null : json["statenotes"],
    district: json["district"] == null ? null : DadraAndNagarHaveliDistrict.fromJson(json["district"]),
  );

  Map<String, dynamic> toJson() => {
    "active": active == null ? null : active,
    "confirmed": confirmed == null ? null : confirmed,
    "deaths": deaths == null ? null : deaths,
    "deltaconfirmed": deltaconfirmed == null ? null : deltaconfirmed,
    "deltadeaths": deltadeaths == null ? null : deltadeaths,
    "deltarecovered": deltarecovered == null ? null : deltarecovered,
    "lastupdatedtime": lastupdatedtime == null ? null : lastupdatedtime,
    "recovered": recovered == null ? null : recovered,
    "state": state == null ? null : state,
    "statecode": statecode == null ? null : statecode,
    "statenotes": statenotes == null ? null : statenotes,
    "district": district == null ? null : district.toJson(),
  };
}

class DadraAndNagarHaveliDistrict {
  DistrictValue unknown;

  DadraAndNagarHaveliDistrict({
    this.unknown,
  });

  factory DadraAndNagarHaveliDistrict.fromJson(Map<String, dynamic> json) => DadraAndNagarHaveliDistrict(
    unknown: json["Unknown"] == null ? null : DistrictValue.fromJson(json["Unknown"]),
  );

  Map<String, dynamic> toJson() => {
    "Unknown": unknown == null ? null : unknown.toJson(),
  };
}
