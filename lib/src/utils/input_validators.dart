abstract class InputValidators {
  static final regexp = RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

  static String required(String val) {
    if (val.isEmpty) {
      return 'This value is required';
    }

    return null;
  }

  static String email(String val) {
    if (!regexp.hasMatch(val)) {
      return 'Not a valid email address';
    }

    return null;
  }

  static String Function(String) multiple(List<String Function(String)> validators) {
    return (String value) {
      for (final validator in validators) {
        final result = validator(value);
        if (result != null) return result;
      }

      return null;
    };
  }
}