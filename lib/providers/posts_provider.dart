import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_task/models/post_model/post_model.dart';
import 'package:riverpod_task/view_model/posts_view_model.dart';

final postsProvider = FutureProvider<List<PostModel>>((ref) async {
  try {
    final response = await PostsViewModel().fetchPosts();
    return response;
  } catch (e) {
    return Future.error(e);
  }
});
