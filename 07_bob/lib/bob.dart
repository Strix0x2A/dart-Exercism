class Bob {
  bool isUppercase(String str) {
    /* Looking for an uppercase character in string */
    var upperCase = RegExp(r'[A-Z]');
    return str == str.toUpperCase() && upperCase.hasMatch(str);
  }

  String response(String message) {
    message = message.trim();
    var yell = isUppercase(message);
    var question = message.endsWith('?');

    if (message == '') {
      return 'Fine. Be that way!';
    } else if (yell && question) {
      return 'Calm down, I know what I\'m doing!';
    } else if (yell) {
      return 'Whoa, chill out!';
    } else if (question) {
      return 'Sure.';
    } else
      return 'Whatever.';
  }
}
