import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

class OverlayHelper {

  static void showSuccessToast(BuildContext context,String? message,) {
    final snackBar = SnackBar(
      elevation: 5.0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'On Snap!',
        message: message!,
        contentType: ContentType.success,
        inMaterialBanner: true,
      ),
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static void showGeneralToast(BuildContext context, String? message,) {
    final snackBar = SnackBar(
      elevation: 5.0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'On Snap!',
        message: message!,
        contentType: ContentType.help,
        inMaterialBanner: true,
      ),
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static void showErrorToast(BuildContext context, String? message,) {
    final snackBar = SnackBar(
      elevation: 5.0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'On Snap!',
        message: message!,
        contentType: ContentType.failure,
      ),
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
