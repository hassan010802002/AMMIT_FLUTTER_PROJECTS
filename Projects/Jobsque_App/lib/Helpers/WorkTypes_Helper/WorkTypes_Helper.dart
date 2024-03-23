// ignore_for_file: camel_case_types, non_constant_identifier_names, file_names

class WorkTypes_Helper {
  static final List<String> _WorkTitles = <String>[
    "UI/UX Designer",
    "Ilustrator Designer",
    "Developer",
    "Management",
    "Information Technology",
    "Research and Analytics",
  ];

  static final List<String> _WorkIcons = <String>[
    "Assets/Images/bezier.png",
    "Assets/Images/pen-tool-2.png",
    "Assets/Images/code.png",
    "Assets/Images/graph.png",
    "Assets/Images/monitor-mobbile.png",
    "Assets/Images/cloud-add.png",
  ];

  static String WorkTitles(int index) => _WorkTitles.elementAt(index);

  static String WorkIcons(int index) => _WorkIcons.elementAt(index);
}
