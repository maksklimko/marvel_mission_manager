class Validators {
  Validators._();
  static String? isEmpty(String? value) {
    if (value == null || value.isEmpty) {
      return '';
    }
    return null;
  }
}
