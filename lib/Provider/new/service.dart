import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:newproject/Provider/new/model.dart';

class ApiServices {
  static const apiurl = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<ApiModel>> getPost() async {
    List<ApiModel> posts = [];
    try {
      Uri url = Uri.parse(apiurl);
      http.Response response = await http.get(url);

      if (response.statusCode == 200) {
        List<dynamic> postsdata = jsonDecode(response.body);

        for (var items in postsdata) {
          ApiModel postsList = ApiModel.fromMap(items);
          posts.add(postsList);
        }
        return posts;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
    return posts;
  }
}
