import 'package:flutter/material.dart';
import 'package:leadit_task_app/post_detail.dart';
import 'package:leadit_task_app/posts_model.dart';

import 'http_request.dart';


class PostsList extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("NYT Top Stories"),
      ),
      body: FutureBuilder(
        future: httpService.getPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            List<Post> posts = snapshot.data;
            return ListView(
              children: posts
                  .map(
                    (Post post) => ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                        leading: Container(
                          padding: EdgeInsets.only(right: 5.0),
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(width: 1.0, color: Colors.blueGrey))),
                          child: Icon(Icons.stop, color: Colors.blueGrey),
                        ),
                        title: Text(post.title),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.blueGrey),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PostDetail(post: post,
                      ),
                    ),
                  ),
                ),
              )
                  .toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}