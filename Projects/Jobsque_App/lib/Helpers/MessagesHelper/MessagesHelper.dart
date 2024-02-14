// ignore_for_file: file_names

class MessagesHelper{
  static const List<String> _titles = <String>[
    "Twitter",
    "Gojek Indonesia",
    "Dana",
    "Shoope",
    "Slack",
    "Facebook",
  ];

  static const List<String> _logos = <String>[
    "Assets/Images/Twitter Logo.png",
    "Assets/Images/Gojek Logo.png",
    "Assets/Images/Dana Logo.png",
    "Assets/Images/Shoope Logo.png",
    "Assets/Images/Slack Logo.png",
    "Assets/Images/Facebook Logo.png",
  ];

  static const List<String> _subTitles = <String>[
    "Here is the link: http://zoom.com/abcdeefg",
    "Let’s keep in touch.",
    "Thank you for your attention!",
    "Thank You David!",
    "You: I look forward to hearing from you",
    "You: What about the interview stage?",
  ];

  static String titles(int titleIndex) => _titles.elementAt(titleIndex);

  static String logos(int logoIndex) => _logos.elementAt(logoIndex);

  static String subTitles(int subTitleIndex) => _subTitles.elementAt(subTitleIndex);

}