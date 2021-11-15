import 'dart:io';

String readJson(String name) {
  var dir = Directory.current.path;
  if (dir.endsWith('/search')) {
    dir = dir.replaceAll('/search', '');
  }
  return File('$dir/search/test/$name').readAsStringSync();
}