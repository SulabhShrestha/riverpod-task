import 'package:dio/dio.dart';
import 'package:riverpod_task/utils/urls_constant.dart';

class PhotoWebServices {
  final _dio = Dio();
  Future<dynamic> fetchPhotos() async {
    final response = await _dio.get(UrlsConstant().photosUrl);

    return response.data;
  }
}
