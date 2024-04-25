

extension emailString on String {
  bool get isValidEmail {
    return (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(this));
  }
  bool get isValidName{
    return(!RegExp(r"^[\\p{L} .'-]+$").hasMatch(this));
  }

  bool get isValidPassword{
    final passwordRegExp =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
    return passwordRegExp.hasMatch(this);
  }

  bool get isValidPhone{
    return (!RegExp(r'^(?:[+0]9)?[0-9]{10}$')
        .hasMatch(this));
  }
  bool get isValidZipCode{
    return (!RegExp(r'^\d{5}(?:[-\s]\d{4})?$')
        .hasMatch(this));
  }


}
