import 'package:flutter/material.dart';
import 'package:lamaiti/Consts/LogInConsts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      textAlign: TextAlign.center,
      decoration: LogInConsts.textFieldDecoration1,
      style: LogInConsts.textFieldStyle1,
      maxLines: 1,
    );
  }
}
