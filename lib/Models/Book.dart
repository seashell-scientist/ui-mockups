import 'package:flutter/cupertino.dart';

class Book {
  String title = '';
  String summary = '';
  String author = '';
  String illustrator = '';
  String curator = '';
  final String coverUrl;

  Book({
    this.title,
    this.summary,
    this.author,
    this.illustrator,
    this.curator,
    @required this.coverUrl, //requires this var
  });
}
