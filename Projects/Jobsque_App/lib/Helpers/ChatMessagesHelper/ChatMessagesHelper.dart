class ChatMessagesHelper{
  static const List<String> _messages = <String>[
    "Hi Rafif!, I'm Melan the selection team from Twitter. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage.",
    "Hi Melan, thank you for considering me, this is good news for me.",
    "Can we have an interview via google meet call today at 3pm?",
    "Of course, I can!",
    "Ok, here I put the google meet link for later this afternoon. I ask for the timeliness, thank you! https://meet.google.com/dis-sxdu-ave"
  ];

  static String messages(int messageIndex) => _messages.elementAt(messageIndex);
}