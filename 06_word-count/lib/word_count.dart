class WordCount {
  Map<String, int> countWords(String sentence) {
    /* extracts words from sentence with pattern : "any word characters" and ' */
    return RegExp(r"(\w+?\'\w+)|(\w+)")
        .allMatches(sentence.toLowerCase())
        .fold(Map<String, int>(), (init, element) {
      init.update(element.group(0) as String, (value) => value + 1,
          ifAbsent: () => 1);
      return init;
    });
  }
}
