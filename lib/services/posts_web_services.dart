import 'package:dio/dio.dart';
import 'package:riverpod_task/utils/urls_constant.dart';

class PostWebServices {
  final _dio = Dio();
  Future<dynamic> fetchPosts() async {
    final response = await _dio.get(UrlsConstant().postsUrl);
    return response.data;
  }
}
