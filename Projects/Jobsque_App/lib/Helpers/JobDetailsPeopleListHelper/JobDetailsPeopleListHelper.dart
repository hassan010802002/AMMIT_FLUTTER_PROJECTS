// ignore_for_file: file_names

class JobDetailsPeopleListHelper{
  static List<String>? peopleProfiles = <String>[
    "Assets/Images/Azzahra Profile.png",
    "Assets/Images/Dimas Profile.png",
    "Assets/Images/Dindra Profile.png",
    "Assets/Images/Farrel Profile.png",
    "Assets/Images/Ferdi Profile.png",
    "Assets/Images/Syahrul Profile.png",
  ];

  static List<String>? peopleNames = <String>[
    "Azzahra Farrelika",
    "Dimas Adi Saputro",
    "Dindra Desmipian",
    "Farrel Daniswara",
    "Ferdi Saputra",
    "Syahrul Ramadhani",
  ];

  static List<String>? peopleWork = <String>[
    "UI/UX Designer at Twitter",
    "Senior UI/UX Designer at Twitter",
    "UI/UX Designer at Twitter",
    "Senior UI/UX Designer at Twitter",
    "UI/UX Designer at Twitter",
    "Senior UI/UX Designer at Twitter",
  ];

  static String getPersonProfile(int idx) => peopleProfiles!.elementAt(idx);

  static String getPersonName(int idx) => peopleNames!.elementAt(idx);

  static String getPersonWork(int idx) => peopleWork!.elementAt(idx);
}