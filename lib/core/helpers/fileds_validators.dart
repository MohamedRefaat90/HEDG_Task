String? phoneValidator(String value) {
  if (value.isEmpty) {
    return 'Phone number is required';
  }
  if (!RegExp(
          r"^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$")
      .hasMatch(value)) {
    return "Invalid Phone Number";
  }
  return null;
}
