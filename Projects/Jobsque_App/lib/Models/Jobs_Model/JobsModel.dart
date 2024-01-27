/// status : true
/// data : [{"id":4,"name":"Test Engineers","image":"https://project2.amit-learning.com/image/1694106084.test.jpg","job_time_type":"Full Time","job_type":"Instructor","job_level":"3","job_description":"Inspecting raw materials and machinery\nCreating test environments\nAnalyzing results and identifying the root cause of malfunctions","job_skill":"Previous experience as a Test Engineer or similar role\nFamiliarity with various testing techniques\nHands-on experience with Quality Management Systems (QMS)\nKnowledge of quality standards and regulations","comp_name":"AMIT","comp_email":"info@amit-learning.com","comp_website":"https://amit-learning.com/","about_comp":"AMIT, Association Of Management and Information Technology, is a rapidly growing company which was established in Egypt from 2011 specialized in embedded systems, software computer science and IT","location":"Al Serag Mall, Entrance 4, Next to Tec Hub Store, Left corridor, Fifth Floor, Nasr City, Cairo, Egypt.","salary":"18000","favorites":374,"expired":0,"created_at":"2023-09-07T17:01:24.000000Z","updated_at":"2023-12-08T22:58:40.000000Z"},{"id":3,"name":"Machine Learning Engineer","image":"https://project2.amit-learning.com/image/1694105811.ml.jpg","job_time_type":"Full Time","job_type":"Developer","job_level":"2","job_description":"Your responsibilities will involve designing and constructing sophisticated machine learning models, as well as refining and updating existing systems.","job_skill":"Proven experience as a Machine Learning Engineer or similar role\nUnderstanding of data structures, data modeling and software architecture\nDeep knowledge of math, probability, statistics and algorithms","comp_name":"AMIT","comp_email":"info@amit-learning.com","comp_website":"https://amit-learning.com/","about_comp":"AMIT, Association Of Management and Information Technology, is a rapidly growing company which was established in Egypt from 2011 specialized in embedded systems, software computer science and IT","location":"Al Serag Mall, Entrance 4, Next to Tec Hub Store, Left corridor, Fifth Floor, Nasr City, Cairo, Egypt.","salary":"20000","favorites":178,"expired":0,"created_at":"2023-09-07T16:56:51.000000Z","updated_at":"2023-12-04T00:12:55.000000Z"},{"id":2,"name":"Flutter Developer","image":"https://project2.amit-learning.com/image/1694104575.flu.jpg","job_time_type":"Full time","job_type":"Developer","job_level":"2","job_description":"Expert proficiency in flutter for android and iOS\nStrong foundations in the principle of visual display of information.\nStrong knowledge in the architecture","job_skill":"Experience working with popular libraries for networking, asynchronous, image loading.\nAction oriented & excellent analytical and creative thinking.","comp_name":"AMIT","comp_email":"info@amit-learning.com","comp_website":"https://amit-learning.com/","about_comp":"AMIT is a company specializing in programming and information technology, established in 2011","location":"El Salam Tower, Next to As Salam International Hospital, Second Floor Above Alfa Laboratory, Cornish El Maadi, Cairo, Egypt","salary":"16000","favorites":138,"expired":0,"created_at":"2023-09-07T16:36:15.000000Z","updated_at":"2023-12-07T19:55:31.000000Z"}]

class JobsModel {
  JobsModel({
    bool? status,
    List<Data>? data,
  }) {
    _status = status;
    _data = data;
  }

  JobsModel.fromJson(dynamic json) {
    _status = json['status'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }

  bool? _status;
  List<Data>? _data;

  bool? get status => _status;

  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 4
/// name : "Test Engineers"
/// image : "https://project2.amit-learning.com/image/1694106084.test.jpg"
/// job_time_type : "Full Time"
/// job_type : "Instructor"
/// job_level : "3"
/// job_description : "Inspecting raw materials and machinery\nCreating test environments\nAnalyzing results and identifying the root cause of malfunctions"
/// job_skill : "Previous experience as a Test Engineer or similar role\nFamiliarity with various testing techniques\nHands-on experience with Quality Management Systems (QMS)\nKnowledge of quality standards and regulations"
/// comp_name : "AMIT"
/// comp_email : "info@amit-learning.com"
/// comp_website : "https://amit-learning.com/"
/// about_comp : "AMIT, Association Of Management and Information Technology, is a rapidly growing company which was established in Egypt from 2011 specialized in embedded systems, software computer science and IT"
/// location : "Al Serag Mall, Entrance 4, Next to Tec Hub Store, Left corridor, Fifth Floor, Nasr City, Cairo, Egypt."
/// salary : "18000"
/// favorites : 374
/// expired : 0
/// created_at : "2023-09-07T17:01:24.000000Z"
/// updated_at : "2023-12-08T22:58:40.000000Z"

class Data {
  Data({
    num? id,
    String? name,
    String? image,
    String? jobTimeType,
    String? jobType,
    String? jobLevel,
    String? jobDescription,
    String? jobSkill,
    String? compName,
    String? compEmail,
    String? compWebsite,
    String? aboutComp,
    String? location,
    String? salary,
    num? favorites,
    num? expired,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _name = name;
    _image = image;
    _jobTimeType = jobTimeType;
    _jobType = jobType;
    _jobLevel = jobLevel;
    _jobDescription = jobDescription;
    _jobSkill = jobSkill;
    _compName = compName;
    _compEmail = compEmail;
    _compWebsite = compWebsite;
    _aboutComp = aboutComp;
    _location = location;
    _salary = salary;
    _favorites = favorites;
    _expired = expired;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _image = json['image'];
    _jobTimeType = json['job_time_type'];
    _jobType = json['job_type'];
    _jobLevel = json['job_level'];
    _jobDescription = json['job_description'];
    _jobSkill = json['job_skill'];
    _compName = json['comp_name'];
    _compEmail = json['comp_email'];
    _compWebsite = json['comp_website'];
    _aboutComp = json['about_comp'];
    _location = json['location'];
    _salary = json['salary'];
    _favorites = json['favorites'];
    _expired = json['expired'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  num? _id;
  String? _name;
  String? _image;
  String? _jobTimeType;
  String? _jobType;
  String? _jobLevel;
  String? _jobDescription;
  String? _jobSkill;
  String? _compName;
  String? _compEmail;
  String? _compWebsite;
  String? _aboutComp;
  String? _location;
  String? _salary;
  num? _favorites;
  num? _expired;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;

  String? get name => _name;

  String? get image => _image;

  String? get jobTimeType => _jobTimeType;

  String? get jobType => _jobType;

  String? get jobLevel => _jobLevel;

  String? get jobDescription => _jobDescription;

  String? get jobSkill => _jobSkill;

  String? get compName => _compName;

  String? get compEmail => _compEmail;

  String? get compWebsite => _compWebsite;

  String? get aboutComp => _aboutComp;

  String? get location => _location;

  String? get salary => _salary;

  num? get favorites => _favorites;

  num? get expired => _expired;

  String? get createdAt => _createdAt;

  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['image'] = _image;
    map['job_time_type'] = _jobTimeType;
    map['job_type'] = _jobType;
    map['job_level'] = _jobLevel;
    map['job_description'] = _jobDescription;
    map['job_skill'] = _jobSkill;
    map['comp_name'] = _compName;
    map['comp_email'] = _compEmail;
    map['comp_website'] = _compWebsite;
    map['about_comp'] = _aboutComp;
    map['location'] = _location;
    map['salary'] = _salary;
    map['favorites'] = _favorites;
    map['expired'] = _expired;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
