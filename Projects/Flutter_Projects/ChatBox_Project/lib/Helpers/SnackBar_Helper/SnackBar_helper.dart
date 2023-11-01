// ignore_for_file: camel_case_types

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

class SnackBar_Helper {

  static void showSuccessToast(BuildContext context,String? message,) {
    final snackBar = SnackBar(
      elevation: 0.0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'On Snap!',
        message: message!,
        contentType: ContentType.success,
        titleFontSize: 24.0,
        messageFontSize: 18.0,
        inMaterialBanner: true,
      ),
      clipBehavior: Clip.antiAlias,
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static void showGeneralToast(BuildContext context, String? message,) {
    final snackBar = SnackBar(
      elevation: 0.0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'On Snap!',
        message: message!,
        contentType: ContentType.help,
        inMaterialBanner: true,
        titleFontSize: 24.0,
        messageFontSize: 18.0,
      ),
      duration: const Duration(seconds: 2),
      clipBehavior: Clip.antiAlias,
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static void showErrorToast(BuildContext context, String? message,) {
    final snackBar = SnackBar(
      elevation: 0.0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'On Snap!',
        message: message!,
        contentType: ContentType.failure,
        inMaterialBanner: true,
        titleFontSize: 24.0,
        messageFontSize: 18.0,
      ),
      duration: const Duration(seconds: 2),
      clipBehavior: Clip.antiAlias,
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
