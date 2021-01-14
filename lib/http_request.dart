import 'dart:convert';
import 'package:leadit_task_app/posts_model.dart';
import 'package:http/http.dart';


class HttpService {
  final apiKey = 'DnWsT7z60RIftsfPZJTaOfzEqCOg3KGe';

  Future<List<Post>> getPosts() async {
    final String postsURL = "https://api.nytimes.com/svc/topstories/v2/home.json?api-key=$apiKey";
    try {
      Response res = await get(postsURL);
      final extractedData = json.decode(utf8.decode(res.bodyBytes));
      List<Post> posts = List.from(extractedData['results'])
          .map((post) => Post.fromJson(post))
          .toList();
      return posts;
    } catch (error) {
      throw Exception("Произошла ошибка сети.");
    }
  }
}
