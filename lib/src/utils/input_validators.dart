abstract class InputValidators {
  static String required(String val) {
    if (val.isEmpty) {
      return 'This value is required';
    }

    return null;
  }
}