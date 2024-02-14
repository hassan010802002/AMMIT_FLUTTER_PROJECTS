// ignore_for_file: file_names

class NotificationHelper{
  static const List<String> _titles = <String>[
    "Dana",
    "Shoope",
    "Slack",
    "Facebook",
  ];

  static const List<String> _logos = <String>[
    "Assets/Images/Dana Logo.png",
    "Assets/Images/Shoope Logo.png",
    "Assets/Images/Slack Logo.png",
    "Assets/Images/Facebook Logo.png",
  ];

  static String titles(int titleIndex) => _titles.elementAt(titleIndex);

  static String logos(int logoIndex) => _logos.elementAt(logoIndex);
}