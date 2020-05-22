import 'dart:core';

void main() {
  List<String> strings = ['woolha', 'dot', 'com'];
  strings.sort((a, b) => a.length.compareTo(b.length));
  print(strings);
}
