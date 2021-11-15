import 'dart:io';

String readJson(String name) {
  var dir = Directory.current.path;
  if (dir.endsWith('/watchlist')) {
    dir = dir.replaceAll('/watchlist', '');
  }
  return File('$dir/watchlist/test/$name').readAsStringSync();
}