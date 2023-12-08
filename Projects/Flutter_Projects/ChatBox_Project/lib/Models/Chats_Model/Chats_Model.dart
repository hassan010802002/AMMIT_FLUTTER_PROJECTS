/// messages : [{"text":"","sentAt":""}]

class ChatsModel {
  ChatsModel({
    List<Messages>? messages,
    Media? media,
  }) {
    _messages = messages;
    _media = media;
  }

  ChatsModel.fromJson(dynamic json) {
    if (json['messages'] != null) {
      _messages = [];
      json['messages'].forEach((v) {
        _messages?.add(Messages.fromJson(v));
      });
    }
    _media = json['media'] != null ? Media.fromJson(json['media']) : null;
  }

  List<Messages>? _messages;
  Media? _media;

  List<Messages>? get messages => _messages;

  Media? get media => _media;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_messages != null) {
      map['messages'] = _messages?.map((v) => v.toJson()).toList();
    }
    if (_media != null) {
      map['media'] = _media?.toJson();
    }
    return map;
  }
}

/// images : [{"url":"","timeStampe":""}]
/// videos : [{"url":"","timeStampe":""}]
/// audios : [{"url":"","timeStampe":""}]

class Media {
  Media({
    List<Images>? images,
    List<Videos>? videos,
    List<Audios>? audios,
    List<Documents>? documents,
  }) {
    _images = images;
    _videos = videos;
    _audios = audios;
    _documents = documents;
  }

  Media.fromJson(dynamic json) {
    if (json['images'] != null) {
      _images = [];
      json['images'].forEach((v) {
        _images?.add(Images.fromJson(v));
      });
    }
    if (json['videos'] != null) {
      _videos = [];
      json['videos'].forEach((v) {
        _videos?.add(Videos.fromJson(v));
      });
    }
    if (json['audios'] != null) {
      _audios = [];
      json['audios'].forEach((v) {
        _audios?.add(Audios.fromJson(v));
      });
    }
    if (json['documents'] != null) {
      _documents = [];
      json['documents'].forEach((v) {
        _documents?.add(Documents.fromJson(v));
      });
    }
  }

  List<Images>? _images;
  List<Videos>? _videos;
  List<Audios>? _audios;
  List<Documents>? _documents;

  List<Documents>? get documents => _documents;

  List<Images>? get images => _images;

  List<Videos>? get videos => _videos;

  List<Audios>? get audios => _audios;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_images != null) {
      map['images'] = _images?.map((v) => v.toJson()).toList();
    }
    if (_videos != null) {
      map['videos'] = _videos?.map((v) => v.toJson()).toList();
    }
    if (_audios != null) {
      map['audios'] = _audios?.map((v) => v.toJson()).toList();
    }
    if (_documents != null) {
      map['documents'] = _documents?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// url : ""
/// timeStampe : ""

class Audios {
  Audios({
    String? url,
    String? timeStampe,
  }) {
    _url = url;
    _timeStampe = timeStampe;
  }

  Audios.fromJson(dynamic json) {
    _url = json['url'];
    _timeStampe = json['timeStampe'];
  }

  String? _url;
  String? _timeStampe;

  String? get url => _url;

  String? get timeStampe => _timeStampe;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['timeStampe'] = _timeStampe;
    return map;
  }
}

/// url : ""
/// timeStampe : ""

class Videos {
  Videos({
    String? url,
    String? timeStampe,
  }) {
    _url = url;
    _timeStampe = timeStampe;
  }

  Videos.fromJson(dynamic json) {
    _url = json['url'];
    _timeStampe = json['timeStampe'];
  }

  String? _url;
  String? _timeStampe;

  String? get url => _url;

  String? get timeStampe => _timeStampe;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['timeStampe'] = _timeStampe;
    return map;
  }
}

/// url : ""
/// timeStampe : ""

class Images {
  Images({
    String? url,
    String? timeStampe,
  }) {
    _url = url;
    _timeStampe = timeStampe;
  }

  Images.fromJson(dynamic json) {
    _url = json['url'];
    _timeStampe = json['timeStampe'];
  }

  String? _url;
  String? _timeStampe;

  String? get url => _url;

  String? get timeStampe => _timeStampe;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['timeStampe'] = _timeStampe;
    return map;
  }
}


/// url : ""
/// timeStampe : ""

class Documents {
  Documents({
    String? url,
    String? timeStampe,}){
    _url = url;
    _timeStampe = timeStampe;
  }

  Documents.fromJson(dynamic json) {
    _url = json['url'];
    _timeStampe = json['timeStampe'];
  }
  String? _url;
  String? _timeStampe;

  String? get url => _url;
  String? get timeStampe => _timeStampe;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['timeStampe'] = _timeStampe;
    return map;
  }

}

/// text : ""
/// sentAt : ""

class Messages {
  Messages({
    String? text,
    String? sentAt,
  }) {
    _text = text;
    _sentAt = sentAt;
  }

  Messages.fromJson(dynamic json) {
    _text = json['text'];
    _sentAt = json['sentAt'];
  }

  String? _text;
  String? _sentAt;

  String? get text => _text;

  String? get sentAt => _sentAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['sentAt'] = _sentAt;
    return map;
  }
}
