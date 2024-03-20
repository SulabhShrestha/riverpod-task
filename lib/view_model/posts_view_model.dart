import 'package:flutter/material.dart';

import 'package:riverpod_task/models/post_model/post_model.dart';

import 'package:riverpod_task/services/posts_web_services.dart';

class PostsViewModel {
  final _services = PostWebServices();

  Future<List<PostModel>> fetchPosts() async {
    try {
      final response = await _services.fetchPosts();

      List<PostModel> postsModel = [];
      for (var data in response) {
        postsModel.add(PostModel.fromJson(data));
      }
      return postsModel;
    } catch (e) {
      rethrow;
    }
  }
}
