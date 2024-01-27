// ignore_for_file: file_names

class SearchFilterHelper {
  static List<String> filterTitles = <String>[
    "Remote",
    "Full Time",
    "Post date",
    "Experience",
  ];

  static String gettingFilterTitle(int index) => filterTitles[index];
}