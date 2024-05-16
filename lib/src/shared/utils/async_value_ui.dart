import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_app_starter/src/shared/exceptions/app_exception.dart';
import 'package:mobile_app_starter/src/shared/widgets/alert_dialogs.dart';

/// A helper [AsyncValue] extension to show an alert dialog on error
extension AsyncValueUI on AsyncValue {
  void showAlertDialogOnError(BuildContext context) {
    if (!isLoading && hasError) {
      final message = _errorMessage(error);
      showExceptionAlertDialog(
        context: context,
        title: 'Error',
        exception: message,
      );
    }
  }

  String _errorMessage(Object? error) {
    if (error is FirebaseAuthException) {
      return error.message ?? error.toString();
    } else if (error is AppException) {
      return error.message;
    } else {
      return error.toString();
    }
  }
}
