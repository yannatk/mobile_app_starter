/// Base class for string validators.
abstract class StringValidator {
  /// Returns true if the [value] is valid, otherwise false.
  bool isValid(String value) {
    return true;
  }
}

/// A [StringValidator] that uses a regular expression to validate the string.
class RegexValidator implements StringValidator {
  /// Creates a new [RegexValidator].
  RegexValidator({required this.regexSource});

  /// The regular expression source to validate the string.
  final String regexSource;

  @override
  bool isValid(String value) {
    try {
      final regex = RegExp(regexSource);
      final Iterable<Match> matches = regex.allMatches(value);
      for (final match in matches) {
        if (match.start == 0 && match.end == value.length) {
          return true;
        }
      }
      return false;
    } catch (exception) {
      assert(false, exception.toString());
      return true;
    }
  }
}

/// A [RegexValidator] that checks if the string is a valid email.
class EmailSubmitRegexValidator extends RegexValidator {
  /// Creates a new [EmailSubmitRegexValidator].
  EmailSubmitRegexValidator() : super(regexSource: r'^\S+@\S+\.\S+$');
}

/// A [StringValidator] that checks if the string is not empty.
class NotEmptyStringValidator extends StringValidator {
  @override
  bool isValid(String value) {
    return value.isNotEmpty;
  }
}

/// A [StringValidator] that checks if the string has a minimum length.
class MinLengthStringValidator extends StringValidator {
  /// Creates a new [MinLengthStringValidator].
  MinLengthStringValidator(this.minLength);

  /// The minimum length of the string.
  final int minLength;

  @override
  bool isValid(String value) {
    return value.length >= minLength;
  }
}

/// A [StringValidator] that checks if the string has a maximum length.

class MaxLengthStringValidator extends StringValidator {
  /// Creates a new [MaxLengthStringValidator].
  MaxLengthStringValidator(this.maxLength);

  /// The maximum length of the string.
  final int maxLength;

  @override
  bool isValid(String value) {
    return value.length <= maxLength;
  }
}
