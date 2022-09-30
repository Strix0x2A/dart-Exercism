class Bob {
  bool isUppercase(String str) {
    /* Looking for an uppercase character in string */
    var upperCase = RegExp(r'[A-Z]');
    return str == str.toUpperCase() && upperCase.hasMatch(str);
  }

  String response(String message) {
    message = message.trim();

    if (isUppercase(message) && message.endsWith('?')) {
      return 'Calm down, I know what I\'m doing!';
    } else if (isUppercase(message)) {
      return 'Whoa, chill out!';
    } else if (message.endsWith('?')) {
      return 'Sure.';
    } else if (message == '') {
      return 'Fine. Be that way!';
    } else
      return 'Whatever.';
  }
}
