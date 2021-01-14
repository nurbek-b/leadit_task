import 'package:flutter/material.dart';
import 'package:leadit_task_app/posts_model.dart';

class PostDetail extends StatelessWidget {
  final Post post;

  PostDetail({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
          title: Text("NYT Top Story Detail"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: Text("Title"),
                        subtitle: Text(post.title),
                      ),
                      ListTile(
                        title: Text("Abstraction"),
                        subtitle: Text("${post.abstract}"),
                      ),
                      ListTile(
                        title: Text('For more details: '),
                        subtitle: Text(post.url, style: TextStyle(color: Colors.blueGrey),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}