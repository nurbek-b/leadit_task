import 'package:flutter/foundation.dart';

class Post {
  final String section;
  final String subsection;
  final String title;
  final String abstract;
  final String url;

  Post({
    @required this.section,
    @required this.subsection,
    @required this.title,
    @required this.abstract,
    @required this.url,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      section: json['section'] as String,
      subsection: json['subsection'] as String,
      title: json['title'] as String,
      abstract: json['abstract'] as String,
      url: json['url'] as String,
    );
  }
}