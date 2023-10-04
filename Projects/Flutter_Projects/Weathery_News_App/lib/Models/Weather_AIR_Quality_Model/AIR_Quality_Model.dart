/// coord : {"lon":50,"lat":50}
/// list : [{"main":{"aqi":1},"components":{"co":208.62,"no":0,"no2":0.54,"o3":31.11,"so2":0.05,"pm2_5":3.88,"pm10":3.92,"nh3":0.05},"dt":1696203159}]

class AirQualityModel {
  AirQualityModel({
      Coord? coord, 
      List<Air>? list,}){
    _coord = coord;
    _list = list;
}

  AirQualityModel.fromJson(dynamic json) {
    _coord = json['coord'] != null ? Coord.fromJson(json['coord']) : null;
    if (json['list'] != null) {
      _list = [];
      json['list'].forEach((v) {
        _list?.add(Air.fromJson(v));
      });
    }
  }
  Coord? _coord;
  List<Air>? _list;

  Coord? get coord => _coord;
  List<Air>? get list => _list;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_coord != null) {
      map['coord'] = _coord?.toJson();
    }
    if (_list != null) {
      map['list'] = _list?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// main : {"aqi":1}
/// components : {"co":208.62,"no":0,"no2":0.54,"o3":31.11,"so2":0.05,"pm2_5":3.88,"pm10":3.92,"nh3":0.05}
/// dt : 1696203159

class Air {
  Air({
      Main? main, 
      Components? components, 
      num? dt,}){
    _main = main;
    _components = components;
    _dt = dt;
}

  Air.fromJson(dynamic json) {
    _main = json['main'] != null ? Main.fromJson(json['main']) : null;
    _components = json['components'] != null ? Components.fromJson(json['components']) : null;
    _dt = json['dt'];
  }
  Main? _main;
  Components? _components;
  num? _dt;

  Main? get main => _main;
  Components? get components => _components;
  num? get dt => _dt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_main != null) {
      map['main'] = _main?.toJson();
    }
    if (_components != null) {
      map['components'] = _components?.toJson();
    }
    map['dt'] = _dt;
    return map;
  }

}

/// co : 208.62
/// no : 0
/// no2 : 0.54
/// o3 : 31.11
/// so2 : 0.05
/// pm2_5 : 3.88
/// pm10 : 3.92
/// nh3 : 0.05

class Components {
  Components({
      num? co, 
      num? no, 
      num? no2, 
      num? o3, 
      num? so2, 
      num? pm25, 
      num? pm10, 
      num? nh3,}){
    _co = co;
    _no = no;
    _no2 = no2;
    _o3 = o3;
    _so2 = so2;
    _pm25 = pm25;
    _pm10 = pm10;
    _nh3 = nh3;
}

  Components.fromJson(dynamic json) {
    _co = json['co'];
    _no = json['no'];
    _no2 = json['no2'];
    _o3 = json['o3'];
    _so2 = json['so2'];
    _pm25 = json['pm2_5'];
    _pm10 = json['pm10'];
    _nh3 = json['nh3'];
  }
  num? _co;
  num? _no;
  num? _no2;
  num? _o3;
  num? _so2;
  num? _pm25;
  num? _pm10;
  num? _nh3;

  num? get co => _co;
  num? get no => _no;
  num? get no2 => _no2;
  num? get o3 => _o3;
  num? get so2 => _so2;
  num? get pm25 => _pm25;
  num? get pm10 => _pm10;
  num? get nh3 => _nh3;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['co'] = _co;
    map['no'] = _no;
    map['no2'] = _no2;
    map['o3'] = _o3;
    map['so2'] = _so2;
    map['pm2_5'] = _pm25;
    map['pm10'] = _pm10;
    map['nh3'] = _nh3;
    return map;
  }

}

/// aqi : 1

class Main {
  Main({
      num? aqi,}){
    _aqi = aqi;
}

  Main.fromJson(dynamic json) {
    _aqi = json['aqi'];
  }
  num? _aqi;

  num? get aqi => _aqi;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['aqi'] = _aqi;
    return map;
  }

}

/// lon : 50
/// lat : 50

class Coord {
  Coord({
      num? lon, 
      num? lat,}){
    _lon = lon;
    _lat = lat;
}

  Coord.fromJson(dynamic json) {
    _lon = json['lon'];
    _lat = json['lat'];
  }
  num? _lon;
  num? _lat;

  num? get lon => _lon;
  num? get lat => _lat;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lon'] = _lon;
    map['lat'] = _lat;
    return map;
  }

}