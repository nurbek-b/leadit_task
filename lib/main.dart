import 'package:flutter/material.dart';
import 'package:leadit_task_app/posts_list.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PostsList(),
    );
  }
}
