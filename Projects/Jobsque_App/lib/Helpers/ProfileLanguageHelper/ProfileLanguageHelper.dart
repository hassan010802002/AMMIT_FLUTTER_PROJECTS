// ignore_for_file: file_names

class ProfileLanguageHelper{
  static const List<String> countryFlags = <String>[
    "Assets/Images/Flags/England.png",
    "Assets/Images/Flags/Indonesia2.png",
    "Assets/Images/Flags/Saudi Arabia.png",
    "Assets/Images/Flags/China2.png",
    "Assets/Images/Flags/Netherlands.png",
    "Assets/Images/Flags/France.png",
    "Assets/Images/Flags/Germany.png",
    "Assets/Images/Flags/Japan.png",
    "Assets/Images/Flags/South Korea.png",
    "Assets/Images/Flags/Portugal.png",
  ];

  static const List<String> countryTitles = <String>[
    "English",
    "Indonesia",
    "Arabic",
    "Chinese",
    "Dutch",
    "French",
    "German",
    "Japanese",
    "Korean",
    "Portuguese",
  ];

  static String countryFlag(int flagIdx) => countryFlags.elementAt(flagIdx);

  static String countryTitle(int titleIdx) => countryTitles.elementAt(titleIdx);
}