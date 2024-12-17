class CovidModel {
  List<Data>? data;

  CovidModel({
    this.data,
  });

  factory CovidModel.mapToModel(Map map) {
    List l1 = map['data'];
    return CovidModel(
      data: l1.map((e) => Data.mapToModel(e)).toList(),
    );
  }
}

class Data {
  String? iso;
  String? name;

  Data({
    this.iso,
    this.name,
  });

  factory Data.mapToModel(Map map) {
    return Data(
      iso: map['iso'],
      name: map['name'],
    );
  }
}

class DeatilModel {
  List<Datum>? data;

  DeatilModel({
    this.data,
  });
}

class Datum {
  DateTime? date;
  int? confirmed;
  int? deaths;
  int? recovered;
  int? confirmedDiff;
  int? deathsDiff;
  int? recoveredDiff;
  DateTime? lastUpdate;
  int? active;
  int? activeDiff;
  double? fatalityRate;
  Region? region;

  Datum({
    this.date,
    this.confirmed,
    this.deaths,
    this.recovered,
    this.confirmedDiff,
    this.deathsDiff,
    this.recoveredDiff,
    this.lastUpdate,
    this.active,
    this.activeDiff,
    this.fatalityRate,
    this.region,
  });
}

class Region {
  String? iso;
  String? name;
  String? province;
  String? lat;
  String? long;
  List<City>? cities;

  Region({
    this.iso,
    this.name,
    this.province,
    this.lat,
    this.long,
    this.cities,
  });
}

class City {
  String? name;
  DateTime? date;
  int? fips;
  String? lat;
  String? long;
  int? confirmed;
  int? deaths;
  int? confirmedDiff;
  int? deathsDiff;
  DateTime? lastUpdate;

  City({
    this.name,
    this.date,
    this.fips,
    this.lat,
    this.long,
    this.confirmed,
    this.deaths,
    this.confirmedDiff,
    this.deathsDiff,
    this.lastUpdate,
  });
}
