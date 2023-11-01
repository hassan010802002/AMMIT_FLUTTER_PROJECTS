/// messages : [{"text":"","sentAt":""}]

class ChatsModel {
  ChatsModel({
    List<Messages>? messages,
  }) {
    _messages = messages;
  }

  ChatsModel.fromJson(dynamic json) {
    if (json['messages'] != null) {
      _messages = [];
      json['messages'].forEach((v) {
        _messages?.add(Messages.fromJson(v));
      });
    }
  }

  List<Messages>? _messages;

  List<Messages>? get messages => _messages;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_messages != null) {
      map['messages'] = _messages?.map((v) => v.toJson()).toList();
    }
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
