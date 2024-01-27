// ignore_for_file: file_names

class BottomSheetHelper {
  static const List<String> _bottomSheetJobTypeList = [
    "Full Time",
    "Remote",
    "Contract",
    "Part Time",
    "Onsite",
    "Internship",
  ];

  static String bottomSheetJobType(int index) => _bottomSheetJobTypeList[index];
}