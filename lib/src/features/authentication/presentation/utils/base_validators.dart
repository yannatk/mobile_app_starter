import 'package:mobile_app_starter/src/shared/utils/string_validators.dart';

/// Mixin class to be used for client-side email & password validation
mixin BaseValidators {
  final StringValidator _passwordValidator = MinLengthStringValidator(8);
  final StringValidator _fieldValidator = NotEmptyStringValidator();

  final StringValidator _emailValidator = EmailSubmitRegexValidator();

  /// Returns true if the field is not empty
  bool _canSubmitField(String field) {
    return _fieldValidator.isValid(field);
  }

  /// Returns true if the password is not empty and has the minimum length
  bool _canSubmitPassword(String password) {
    return _passwordValidator.isValid(password);
  }

  /// Returns true if the password and confirmPassword are the same
  bool _canSubmitConfirmPassword(String password, String confirmPassword) {
    return password == confirmPassword;
  }

  /// Returns the error text for the email if it's invalid, otherwise null
  String? emailErrorText(String email) {
    if (email.isEmpty) {
      return 'Veuillez entrer une adresse email';
    } else if (!_emailValidator.isValid(email)) {
      return 'Veuillez entrer une adresse email valide';
    }

    return null;
  }

  /// Returns the error text for the field if it's invalid, otherwise null
  String? fieldErrorText(String field, String fieldName) {
    final showErrorText = !_canSubmitField(field);
    return showErrorText ? 'Veuillez entrer un $fieldName' : null;
  }

  /// Returns the error text for the password if it's invalid, otherwise null
  String? passwordErrorText(String password) {
    final showErrorText = !_canSubmitPassword(password);
    final errorText = password.isEmpty
        ? 'Veuillez entrer un mot de passe'
        : 'Le mot de passe doit contenir au moins 8 caractères';
    return showErrorText ? errorText : null;
  }

  /// Returns the error text for the confirmPassword if it's invalid,
  /// otherwise null
  String? confirmPasswordErrorText(String password, String confirmPassword) {
    final showErrorText = !_canSubmitConfirmPassword(password, confirmPassword);
    final errorText = confirmPassword.isEmpty
        ? 'Veuillez répéter votre mot de passe'
        : 'Les mots de passe ne correspondent pas';
    return showErrorText ? errorText : null;
  }
}
