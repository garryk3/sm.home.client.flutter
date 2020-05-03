class ValidationMixin {
  String validateEmail(String value) {
    if(!value.contains('@')) {
      return 'Invalid email address';
    }
    return null;
  }

  String validatePassword(String value) {
    if(value.length < 3) {
      return 'Invalid password length';
    }
    return null;
  }
}