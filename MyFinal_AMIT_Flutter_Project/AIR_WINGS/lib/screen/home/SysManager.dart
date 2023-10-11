class FileSystemManager {
  String? firstDate;
  String? secondDate;
  int? dem;
  int? adults;
  int? infants;
  int? bags;
  String? typeAheadController;
  String? typeAheadController1;
  int? type = 0;
  String? typestring;
  bool? chosen = false;
  bool? chosen1 = false;
  bool ?swap = false;
  int ?temp;
  bool ?date_add_passengers = false;
  bool ?id_number = false;
  String ?date_of_birth;

  static final FileSystemManager _instance = FileSystemManager._internal();

  FileSystemManager._internal();

  static FileSystemManager get instance => _instance;
}
