import 'package:flutter/material.dart';

class Custom_PopUp_Dialog extends StatelessWidget {
  Widget? content;

  Custom_PopUp_Dialog({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(20.0),
      content: content,
    );
  }
}